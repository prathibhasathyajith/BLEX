<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>TRAIN SEAT BOOKING</title>

<!--favicon-->
<link rel="icon" href="images/mobitel.ico" type="image/x-icon" />
<!--favicon-->

<link href="css/train_seat_inner_page_css.css" rel="stylesheet"
	type="text/css" media="screen">

<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap -->

<!--main css-->
<link href="css/train_seat_css.css" rel="stylesheet" type="text/css"
	media="screen">
<!--main css-->

<!--media query css-->
<link href="css/mediaquery.css" rel="stylesheet" type="text/css"
	media="screen">
<!--media query css-->

<!--Date Picker-->
<link rel="stylesheet" type="text/css"
	href="css/datepicker/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/datepicker/bootstrap-datepicker3.standalone.min.css" />
<!--Date Picker end-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

<!--scroll bar style-->
<style>
::-webkit-scrollbar {
	width: 10px;
}

::-webkit-scrollbar-track {
	-webkit-box-shadow: inset 0 0 0px #29d54d;
	border-radius: 10px;
}

::-webkit-scrollbar-thumb {
	border-radius: 10px;
	background-color: #21618C;
	-webkit-box-shadow: inset 0 0 1px #29d54d;
}
</style>
<!--scroll bar style-->

<!--slider-->
<style>
.carousel .item {
	position: fixed;
	width: 100%;
	height: 100%;
}
</style>
<!--slider-->


