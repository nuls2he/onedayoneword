<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>one day one word</title>
		
	<!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="/resources/HTML/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
        <link href="/resources/HTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="/resources/HTML/css/animate.css" rel="stylesheet">
        <link href="/resources/HTML/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

        <!-- THEME STYLES -->
        <link href="/resources/HTML/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
        
        <style>
        html, body {
            height: 100%;
        }
        body {
            background-color: #000000;
/*             margin: 0; */
            font-family: Helvetica, sans-serif;;
            overflow: hidden;
        }
        a {
            color: #ffffff;
        }
        #info {
            position: absolute;
            width: 100%;
            color: #ffffff;
            padding: 5px;
            font-family: Monospace;
            font-size: 13px;
            font-weight: bold;
            text-align: center;
            z-index: 1;
        }
        #menu {
            position: absolute;
            bottom: 20px;
            width: 100%;
            text-align: center;
        }
        .element {
            width: 290px; /*120*/
            height: 0px; /*160*/
            box-shadow: 0px 0px 12px rgba(0,255,255,0.5);
/*             border: 1px solid rgba(127,255,255,0.25); */
            text-align: center;
            cursor: default;
        }
        .element:hover {
/*             box-shadow: 0px 0px 12px rgba(0,255,255,0.75); */
/*             border: 1px solid rgba(127,255,255,0.75); */
        }
        .element .number {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 0px; /*12*/
            color: rgba(127,255,255,0.75);
        }
        .element .symbol {
            position: absolute;
            top: 40px;
            left: 0px;
            right: 0px;
            font-size: 50px;
            font-weight: bold;
            color: rgba(255, 255, 255, 0.75); /*255,255,255,0.75*/
            text-shadow: 0 0 25px rgba(255, 255, 255, 1);
        }
        .element .symbol:hover{
        	color: rgba(237,255,0,0.5);
        }
        .element .details {
            position: absolute;
            bottom: 15px;
            left: 0px;
            right: 0px;
            font-size: 12px;
            color: rgba(127,255,255,0.75);
        }
        button {
            color: rgb(237, 255, 0);
            background: transparent;
            outline: 1px solid rgb(237, 255, 0);
            border: 0px;
            padding: 5px 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: rgba(237,255,0,0.5);
        }
        button:active {
            color: #ffffff;
            background-color: rgba(237,255,0,0.75);
        }
    </style>

</head>

<body class="index-page page-on-scroll">

<script src="/resources/HTML/js/three.js"></script>
<script src="/resources/HTML/js/tween.min.js"></script>
<script src="/resources/HTML/js/TrackballControls.js"></script>
<script src="/resources/HTML/js/CSS3DRenderer.js"></script>
		
	<c:import url="../includes/header.jsp"></c:import>
		
       <!--========== SLIDER ==========-->
       <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
           <div class="container"></div>

           <!-- Wrapper for slides -->
           <div class="carousel-inner" role="listbox">
               <div class="item active">
                   <img class="img-responsive" src="/resources/HTML/img/gogogogo.gif" alt="Slider Image">
                  		<div id="container">
                   		</div>
                   		
                   		<div id="menu">
						    <button id="table">네이버</button>
						    <button id="sphere">10대 남자</button>
						    <button id="helix">10대 여자</button>
						    <button id="grid">전체 보기</button>
						</div>
               </div>
           </div>
       </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->

        <div class="bg-color-sky-light"></div>
        
        <!--========== END PAGE LAYOUT ==========-->

<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>

