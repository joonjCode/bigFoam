<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BigBit</title>

<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/80729/helpers.css'>
<link rel='stylesheet' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/80729/atc-fonts.css'>
<link rel="stylesheet" href="../../resources/css/bigbit_css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="../../resources/css/bigbit_css/login.css">
<link rel="stylesheet" href="../../resources/css/bigbit_css/popup.css">
<head>
<meta name="viewport" content="width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="description" content="">
<link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
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
				<span class="logo">BigBit</span> <span class="motto">We
					predict Bitcoin for you.</span>
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
	<span class="desktop"> <header>
			<span id="logo">BigBit</span>
			<nav>
				<a href="main.jsp" style="float:left;">Home</a> 
				<a href="#" style="float:left;">Prediction</a> 
				<a href="premium.jsp" style="float:left;">Premium</a> 
				<a href="policy.jsp" style="float:left;">Policy</a> 
				<a class="loginButton" style="float:right;">Login</a>
				<div class="popUpForm">
					<div class="closeButton">
						<i class="fa fa-times" aria-hidden="true"></i>
					</div>
					<div class="clear"></div>
					<div class="cotn_principal">
						<div class="cont_centrar">

							<div class="cont_login">
								<div class="cont_info_log_sign_up">
									<div class="col_md_login">
										<div class="cont_ba_opcitiy">

											<h2>LOGIN</h2>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit.</p>
											<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
										</div>
									</div>
									<div class="col_md_sign_up">
										<div class="cont_ba_opcitiy">
											<h2>SIGN UP</h2>


											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit.</p>

											<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
												UP</button>
										</div>
									</div>
								</div>


								<div class="cont_back_info">
									<div class="cont_img_back_grey">
										<img
											src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
											alt="" />
									</div>

								</div>
								<div class="cont_forms">
									<div class="cont_img_back_">
										<img
											src="https://images.unsplash.com/42/U7Fc1sy5SCUDIu4tlJY3_NY_by_PhilippHenzler_philmotion.de.jpg?ixlib=rb-0.3.5&q=50&fm=jpg&crop=entropy&s=7686972873678f32efaf2cd79671673d"
											alt="" />
									</div>
									<div class="cont_form_login">
										<a href="#" onclick="ocultar_login_sign_up()"><i
											class="material-icons" style="margin-left: -19px;">&#xE5C4;</i></a>
										<h2>LOGIN</h2>
										<input type="text" placeholder="Email" /> <input
											type="password" placeholder="Password" />
										<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
									</div>

									<div class="cont_form_sign_up">
										<a href="#" onclick="ocultar_login_sign_up()"><i
											class="material-icons" style="margin-left: -19px;">&#xE5C4;</i></a>
										<h2>SIGN UP</h2>
										<input type="text" placeholder="Email" /> <input type="text"
											placeholder="User" /> <input type="password"
											placeholder="Password" /> <input type="password"
											placeholder="Confirm Password" />
										<button class="btn_sign_up" onclick="cambiar_sign_up()">SIGN
											UP</button>

									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</nav>
		</header>
	</span>

	<!--Mobile Navigation-->
	<span class="mobile"> <header>
			<span id="logo">BigBit</span>
			<div class="button_container">
				<span class="top"></span> <span class="middle"></span> <span
					class="bottom"></span>
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
		<span class="one">We predict Bitcoin for you.</span> <span class="two">Last
			Project.</span> <span class="three">We are BigBit.</span>
	</div>

	<!--Mouse scroller-->
	<span class="mouseScroll"></span>

	<!--About section-->
	<div class="about">

		<div class="hideme">
			<h1><br /><br />Bedford Junior Investors</h1>
		</div>

		<div class="hideme">
			<div id="mission">
				<p>Stock Market Club is an orginization at Bedford High School
					committed to educating students on the basics of navigating the
					stock market. At Stock Market Club we give students the experience
					and tools necessary for being responsible and successful with their
					investments. We believe that by exposing students to stock trading,
					we open a crucial assest to managing their adult finances.</p>
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
		<span class="hideme"> <a href="#" class="icoTwitter"
			title="Twitter"> <i class="fa fa-twitter"></i>
		</a>
		</span>
	</div>
	<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
	<script src="../../resources/js/bigbit_js/popup.js"></script>
	<script src="../../resources/js/bigbit_js/login.js"></script>
	<script src="../../resources/js/bigbit_js/main.js"></script>
</body>
</html>