</head>
<body class="inner_page_bg">



	<!--=============================================-->
	<!--===================header====================-->

	<div class="row margin_auto header_bar">
		<div class="container">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no_padding">

				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<a href="index.html"><img src="images/logo.png" alt=""
						class="img-responsive logo"></a>
				</div>

				<!-- 	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<p class="language_btn" style="margin-bottom: 0px;">
						<a href="profile.html"><b class="user"><img
								src="images/user_icon.png" alt="abmiddle" class="">
								Welcome, Kamal Perera</b></a>
					</p>
					<p class="language_btn" style="padding-top: 0px;">
						<a href=""><img src="images/eng.png" alt="abmiddle"></a> 
					<a
							href=""><img src="images/sinhala.png" alt="abmiddle"></a> <a
							href=""><img src="images/tamil.png" alt="abmiddle"></a>
					</p>
				</div> -->

			</div>
		</div>
	</div>

	<!--=============================================-->
	<!--===================header====================-->


	<!--=============================================-->
	<!--===================body====================-->

	<div class="row margin_auto">

		<!-- slider start-->
		<div id="mycarousel" class="carousel slide carousel-fade"
			data-ride="carousel">
			<!-- Indicators -->
			<!--<ol class="carousel-indicators">-->
			<!--<li data-target="#mycarousel" data-slide-to="0" class="active"></li>-->
			<!--<li data-target="#mycarousel" data-slide-to="1"></li>-->
			<!--<li data-target="#mycarousel" data-slide-to="2"></li>-->
			<!--<li data-target="#mycarousel" data-slide-to="3"></li>-->
			<!--</ol>-->

			<!-- Wrapper for slides -->
			<!-- 	<div class="carousel-inner" role="listbox">
				<div class="item">
					<img src="images/slider-01.jpg" data-color="lightblue"
						alt="First Image">
				</div>
				<div class="item">
					<img src="images/slider-02.jpg" data-color="firebrick"
						alt="Second Image">
				</div>
				<div class="item">
					<img src="images/slider-03.jpg" data-color="violet"
						alt="Third Image">
				</div>
				<
				<div class="item">
					<img src="images/slider-04.jpg" data-color="lightgreen"
						alt="Fourth Image">
				</div>
			</div> -->

			<!-- Controls -->
			<!--<a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">-->
			<!--<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>-->
			<!--<span class="sr-only">Previous</span>-->
			<!--</a>-->
			<!--<a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">-->
			<!--<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>-->
			<!--<span class="sr-only">Next</span>-->
			<!--</a>-->
		</div>
		<!-- slider end-->

	</div>

	<!--logo bar-->
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 logo_bar">
			&nbsp;
			<!--<a href="index.html"><img src="images/logo.png" alt="" class="img-responsive"></a>-->
		</div>
	</div>
	<!--logo bar-->

	<br>

	<!--check availability & sign up section-->

	<div class="container">

		<!--check availability section-->
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 check_div">

			<div
				class="col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10 col-sm-12 col-xs-12">

				<div class="black_box">
					<!-- black box start-->
					<h3 class="small_heading">CHECK AVAILABILITY TEST</h3>

					<form action="dashboard" method="post" onsubmit="return validate()">
						<input type="hidden" id="returnChecked" name="returnChecked">

						<!--=========================-->

						<!-- <div class="row margin_auto">
							<div class="form-group has-feedback">
								<div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect4" th:field="*{fromSt}">
										<option value="0">FROM</option>
										<option value="CF">Colombo Fort</option>
										<option value="MR">Maradana</option>
										
									</select>
								</div>
							</div>
						</div> -->
						<div class="row margin_auto">
							<div class="form-group">
								<div class="dropdown">
									<input type='text' placeholder="FROM *"
										class="menu_widget btn btn-secondary dropdown-toggle "
										style="width: 100%; text-align: left; border: 1px solid #b5b5b5; font-weight: 100;"
										id="fromSt" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false" required>
									<ul id="from_st_list" class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenuButton"
										style="max-height: 250px; overflow: auto; width: 100%;">
										<li id="CF1"><a class="dropdown-item" href="#">Colombo
												Fort</a></li>
										<li id="KD1"><a class="dropdown-item" href="#">Kandy</a></li>
									</ul>
									<!-- <div class="form-control dropdown-menu"
										aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Colombo Fort</a> <a
											class="dropdown-item" href="#">Kandy</a>

									</div> -->
								</div>
							</div>
						</div>
						<input type="hidden" id="fromStID" name="fromSt">
						<!--=========================-->

						<!-- <div class="row margin_auto">
							<div class="form-group has-feedback">
								<select class="form-control" id="exampleFormControlSelect5" th:field="*{toSt}">
									<option value="0">TO</option>
									<option value="KDT">Kandy</option>
									<option value="BD">Badulla</option>
									
								</select>
							</div>
						</div> -->
						<div class="row margin_auto">
							<div class="form-group">
								<div class="dropdown">
									<input type='text' placeholder="TO *"
										class="menu_widget btn btn-secondary dropdown-toggle "
										style="opacity: 4; width: 100%; text-align: left; border: 1px solid #b5b5b5; font-weight: 100;"
										id="toSt" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false" required disabled>
									<!--	<ul id="to_st_list" class="dropdown-menu" role="menu"
										aria-labelledby="dropdownMenuButton"
										style="max-height: 250px; overflow: auto; width: 100%;">
										 <li id="CF2"><a class="dropdown-item" href="#">Colombo Fort</a></li>
										<li id="KD2"><a class="dropdown-item" href="#">Kandy</a></li> 
									</ul>-->
									<!-- <div class="form-control dropdown-menu"
										aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Colombo Fort</a> <a
											class="dropdown-item" href="#">Kandy</a> <a
											class="dropdown-item" href="#">Japan</a>
									</div> -->
								</div>
							</div>
						</div>
						<input type="hidden" id="toStID" name="toSt">
						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control form-control_my date"
									id="datepicker1" placeholder="DATE *" name="depDate"
									data-date-format="dd-M-yyyy" required> <i
									class="glyphicon glyphicon-calendar form-control-feedback"></i>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">

							<div class="form-group has-feedback">
								<input type="number" class="form-control" id="usr"
									placeholder="NUMBER OF PASSENGER "> <i
									class="glyphicon glyphicon-user form-control-feedback"></i>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto"
							style="margin-top: 27px; margin-bottom: 27px;">
							<div class="form-group radio_button_div">

								<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 center-block">
									<input type="radio" id="a-option" name="selector"
										checked="checked" onclick="showhide_return(this.value);"
										value="N" required> <label class="radio-inline"
										for="a-option">ONE WAY</label>
									<div class="check"></div>
								</div>

								<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 center-block">
									<input type="radio" id="e-option" name="selector"
										onclick="showhide_return(this.value);" value="Y"> <label
										class="radio-inline" for="e-option">RETURN</label>
									<div class="check"></div>
								</div>

							</div>
						</div>

						<div class="clearfix"></div>

						<!--=========================-->

						<div class="row margin_auto" id="return_block"
							style="display: none;">
							<div class="form-group has-feedback">
								<input type="text" class="form-control form-control_my date"
									id="datepicker2" placeholder="RETURN DATE *"> <i
									class="glyphicon glyphicon-calendar form-control-feedback"></i>
							</div>
						</div>

						<!--=========================-->



						<div class="row margin_auto">
							<!--<p>-->
							<!--Lorem Ipsum is simply dummy text of the printing-->
							<!--and typesetting industry.-->
							<!--</p>-->

							<div
								class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block button_div1">
								<input type="submit" class="btn btn-default"
									style="width: 80%;" value="SEARCH">
							</div>

							<div
								class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block button_div2">
								<input type="reset" class="btn btn-default" style="width: 80%;"
									value="RESET" />
							</div>

						</div>

						<!--=========================-->
					</form>


					<br>

				</div>
				<!-- black box end-->

			</div>

		</div>
		<!--check availability section-->

		<!--=======================================-->

		<!--sign up section-->
		<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 welcome_section_col"
			style="background-color: #122d61; border-radius: 25px; opacity: 0.8; border-top: 3px solid #ffbd00bf;">

			<img src="images/train.png" alt=""
				class="img-responsive center-block">

			<h1 class="main_heading">
				online seat <b style="color: #00b145;">booking</b>
			</h1>

			<p class="welcome_text">Welcome to Royal Saloon Online Seat
				Reservation.</p>
			<p align="center">
				<img src="images/wifi.jpg" height="30px" width="30px">&nbsp;&nbsp;
				<img src="images/ac.png" height="30px" width="30px">&nbsp;&nbsp;
				<img src="images/snack5.png" height="30px" width="30px">&nbsp;&nbsp;
				<img src="images/film.jpg" height="30px" width="30px">&nbsp;&nbsp;
				<img src="images/washroom1.jpg" height="30px" width="30px">
			</p>

			<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				button col
				<div class="center-block text-center">
					<a href="#myModal13" data-toggle="modal"><button type="submit"
							class="btn btn-success">SIGN UP</button></a> <a href="#myModal15"
						data-toggle="modal"><button type="submit"
							class="btn btn-success">LOG IN</button></a>
				</div>
			</div> -->
			<!-- button col -->

		</div>
		<!--sign up section-->

	</div>


	<!--check availability & sign up section-->

	<br>
	<br>
	<br>

	<!--banner section-->
	<!-- <div class="row margin_auto">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 banner_col">
			<img src="images/banner.png" alt=""
				class="img-responsive center-block">
		</div>
	</div>  -->
	<!--banner section-->




	<!--modal-->

	<div id="myModal13" class="modal" data-easein="bounceLeftIn"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<img src="images/close.png" alt="abmiddle">
					</button>
				</div>
				<div class="modal-body">
					<h1 class="modal_heading">SIGN UP</h1>
					<br>
					<form>
						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="name"
									placeholder="NAME *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="phone"
									placeholder="PHONE *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="email"
									placeholder="EMAIL *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="nic"
									placeholder="NIC *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="center-block text-center">
								<button type="submit" class="btn btn-success">SIGN IN</button>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<br>
							<p style="text-align: center;">
								<b>OR</b>
							</p>
							<br>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<p style="text-align: center;">
								<a href=""> <img src="images/fb.png" alt="abmiddle" class="">
									&nbsp;
								</a> <a href=""> <img src="images/ins.png" alt="abmiddle"
									class=""> &nbsp;
								</a> <a href=""> <img src="images/twi.png" alt="abmiddle"
									class=""> &nbsp;
								</a> <a href=""> <img src="images/google.png" alt="abmiddle"
									class=""> &nbsp;
								</a>
							</p>
							<br>
						</div>

						<!--=========================-->

					</form>

				</div>
			</div>
		</div>
	</div>

	<!--===================================-->

	<div id="myModal15" class="modal" data-easein="bounceRightIn"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<img src="images/close.png" alt="abmiddle">
					</button>
				</div>
				<div class="modal-body">
					<h1 class="modal_heading">LOG IN</h1>
					<br>
					<form>
						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="uname"
									placeholder="USER NAME *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="password" class="form-control" id="paswd"
									placeholder="PASSWORD *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div
								class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block no_padding">
								<p style="font-size: 16px; cursor: pointer;" href="#myModal13"
									data-toggle="modal" id="reg">Register</p>
							</div>

							<div
								class="col-lg-6 col-md-6 col-sm-6 col-xs-6 center-block no_padding">
								<p style="font-size: 16px; cursor: pointer; text-align: right;"
									href="#myModal16" data-toggle="modal" id="fog_pass">Forgot
									Password</p>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="center-block text-center">
								<button type="submit" class="btn btn-success">LOG IN</button>
							</div>
						</div>

						<!--=========================-->
					</form>

					<br>

				</div>
			</div>
		</div>
	</div>

	<!--====================================-->

	<div id="myModal16" class="modal" data-easein="bounceDownIn"
		tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<img src="images/close.png" alt="abmiddle">
					</button>
				</div>
				<div class="modal-body">
					<h1 class="modal_heading">RESET PASSWORD</h1>
					<br>
					<form id="reset_form">
						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="name_1"
									placeholder="NAME *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="phone_1"
									placeholder="PHONE *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="form-group has-feedback">
								<input type="text" class="form-control" id="email_1"
									placeholder="EMAIL *" required>
							</div>
						</div>

						<!--=========================-->

						<div class="row margin_auto">
							<div class="center-block text-center">
								<button type="submit" class="btn btn-success" id="reset_btn">RESET</button>
							</div>
						</div>

						<br>

						<!--=========================-->

					</form>



					<div class="row margin_auto" id="reset_message"
						style="display: none;">
						<p style="text-align: center;">
							Your Password Reset Link Email has been Sent to Your Email
							Address,Please Check Your E-mail <br> Thank You
						</p>
					</div>

					<!--=========================-->

				</div>
			</div>
		</div>
	</div>

	<!--modal-->


	<!--=============================================-->
	<!--===================body====================-->




	<!--=============================================-->
	<!--===================footer====================-->

	<div class="row margin_auto footer_bar"
		style="position: fixed; bottom: 0px;">

		<div class="container">

			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<p class="footer_p1">
					<a href="aboutus.html" style="color: #FFF">About us</a> | <a
						href="thetrain.html" style="color: #FFF">The Train</a> | <a
						href="contactus.html" style="color: #FFF">Contact Us</a> | <a
						href="faq.html" style="color: #FFF">FAQ</a> | <a 
						href="termsandconditions.html" style="color: #FFF">Terms & condition</a>
				</p>
			</div>

			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
				<p class="footer_p2">
					Powered By &nbsp; <a href="http://www.mobitel.lk/" target="_blank">
						<img src="images/footer_logo.png" alt="abmiddle"
						class="footer_logo">
					</a>
				</p>
			</div>

		</div>

	</div>

	<!--=============================================-->
	<!--===================footer====================-->






	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/load_stations.js"></script>
	<script src="js/search_engine.js"></script>
	<!--return show/hide -->
	<script type="text/javascript">
		function showhide_return(value) {
			if (value == 'Y') {
				$("#return_block").show();
				$("#returnChecked").val("1");
			} else {
				$("#returnChecked").val("0");
				$("#return_block").hide();
			}
		}
	</script>
	<!--return show/hide -->

	<!--return close popup -->
	<script type="text/javascript">
		$('#reg').click(function() {

			$("#myModal15").modal('toggle');
		})
		$('#fog_pass').click(function() {

			$("#myModal15").modal('toggle');
		})
	</script>
	<!--return  close popup -->

	<!--reset msg -->
	<script type="text/javascript">
		$('#reset_btn').click(function() {

			$("#reset_form").hide();
			$("#reset_message").fadeIn(1000);
		})
	</script>
	<!--reset msg  -->

	<!--full slider-->
	<script>
		var $item = $('.carousel .item');
		var $wHeight = $(window).height();
		$item.eq(0).addClass('active');
		$item.height($wHeight);
		$item.addClass('full-screen');

		$('.carousel img').each(function() {
			var $src = $(this).attr('src');
			var $color = $(this).attr('data-color');
			$(this).parent().css({
				'background-image' : 'url(' + $src + ')',
				'background-color' : $color
			});
			$(this).remove();
		});

		$(window).on('resize', function() {
			$wHeight = $(window).height();
			$item.height($wHeight);
		});

		$('.carousel').carousel({
			interval : 8000,
			pause : "false"
		});
	</script>
	<!--full slider-->


	<!-- date picker -->
	<script type="text/javascript"
		src="js/datepicker/bootstrap-datepicker.min.js"></script>
	<script>
		$('#datepicker1').datepicker();
		$('#datepicker1').on(
				"changeDate",
				function() {
					$('#my_hidden_input').val(
							$('#datepicker3').datepicker('getFormattedDate'));
				});

		$('#datepicker1').datepicker({
			format : 'dd-M-yyyy',
			autoclose : true,
		});

		$('#datepicker1').on('changeDate', function() {
			$(this).datepicker('hide');
		});

		//============================

		$('#datepicker2').datepicker();
		$('#datepicker2').on(
				"changeDate",
				function() {
					$('#my_hidden_input').val(
							$('#datepicker3').datepicker('getFormattedDate'));
				});

		$('#datepicker2').datepicker({
			format : 'dd-M-yyyy',
			autoclose : true,
		});

		$('#datepicker2').on('changeDate', function() {
			$(this).datepicker('hide');
		});
	</script>

	<!-- date picker -->


	<!--popover style-->

	<script src='js/velocity.min.js'></script>
	<script src='js/velocity.ui.min.js'></script>


	<script>
		// add the animation to the popover
		$('a[rel=popover]').popover().click(function(e) {
			e.preventDefault();
			var open = $(this).attr('data-easein');
			if (open == 'shake') {
				$(this).next().velocity('callout.' + open);
			} else if (open == 'pulse') {
				$(this).next().velocity('callout.' + open);
			} else if (open == 'tada') {
				$(this).next().velocity('callout.' + open);
			} else if (open == 'flash') {
				$(this).next().velocity('callout.' + open);
			} else if (open == 'bounce') {
				$(this).next().velocity('callout.' + open);
			} else if (open == 'swing') {
				$(this).next().velocity('callout.' + open);
			} else {
				$(this).next().velocity('transition.' + open);
			}

		});

		// add the animation to the modal
		$(".modal").each(function(index) {
			$(this).on('show.bs.modal', function(e) {
				var open = $(this).attr('data-easein');
				if (open == 'shake') {
					$('.modal-dialog').velocity('callout.' + open);
				} else if (open == 'pulse') {
					$('.modal-dialog').velocity('callout.' + open);
				} else if (open == 'tada') {
					$('.modal-dialog').velocity('callout.' + open);
				} else if (open == 'flash') {
					$('.modal-dialog').velocity('callout.' + open);
				} else if (open == 'bounce') {
					$('.modal-dialog').velocity('callout.' + open);
				} else if (open == 'swing') {
					$('.modal-dialog').velocity('callout.' + open);
				} else {
					$('.modal-dialog').velocity('transition.' + open);
				}

			});
		});
	</script>
	<!--popover style-->


</body>
</html>