<script>
    var table = [
        "1", "", "", 1, 1,
        "2", "", "", 2, 2,
        "3", "", "", 3, 3,
        "4", "", "", 4, 4,
        "5", "", "", 5, 5,
        "6", "", "", 6, 6,
        "7", "", "", 7, 7,
        "8", "", "", 8, 8,
        "9", "", "", 9, 9,
        "10", "", "", 10, 10,
    ];
    
    var index = 0;
	<c:forEach items="${aList}" var="keyword">
		table[index] = "${keyword.keyword}";
		index += 5;
	</c:forEach> 

    var camera, scene, renderer;
    var controls;
    var objects = [];
    var targets = { table: [], sphere: [], helix: [], grid: [] };
    
    init();
    animate();
    
    function init() {
        camera = new THREE.PerspectiveCamera( 40, window.innerWidth / window.innerHeight, 1, 10000 );
        camera.position.z = 3000;
        scene = new THREE.Scene();
        // table
        for ( var i = 0; i < table.length; i += 5 ) {
            var element = document.createElement( 'div' );
            element.className = 'element';
            element.style.backgroundColor = 'rgba(0,127,127,' + ( Math.random() * 0.5 + 0.25 ) + ')';
//             var number = document.createElement( 'div' );
//             number.className = 'number';
//             number.textContent = (i/5) + 1;
//             element.appendChild( number );
            var symbol = document.createElement( 'div' );
            symbol.className = 'symbol';
            symbol.textContent = table[ i ];
            element.appendChild( symbol );
//             var details = document.createElement( 'div' );
//             details.className = 'details';
//             details.innerHTML = table[ i + 1 ] + '<br>' + table[ i + 2 ];
//             element.appendChild( details );
            
            var object = new THREE.CSS3DObject( element );
            object.position.x = Math.random() * 4000 - 2000;
            object.position.y = Math.random() * 4000 - 2000;
            object.position.z = Math.random() * 4000 - 2000;
            scene.add( object );
            objects.push( object );
            //
            var object = new THREE.Object3D();
            object.position.x = ( table[ i + 3 ] * 290 ) - 1330;  /* 140 */
            object.position.y = - ( table[ i + 4 ] * 180 ) + 990;
            targets.table.push( object );
        }
        // sphere
        var vector = new THREE.Vector3();
        var spherical = new THREE.Spherical();
        for ( var i = 0, l = objects.length; i < l; i ++ ) {
            var phi = Math.acos( -1 + ( 2 * i ) / l );
            var theta = Math.sqrt( l * Math.PI ) * phi;
            var object = new THREE.Object3D();
            spherical.set( 800, phi, theta );
            object.position.setFromSpherical( spherical );
            vector.copy( object.position ).multiplyScalar( 2 );
            object.lookAt( vector );
            targets.sphere.push( object );
        }
        // helix
        var vector = new THREE.Vector3();
        var cylindrical = new THREE.Cylindrical();
        for ( var i = 0, l = objects.length; i < l; i ++ ) {
            var theta = i * 0.175 + Math.PI;
            var y = - ( i * 8 ) + 450;
            var object = new THREE.Object3D();
            cylindrical.set( 900, theta, y );
            object.position.setFromCylindrical( cylindrical );
            vector.x = object.position.x * 2;
            vector.y = object.position.y;
            vector.z = object.position.z * 2;
            object.lookAt( vector );
            targets.helix.push( object );
        }
        // grid
        for ( var i = 0; i < objects.length; i ++ ) {
            var object = new THREE.Object3D();
            object.position.x = ( ( i % 5 ) * 400 ) - 800;
            object.position.y = ( - ( Math.floor( i / 5 ) % 5 ) * 400 ) + 800;
            object.position.z = ( Math.floor( i / 25 ) ) * 1000 - 2000;
            targets.grid.push( object );
        }
        //
        renderer = new THREE.CSS3DRenderer();
        renderer.setSize( window.innerWidth, window.innerHeight );
        renderer.domElement.style.position = 'absolute';
        document.getElementById( 'container' ).appendChild( renderer.domElement );
        //
        controls = new THREE.TrackballControls( camera, renderer.domElement );
        controls.rotateSpeed = 0.5;
        controls.minDistance = 500;
        controls.maxDistance = 6000;
        controls.addEventListener( 'change', render );
        
        //
        window.addEventListener( 'resize', onWindowResize, false );
    }
    
    function transform( targets, duration ) {
        TWEEN.removeAll();
        for ( var i = 0; i < objects.length; i ++ ) {
            var object = objects[ i ];
            var target = targets[ i ];
            new TWEEN.Tween( object.position )
                .to( { x: target.position.x, y: target.position.y, z: target.position.z }, Math.random() * duration + duration )
                .easing( TWEEN.Easing.Exponential.InOut )
                .start();
            new TWEEN.Tween( object.rotation )
                .to( { x: target.rotation.x, y: target.rotation.y, z: target.rotation.z }, Math.random() * duration + duration )
                .easing( TWEEN.Easing.Exponential.InOut )
                .start();
        }
        new TWEEN.Tween( this )
            .to( {}, duration * 2 )
            .onUpdate( render )
            .start();
    }
    function onWindowResize() {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize( window.innerWidth, window.innerHeight );
        render();
    }
    function animate() {
        requestAnimationFrame( animate );
        TWEEN.update();
        controls.update();
    }
    function render() {
        renderer.render( scene, camera );
    }
    
    var button = document.getElementById( 'table' );
    button.addEventListener( 'click', function ( event ) {
    	var $container = $("#container");
        index = 0;
        objects = [];
        targets = { table: [], sphere: [], helix: [], grid: [] };
    	<c:forEach items="${nList}" var="keyword">
    		table[index] = "${keyword.keyword}";
    		index += 5;
    	</c:forEach>
    	for(var i = 50; i <= table.length; i+=5){
    		table[i] = "";
    	}
    	$container.empty();
    	init();
        transform( targets.table, 2000 );
    }, false );
    
    var button = document.getElementById( 'sphere' );
    button.addEventListener( 'click', function ( event ) {
    	var $container = $("#container");
        index = 0;
        objects = [];
        targets = { table: [], sphere: [], helix: [], grid: [] };
    	<c:forEach items="${bList}" var="keyword">
    		table[index] = "${keyword.keyword}";
    		index += 5;
    	</c:forEach>
    	$container.empty();
    	init();
        transform( targets.sphere, 2000 );
    }, false );
    
    var button = document.getElementById( 'helix' );
    button.addEventListener( 'click', function ( event ) {
    	var $container = $("#container");
        index = 0;
        objects = [];
        targets = { table: [], sphere: [], helix: [], grid: [] };
    	<c:forEach items="${gList}" var="keyword">
    		table[index] = "${keyword.keyword}";
    		index += 5;
    	</c:forEach>
    	$container.empty();
    	init();
        transform( targets.helix, 2000 );
    }, false );
    
    var button = document.getElementById( 'grid' );
    button.addEventListener( 'click', function ( event ) {
    	var $container = $("#container");
        index = 0;
        objects = [];
        targets = { table: [], sphere: [], helix: [], grid: [] };
    	<c:forEach items="${aList}" var="keyword">
    		table[index] = "${keyword.keyword}";
    		index += 5;
    	</c:forEach>
    	$container.empty();
    	init();
        transform( targets.grid, 2000 );
    }, false );
    
    transform( targets.grid, 2000);
    
    $("#container").on("click", "div[class=symbol]",function () {
    	var keyword = $(this).text();
    	window.open("popup?keyword=" + keyword,"popup","width=1100, height=500");
    });
    
</script>

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->

<script src="/resources/HTML/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="/resources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/jquery.parallax.min.js" type="text/javascript"></script>
<script src="/resources/HTML/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL SCRIPTS -->
<script src="/resources/HTML/js/layout.min.js" type="text/javascript"></script>
<script src="/resources/HTML/js/components/swiper.min.js" type="text/javascript"></script>
<script src="/resources/HTML/js/components/wow.min.js" type="text/javascript"></script>

<c:import url="../includes/footer.jsp"></c:import>
</body>
	
</html>