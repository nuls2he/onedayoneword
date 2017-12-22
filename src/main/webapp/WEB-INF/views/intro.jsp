<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>

<style>
canvas{
  position:absolute;
left:0;
top:0;
}

body {
  overflow: hidden;
  background: #EDEDED;
  margin: 0;
  padding: 0;
  font-family: arial;
}
p{margin:15px 0px;}
#interface{
width:250px;
position:absolute;
border:0px solid black;
padding:40px; 
box-sizing: border-box;
color:#222;
  height:100%;
  overflow-y:scroll;
    background-color: rgba(255, 255, 255, 0.8);
      box-shadow: 1px 0px 10px #999;

}


input[type="range"] {

	width:100%;

}

input[type=range] {
    -webkit-appearance: none;
    background-color: silver;
    height:10px;

}

input[type="range"]::-webkit-slider-thumb {
     -webkit-appearance: none;
    background-color: #666;
    width: 10px;
    height: 26px;
}

input[type="button"] {
padding:5px;
  margin-bottom:5px;
  margin-top:5px;
      background-color:#FF2948;
border:0px;
  width:100%;
  color:white;
  font-weight:bold;
  font-size:14px;
}

input{
border:0px;
 background-color:transparent;
  margin-top:20px;
  margin-bottom:20px;
  
}
h1{padding:0px;

margin-top:0px;
}

select {
padding:5px;
  margin-bottom:5px;
  margin-top:5px;
    
  width:100%;
  
}a{
  color:#FF2948;
  font-weight:700;
  
}
 
input[type="text"] {

  width: 100%;
  font-family: sans-serif;
  font-size: 30px;
  appearance: none;
  box-shadow: none;
  border-radius: none;
  border:0px;
  border-bottom:2px solid #FF2948;
  text-align:center;
}
::-webkit-scrollbar {
  width: 14px;
  height: 14px;
}

::-webkit-scrollbar-thumb {
  height: 6px;
  border: 4px solid rgba(0, 0, 0, 0);
  background-clip: padding-box;
  -webkit-border-radius: 7px;
  background-color: rgba(0, 0, 0, .5);
  -webkit-box-shadow: inset -1px -1px 0px rgba(0, 0, 0, 0.05), inset 1px 1px 0px rgba(0, 0, 0, 0.05);
}

::-webkit-scrollbar-button {
  width: 0;
  height: 0;
  display: none;
}

::-webkit-scrollbar-corner {
  background-color: transparent;
}
</style>
<body>

<script src="/resources/js/index.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
		
	</script>
 <canvas id="canvas"></canvas>

<div id="interface">


  <input id="message" type="text" value="codepen" onchange="change()"> Gravity:
  <input onchange="changeV()" type="range" id="2" value="0" max="1" min="-1" step="0.1"> Duration:
  <input onchange="changeV()" type="range" id="3" value=".4" max="0.99" min="0.1" step="0.01"> Speed:
  <input onchange="changeV()" type="range" id="5" value=".1" max="5" min="0" step="0.01"> Radius:
  <input onchange="changeV()" type="range" id="6" value="2" max="20" min="1.8" step="0.1"> Resolution:
  <input type="range" id="4" value="5" max="20" min="3" step="1" onchange="change()">

</div>

<script>
var utils = {
  norm: function(value, min, max) {
    return (value - min) / (max - min);
  },

  lerp: function(norm, min, max) {
    return (max - min) * norm + min;
  },

  map: function(value, sourceMin, sourceMax, destMin, destMax) {
    return utils.lerp(utils.norm(value, sourceMin, sourceMax), destMin, destMax);
  },

  clamp: function(value, min, max) {
    return Math.min(Math.max(value, Math.min(min, max)), Math.max(min, max));
  },

  distance: function(p0, p1) {
    var dx = p1.x - p0.x,
      dy = p1.y - p0.y;
    return Math.sqrt(dx * dx + dy * dy);
  },

  distanceXY: function(x0, y0, x1, y1) {
    var dx = x1 - x0,
      dy = y1 - y0;
    return Math.sqrt(dx * dx + dy * dy);
  },

  circleCollision: function(c0, c1) {
    return utils.distance(c0, c1) <= c0.radius + c1.radius;
  },

  circlePointCollision: function(x, y, circle) {
    return utils.distanceXY(x, y, circle.x, circle.y) < circle.radius;
  },

  pointInRect: function(x, y, rect) {
    return utils.inRange(x, rect.x, rect.x + rect.radius) &&
      utils.inRange(y, rect.y, rect.y + rect.radius);
  },

  inRange: function(value, min, max) {
    return value >= Math.min(min, max) && value <= Math.max(min, max);
  },

  rangeIntersect: function(min0, max0, min1, max1) {
    return Math.max(min0, max0) >= Math.min(min1, max1) &&
      Math.min(min0, max0) <= Math.max(min1, max1);
  },

  rectIntersect: function(r0, r1) {
    return utils.rangeIntersect(r0.x, r0.x + r0.width, r1.x, r1.x + r1.width) &&
      utils.rangeIntersect(r0.y, r0.y + r0.height, r1.y, r1.y + r1.height);
  },

  degreesToRads: function(degrees) {
    return degrees / 180 * Math.PI;
  },

  radsToDegrees: function(radians) {
    return radians * 180 / Math.PI;
  },

  randomRange: function(min, max) {
    return min + Math.random() * (max - min);
  },

  randomInt: function(min, max) {
    return min + Math.random() * (max - min + 1);
  },

  getmiddle: function(p0, p1) {
    var x = p0.x,
      x2 = p1.x;
    middlex = (x + x2) / 2;
    var y = p0.y,
      y2 = p1.y;
    middley = (y + y2) / 2;
    pos = [middlex, middley];

    return pos;
  },

  getAngle: function(p0, p1) {
    var deltaX = p1.x - p0.x;
    var deltaY = p1.y - p0.y;
    var rad = Math.atan2(deltaY, deltaX);
    return rad;
  },
  inpercentW: function(size) {
    return (size * W) / 100;
  },

  inpercentH: function(size) {
    return (size * H) / 100;
  },

}

