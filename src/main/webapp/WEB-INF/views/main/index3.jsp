<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            margin: 0;
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
            width: 120px;
            height: 160px;
            box-shadow: 0px 0px 12px rgba(0,255,255,0.5);
            border: 1px solid rgba(127,255,255,0.25);
            text-align: center;
            cursor: default;
        }
        .element:hover {
            box-shadow: 0px 0px 12px rgba(0,255,255,0.75);
            border: 1px solid rgba(127,255,255,0.75);
        }
        .element .number {
            position: absolute;
            top: 20px;
            right: 20px;
            font-size: 12px;
            color: rgba(127,255,255,0.75);
        }
        .element .symbol {
            position: absolute;
            top: 40px;
            left: 0px;
            right: 0px;
            font-size: 60px;
            font-weight: bold;
            color: rgba(255,255,255,0.75);
            text-shadow: 0 0 10px rgba(0,255,255,0.95);
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
            color: rgba(127,255,255,0.75);
            background: transparent;
            outline: 1px solid rgba(127,255,255,0.75);
            border: 0px;
            padding: 5px 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: rgba(0,255,255,0.5);
        }
        button:active {
            color: #000000;
            background-color: rgba(0,255,255,0.75);
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
                   <img class="img-responsive" src="/resources/HTML/img/1920x1080/01.jpg" alt="Slider Image">
                  		<div id="container">
                   		</div>
                   		
                   		<div id="menu">
						    <button id="table">전체 보기</button>
						    <button id="sphere">10대 남자</button>
						    <button id="helix">10대 여자</button>
						    <button id="grid">네이버</button>
						</div>
               </div>
           </div>
       </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->

        <div class="bg-color-sky-light"></div>
        
        <!--========== END PAGE LAYOUT ==========-->
	
<script>
    var table = [
        "1", "Hydrogen", "1.00794", 1, 1,
        "2", "Helium", "4.002602", 18, 1,
        "3", "Lithium", "6.941", 1, 2,
        "4", "Beryllium", "9.012182", 2, 2,
        "5", "Boron", "10.811", 13, 2,
        "6", "Carbon", "12.0107", 14, 2,
        "7", "Nitrogen", "14.0067", 15, 2,
        "8", "Oxygen", "15.9994", 16, 2,
        "9", "Fluorine", "18.9984032", 17, 2,
        "10", "Neon", "20.1797", 18, 2,
        "11", "Sodium", "22.98976...", 1, 3,
        "12", "Magnesium", "24.305", 2, 3,
        "13", "Aluminium", "26.9815386", 13, 3,
        "14", "Silicon", "28.0855", 14, 3,
        "15", "Phosphorus", "30.973762", 15, 3,
        "16", "Sulfur", "32.065", 16, 3,
        "17", "Chlorine", "35.453", 17, 3,
        "18", "Argon", "39.948", 18, 3,
        "19", "Potassium", "39.948", 1, 4,
        "20", "Calcium", "40.078", 2, 4,
        "21", "Scandium", "44.955912", 3, 4,
        "22", "Titanium", "47.867", 4, 4,
        "23", "Vanadium", "50.9415", 5, 4,
        "24", "Chromium", "51.9961", 6, 4,
        "25", "Manganese", "54.938045", 7, 4,
        "26", "Iron", "55.845", 8, 4,
        "27", "Cobalt", "58.933195", 9, 4,
        "28", "Nickel", "58.6934", 10, 4,
        "29", "Copper", "63.546", 11, 4,
        "30", "Zinc", "65.38", 12, 4,
        "Ga", "Gallium", "69.723", 13, 4,
        "Ge", "Germanium", "72.63", 14, 4,
        "As", "Arsenic", "74.9216", 15, 4,
        "Se", "Selenium", "78.96", 16, 4,
        "Br", "Bromine", "79.904", 17, 4,
        "Kr", "Krypton", "83.798", 18, 4,
        "Rb", "Rubidium", "85.4678", 1, 5,
        "Sr", "Strontium", "87.62", 2, 5,
        "Y", "Yttrium", "88.90585", 3, 5,
        "Zr", "Zirconium", "91.224", 4, 5,
        "Nb", "Niobium", "92.90628", 5, 5,
        "Mo", "Molybdenum", "95.96", 6, 5,
        "Tc", "Technetium", "(98)", 7, 5,
        "Ru", "Ruthenium", "101.07", 8, 5,
        "Rh", "Rhodium", "102.9055", 9, 5,
        "Pd", "Palladium", "106.42", 10, 5,
        "Ag", "Silver", "107.8682", 11, 5,
        "Cd", "Cadmium", "112.411", 12, 5,
        "In", "Indium", "114.818", 13, 5,
        "Sn", "Tin", "118.71", 14, 5,
        "Sb", "Antimony", "121.76", 15, 5,
        "Te", "Tellurium", "127.6", 16, 5,
        "I", "Iodine", "126.90447", 17, 5,
        "Xe", "Xenon", "131.293", 18, 5,
        "Cs", "Caesium", "132.9054", 1, 6,
        "Ba", "Barium", "132.9054", 2, 6,
        "La", "Lanthanum", "138.90547", 4, 9,
        "Ce", "Cerium", "140.116", 5, 9,
        "Pr", "Praseodymium", "140.90765", 6, 9,
        "Nd", "Neodymium", "144.242", 7, 9,
        "Pm", "Promethium", "(145)", 8, 9,
        "Sm", "Samarium", "150.36", 9, 9,
        "Eu", "Europium", "151.964", 10, 9,
        "Gd", "Gadolinium", "157.25", 11, 9,
        "Tb", "Terbium", "158.92535", 12, 9,
        "Dy", "Dysprosium", "162.5", 13, 9,
        "Ho", "Holmium", "164.93032", 14, 9,
        "Er", "Erbium", "167.259", 15, 9,
        "Tm", "Thulium", "168.93421", 16, 9,
        "Yb", "Ytterbium", "173.054", 17, 9,
        "Lu", "Lutetium", "174.9668", 18, 9,
        "Hf", "Hafnium", "178.49", 4, 6,
        "Ta", "Tantalum", "180.94788", 5, 6,
        "W", "Tungsten", "183.84", 6, 6,
        "Re", "Rhenium", "186.207", 7, 6,
        "Os", "Osmium", "190.23", 8, 6,
        "Ir", "Iridium", "192.217", 9, 6,
        "Pt", "Platinum", "195.084", 10, 6,
        "Au", "Gold", "196.966569", 11, 6,
        "Hg", "Mercury", "200.59", 12, 6,
        "Tl", "Thallium", "204.3833", 13, 6,
        "Pb", "Lead", "207.2", 14, 6,
        "Bi", "Bismuth", "208.9804", 15, 6,
        "Po", "Polonium", "(209)", 16, 6,
        "At", "Astatine", "(210)", 17, 6,
        "Rn", "Radon", "(222)", 18, 6,
        "Fr", "Francium", "(223)", 1, 7,
        "Ra", "Radium", "(226)", 2, 7,
        "Ac", "Actinium", "(227)", 4, 10,
        "Th", "Thorium", "232.03806", 5, 10,
        "Pa", "Protactinium", "231.0588", 6, 10,
        "U", "Uranium", "238.02891", 7, 10,
        "Np", "Neptunium", "(237)", 8, 10,
        "Pu", "Plutonium", "(244)", 9, 10,
        "Am", "Americium", "(243)", 10, 10,
        "Cm", "Curium", "(247)", 11, 10,
        "Bk", "Berkelium", "(247)", 12, 10,
        "Cf", "Californium", "(251)", 13, 10,
        "Es", "Einstenium", "(252)", 14, 10,
        "Fm", "Fermium", "(257)", 15, 10,
        "Md", "Mendelevium", "(258)", 16, 10,
        "No", "Nobelium", "(259)", 17, 10,
        "Lr", "Lawrencium", "(262)", 18, 10,
        "Rf", "Rutherfordium", "(267)", 4, 7,
        "Db", "Dubnium", "(268)", 5, 7,
        "Sg", "Seaborgium", "(271)", 6, 7,
        "Bh", "Bohrium", "(272)", 7, 7,
        "Hs", "Hassium", "(270)", 8, 7,
        "Mt", "Meitnerium", "(276)", 9, 7,
        "Ds", "Darmstadium", "(281)", 10, 7,
        "Rg", "Roentgenium", "(280)", 11, 7,
        "Cn", "Copernicium", "(285)", 12, 7,
        "Nh", "Nihonium", "(286)", 13, 7,
        "Fl", "Flerovium", "(289)", 14, 7,
        "Mc", "Moscovium", "(290)", 15, 7,
        "Lv", "Livermorium", "(293)", 16, 7,
        "Ts", "Tennessine", "(294)", 17, 7,
        "Og", "Oganesson", "(294)", 18, 7
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
            var number = document.createElement( 'div' );
            number.className = 'number';
            number.textContent = (i/5) + 1;
            element.appendChild( number );
            var symbol = document.createElement( 'div' );
            symbol.className = 'symbol';
            symbol.textContent = table[ i ];
            element.appendChild( symbol );
            var details = document.createElement( 'div' );
            details.className = 'details';
            details.innerHTML = table[ i + 1 ] + '<br>' + table[ i + 2 ];
            element.appendChild( details );
            var object = new THREE.CSS3DObject( element );
            object.position.x = Math.random() * 4000 - 2000;
            object.position.y = Math.random() * 4000 - 2000;
            object.position.z = Math.random() * 4000 - 2000;
            scene.add( object );
            objects.push( object );
            //
            var object = new THREE.Object3D();
            object.position.x = ( table[ i + 3 ] * 140 ) - 1330;
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
        
        var button = document.getElementById( 'table' );
        button.addEventListener( 'click', function ( event ) {
        	var $container = $("#container");
            index = 0;
        	<c:forEach items="${aList}" var="keyword">
        		table[index] = "${keyword.keyword}";
        		index += 5;
        	</c:forEach> 
        	$container.empty();
        	init();
            transform( targets.table, 2000 );
        }, false );
        
        var button = document.getElementById( 'sphere' );
        button.addEventListener( 'click', function ( event ) {
        	var $container = $("#container");
            index = 0;
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
        	<c:forEach items="${nList}" var="keyword">
        		table[index] = "${keyword.keyword}";
        		index += 5;
        		console.log("${keyword.keyword}");
        	</c:forEach>
        	$container.empty();
        	init();
            transform( targets.grid, 2000 );
        }, false );
        transform( targets.table, 2000 );
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
</script>

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="/resources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
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