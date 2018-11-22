<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BigBit</title>

<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/80729/helpers.css'>
<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/80729/atc-fonts.css'>
<link rel="stylesheet" href="../../resources/css/bigbit_css/main.css">

<head>
	<meta name="viewport" content="width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/home.css" />
	<link href='https://fonts.googleapis.com/css?family=Cinzel' rel='stylesheet' type='text/css'>
	<link href="https://allfont.net/allfont.css?fonts=montserrat-light" rel="stylesheet" type="text/css" />
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800|Lato:400,100,300,700,900|Raleway:400,100,200,300,500,700,800' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="js/jquery-2.2.3.min.js"></script>
</head>

<body>
	<!--Preloader-->
	<div class="loading">
		<div class="svg-wrapper">
			<svg height="150" width="150" xmlns="http://www.w3.org/2000/svg">
      			<rect class="animate" height="150" width="150" />
    		</svg>
			<div class="text">
				<span class="logo">BigBit</span>
				<span class="motto">We predict Bitcoin for you.</span>
			</div>
		</div>
	</div>

	<!--SVG animation-->
	<script>
		var p = document.querySelector('.animate'), offset = 600;
		var offsetMe = function() {
			if (offset < 0) {
				offset = 600;
			}
			p.style.strokeDashoffset = offset;
			offset = offset - 5;
			requestAnimationFrame(offsetMe);
		}
		offsetMe();
	</script>

	<!--Desktop Navigation-->
	<span class="desktop"> 
		<header>
			<span id="logo">BigBit</span>
			<nav>
				<a href="main.jsp">Home</a> 
				<a href="#">Prediction</a>
				<a href="premium.jsp">Premium</a>
				<a href="policy.jsp">Policy</a>
				<a href="#" style="float:right;">Login</a>
			</nav>
		</header>
	</span>

	<!--Mobile Navigation-->
	<span class="mobile"> 
		<header>
			<span id="logo">BigBit</span>
			<div class="button_container">
				<span class="top"></span>
				<span class="middle"></span> 
				<span class="bottom"></span>
			</div>
		</header>

		<div class="overlay">
			<nav>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Prediction</a></li>
					<li><a href="#">Premium</a></li>
					<li><a href="#">Policy</a></li>
					<li><a href="#">Login</a></li>
				</ul>
			</nav>
		</div>
	</span>

	<!--Homepage-->
	<div class="wrapper">
		<div class="landing"></div>
	</div>

	<!--Intro text scroll-->
	<div class="content-1">
		<span class="one">We predict Bitcoin for you.</span> 
		<span class="two">Last Project.</span> 
		<span class="three">We are BigBit.</span>
	</div>

	<!--Mouse scroller-->
	<span class="mouseScroll"></span>

	<!--About section-->
	<div class="about">

		<div class="hideme">
			<h1>Bedford Junior Investors</h1>
		</div>

		<div class="hideme">
			<div id="mission">
				<p>
					Stock Market Club is an orginization at Bedford High School
					committed to educating students on the basics of navigating the
					stock market. At Stock Market Club we give students the experience
					and tools necessary for being responsible and successful with their
					investments. We believe that by exposing students to stock trading,
					we open a crucial assest to managing their adult finances.
				</p>
			</div>
		</div>

		<!--Contact box-->
		<div class="hideme">
			<div class="container"></div>
			<div class="cube">
				<div class="default-state">
					<span>Contact Us</span>
				</div>
				<div class="active-state">
					<span>BigBit@BigBit.com</span>
				</div>
			</div>
		</div>
	</div>

	<!--Sponsors section-->
	<div class="sponsors">
		<div class="hideme">
			<h2>We do our best to predict.</h2>
		</div>
	</div>

	<!--Social section-->
	<div class="social">
		<span class="hideme"> 
		<a href="#" class="icoTwitter" title="Twitter">
			<i class="fa fa-twitter"></i>
		</a>
		</span>
	</div>

<script src="../../resources/js/bigbit_js/main.js"></script>
</body>
</html>