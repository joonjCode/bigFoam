<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Login Popup</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<link rel="stylesheet" href="../../resources/css/bigbit_css/login.css">
<link rel="stylesheet" href="../../resources/css/bigbit_css/popup.css">

</head>
<body>

	<!-- <section> -->
		<a class="loginButton">Login</a>
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
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
								</div>
							</div>
							<div class="col_md_sign_up">
								<div class="cont_ba_opcitiy">
									<h2>SIGN UP</h2>


									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

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
									class="material-icons">&#xE5C4;</i></a>
								<h2>LOGIN</h2>
								<input type="text" placeholder="Email" /> <input
									type="password" placeholder="Password" />
								<button class="btn_login" onclick="cambiar_login()">LOGIN</button>
							</div>

							<div class="cont_form_sign_up">
								<a href="#" onclick="ocultar_login_sign_up()"><i
									class="material-icons">&#xE5C4;</i></a>
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
	<!-- </section> -->

</body>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script src="../../resources/js/bigbit_js/popup.js"></script>
<script src="../../resources/js/bigbit_js/login.js"></script>



</body>

</html>