// basic setup  :) 

canvas = document.getElementById("canvas");
var ctx = canvas.getContext('2d');
W = canvas.width = window.innerWidth;
H = canvas.height = window.innerHeight;

gridX = 5;
gridY = 5;

function shape(x, y, texte) {
  this.x = x;
  this.y = y;
  this.size = 120;

  this.text = texte;
  this.placement = [];
  this.vectors = [];

}

shape.prototype.getValue = function() {
  console.log("get black pixels position");

  // Draw the shape :^)

  ctx.textAlign = "center";
  ctx.font = "bold " + this.size + "px arial";
  ctx.fillText(this.text, this.x, this.y);


  var idata = ctx.getImageData(0, 0, W, H);

  var buffer32 = new Uint32Array(idata.data.buffer);

  for (var y = 0; y < H; y += gridY) {
    for (var x = 0; x < W; x += gridX) {

      if (buffer32[y * W + x]) {
        this.placement.push(new particle(x, y));
      }
    }
  }
  ctx.clearRect(0, 0, W, H);

}
colors = [
  '#f44336', '#e91e63', '#9c27b0', '#673ab7', '#3f51b5',
  '#2196f3', '#03a9f4', '#00bcd4', '#009688', '#4CAF50',
  '#8BC34A', '#CDDC39', '#FFEB3B', '#FFC107', '#FF9800',
  '#FF5722'
];

function particle(x, y, type) {
  this.radius = 1.1;
  this.futurRadius = utils.randomInt(radius, radius+3);
  
  
  this.rebond = utils.randomInt(1, 5);
  this.x = x;
  this.y = y;
  
  this.dying = false;
  
  this.base = [x, y]

  this.vx = 0;
  this.vy = 0;
  this.type = type;
  this.friction = .99;
  this.gravity = gravity;
  this.color = colors[Math.floor(Math.random() * colors.length)];

  this.getSpeed = function() {
    return Math.sqrt(this.vx * this.vx + this.vy * this.vy);
  };

  this.setSpeed = function(speed) {
    var heading = this.getHeading();
    this.vx = Math.cos(heading) * speed;
    this.vy = Math.sin(heading) * speed;
  };

  this.getHeading = function() {
    return Math.atan2(this.vy, this.vx);
  };

  this.setHeading = function(heading) {
    var speed = this.getSpeed();
    this.vx = Math.cos(heading) * speed;
    this.vy = Math.sin(heading) * speed;
  };

  this.angleTo = function(p2) {
    return Math.atan2(p2.y - this.y, p2.x - this.x);

  };

  this.update = function(heading) {
    this.x += this.vx;
    this.y += this.vy;
    this.vy += gravity;

    this.vx *= this.friction;
    this.vy *= this.friction;
    
    if(this.radius < this.futurRadius && this.dying === false){
      this.radius += duration;
    }else{
      this.dying = true;
    }
      
    if(this.dying === true){
      this.radius -= duration;

      
    }
 

    ctx.beginPath();

    ctx.fillStyle = this.color;

    ctx.arc(this.x, this.y, this.radius, Math.PI * 2, false);
    ctx.fill();
    ctx.closePath();

    if (this.y < 0 || this.radius < 1) {
      this.x = this.base[0];
      this.dying = false;
      this.y = this.base[1];
      this.radius = 1.1;
      this.setSpeed(speed);
  this.futurRadius = utils.randomInt(radius, radius+3);
      this.setHeading(utils.randomInt(utils.degreesToRads(0), utils.degreesToRads(360)));
    }

  };

  this.setSpeed(utils.randomInt(.1, .5));
  this.setHeading(utils.randomInt(utils.degreesToRads(0), utils.degreesToRads(360)));

}
element2 = document.getElementById("2");
element3 = document.getElementById("3");
element4 = document.getElementById("4");
element5 = document.getElementById("5");
element6 = document.getElementById("6");

fieldvalue = document.getElementById("message");
gravity = parseFloat(element2.value);
duration =  parseFloat(element3.value);
resolution = parseFloat(element4.value);
speed = parseFloat(element5.value);
radius = parseFloat(element5.value);

var message = new shape(W / 2, H / 2 + 50, fieldvalue.value);

message.getValue();

update();

function change() {
  ctx.clearRect(0, 0, W, H);

  gridX = parseFloat(element4.value);
  gridY = parseFloat(element4.value);
  message.placement = [];
  message.text = fieldvalue.value;
  message.getValue();
}


function changeV() {
    gravity = parseFloat(element2.value);
    duration =  parseFloat(element3.value);
    speed = parseFloat(element5.value);
    radius = parseFloat(element6.value);
}

var fps = 100;
function update() {
  setTimeout(function() {
    ctx.clearRect(0, 0, W, H);


    for (var i = 0; i < message.placement.length; i++) {
      message.placement[i].update();
    }

    requestAnimationFrame(update);
  }, 1000 / fps);
}
</script>


    <script>
	    $('#gologin').click(function() {
			location.href = '/member/loginhome';
			});
    
	    $('#gojoin').click(function() {
			location.href = '/member/login';
			});
    </script>
</body>
</html>