<%--
  Created by IntelliJ IDEA.
  User: lakmaljay
  Date: 2/8/2018
  Time: 6:38 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>TRAIN SEAT BOOKING</title>

<!--favicon-->
<link rel="icon" href="images/mobitel.ico" type="image/x-icon" />
<!--favicon-->

<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap -->

<!--main css-->
<link href="css/train_seat_css.css" rel="stylesheet" type="text/css"
	media="screen">

<link href="css/train_seat_inner_page_css.css" rel="stylesheet"
	type="text/css" media="screen">
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

<!--seat booking css-->
<link href="css/seat_booking.css" rel="stylesheet" type="text/css"
	media="screen">
<!--seat booking css-->

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

/* dra */
.seats-div table, .seats-div th, .seats-div td {
	border-collapse: collapse;
}

.seats-div table {
	/* border: 1px solid black; */
	
}

.img_seat {
	width: 30px;
	vertical-align: middle;
}

.seats-div {
	overflow: auto;
	background-color: #f3f3f3;
	border: 2px solid #34a2d4;
	border-radius: 6px;
	border-radius: 83px 83px 83px 83px;
	/* border-radius: 83px 0 0 83px; */
	padding-left: 76px;
	padding-right: 76px;
}

.seat-set {
	float: left;
	margin: 10px;
}

.seat {
	width: 30px;
	height: 30px;
	padding: 0px;
}

.null-seat {
	border: 0;
	height: 15px !important;
}

.seats-div td {
	width: 70px;
	height: 45px;
	font-size: 14px;
}

.seats-div .in-seat:hover {
	background-color: #F1FE9B;
	cursor: pointer;
}

.booked-seat {
	background: url(images/booked_seat_img.gif);
	background-repeat: no-repeat;
}

.booked-seat-return {
	background: url(images/booked_seat_return_img.gif);
	background-repeat: no-repeat;
}

.available-seat {
	background: url(images/available_seat_img.gif);
	background-repeat: no-repeat;
}

.service-area-01 {
	background: url(images/SA_01.png);
	background-repeat: no-repeat;
}

.service-area-02 {
	background: url(images/SA_02.png);
	background-repeat: no-repeat;
}


.wash-room-01 {
	background: url(images/WR_01.png);
	background-repeat: no-repeat;
}

.wash-room-02 {
	background: url(images/WR_02.png);
	background-repeat: no-repeat;
}


.forward-train {
	content: url(images/forward_train.png);
	margin-left: auto;
	width: 200px;
}

.return-train {
	content: url(images/return_train.png);
	margin-left: auto;
	width: 200px;
}

.available-seat-return {
	background: url(images/available_seat_return_img.gif);
	background-repeat: no-repeat;
}

.selected-seat {
	background: url(images/selected_seat_img.gif);
	background-repeat: no-repeat;
}

.selected-seat-return {
	background: url(images/selected_seat_return_img.gif);
	background-repeat: no-repeat;
}

.seat-number {
	/* top: -8px; */
	top: -14px;
	/*   right: 4px; */
	position: relative;
}

.seat-number-forward {
	/* top: -8px; */
	top: -14px;
	left: 16px;
	position: relative;
}

.img-icon-forward{
	right: 16px;
}


.btn { /* just for this demo. */
    margin-top: 5px;
}
.btn-arrow-right,
.btn-arrow-left {
    position: relative;
    padding-left: 18px;
    padding-right: 18px;
    background-color: #ABB2B9;
	width: 19%;
	height: 32px;
}
.btn-arrow-right {
    padding-left: 36px;
}
.btn-arrow-left {
    padding-right: 36px;
}
.btn-arrow-right:before,
.btn-arrow-right:after,
.btn-arrow-left:before,
.btn-arrow-left:after { /* make two squares (before and after), looking similar to the button */
    content:"";
    position: absolute;
    top: 5px; /* move it down because of rounded corners */
    width: 22px; /* same as height */
    height: 22px; /* button_outer_height / sqrt(2) */
    background: inherit; /* use parent background */
    border: inherit; /* use parent border */
    border-left-color: transparent; /* hide left border */
    border-bottom-color: transparent; /* hide bottom border */
    border-radius: 0px 4px 0px 0px; /* round arrow corner, the shorthand property doesn't accept "inherit" so it is set to 4px */
    -webkit-border-radius: 0px 4px 0px 0px;
    -moz-border-radius: 0px 4px 0px 0px;
}
.btn-arrow-right:before,
.btn-arrow-right:after {
    transform: rotate(45deg); /* rotate right arrow squares 45 deg to point right */
    -webkit-transform: rotate(50deg);
    -moz-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
}
.btn-arrow-left:before,
.btn-arrow-left:after {
    transform: rotate(225deg); /* rotate left arrow squares 225 deg to point left */
    -webkit-transform: rotate(225deg);
    -moz-transform: rotate(225deg);
    -o-transform: rotate(225deg);
    -ms-transform: rotate(225deg);
}
.btn-arrow-right:before,
.btn-arrow-left:before { /* align the "before" square to the left */
    left: -11px;
}
.btn-arrow-right:after,
.btn-arrow-left:after { /* align the "after" square to the right */
    right: -11px;
}
.btn-arrow-right:after,
.btn-arrow-left:before { /* bring arrow pointers to front */
    z-index: 1;
}
.btn-arrow-right:before,
.btn-arrow-left:after { /* hide arrow tails background */
    background-color: transparent;
}
</style>
<!--scroll bar style-->


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

				<!--  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <p class="language_btn" style="margin-bottom: 0px;">
                    <a href="profile.html"><b class="user"><img
                            src="images/user_icon.png" alt="abmiddle" class="">
                        Welcome, Kamal Perera</b></a>
                </p> -->
				<!--   <p class="language_btn" style="padding-top: 0px;">
                    <a href=""><img src="images/eng.png" alt="abmiddle"></a> <a
                        href=""><img src="images/sinhala.png" alt="abmiddle"></a> <a
                        href=""><img src="images/tamil.png" alt="abmiddle"></a>
                </p> -->
				<!-- </div> -->

			</div>
		</div>
	</div>

	<!--=============================================-->
	<!--===================header====================-->


	<!--=============================================-->
	<!--===================body====================-->


	<!--logo bar-->
	<div class="container">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 logo_bar">
			&nbsp;</div>
	</div>
	<!--logo bar-->

	<br>

	<!--check availability-->

	<div class="container">

		<!--check availability section-->
		<div
			class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div hidden-xs">

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no_padding">

				<div class="black_box">
					<!-- black box start-->
					<h3 class="small_heading">CHECK AVAILABILITY</h3>

					<form>


						<div class="row">

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect4">
										<option>FROM</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
									</select>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect5">
										<option>TO</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
										<option>Station</option>
									</select>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="text" class="form-control form-control_my date"
											id="datepicker1" placeholder="DATE *" required> <i
											class="glyphicon glyphicon-calendar form-control-feedback"></i>
									</div>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="number" class="form-control" id="no_of_psng"
											placeholder="NUMBER OF PASSENGER *" required> <i
											class="glyphicon glyphicon-user form-control-feedback"></i>
									</div>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect1">
										<option>COMPARTMENT TYPE</option>
										<option>LUXURY</option>
										<option>SEMI LUXURY</option>
										<option>NORMAL</option>
									</select>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect2">
										<option>AC / NON AC</option>
										<option>AC</option>
										<option>NON AC</option>
									</select>
								</div>
							</div>

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<!-- button col -->
								<div class="center-block text-center">
									<a href="" data-toggle="modal"><button type="submit"
											class="btn btn-success">SEARCH</button></a> <a href=""
										data-toggle="modal"><button type="submit"
											class="btn btn-success">RESET</button></a>
								</div>
							</div>
							<!-- button col -->


						</div>

						<!--=========================-->

					</form>

					<br>

				</div>
				<!-- black box end-->
				<div >
					
					<a href="" class="btn btn-arrow-right" style="color: #17202A">Home</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Check Availability</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Seat Plan</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Reservation</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Summary</a>
				</div>

			</div>

		</div>
		<!--check availability section-->

		<!--=======================================-->


		<!--seat booking section malitha-->



		<!--=======================================-->


		<!--seat booking section-->


		<!--seat booking section-->

		<div class="row margin_auto">

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

				<br>
				<div class="black_box">
					<!-- black box start-->

					<!-- <h1 class="modal_heading"><img src="malitha"></h1> -->
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div style="font-size: xx-large; color: white;">CF - KDY
								15:35</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div class="forward-train">BLE EXPRESS</div>
						</div>
						
					</div>
					<br>
					<div class="row">
						<!-- slider row-->
						<div id="myCarousel_01" class="carousel slide"
							data-ride="carousel" data-interval="false">
							<!-- slider-->
							<!-- Indicators -->
							<!--<ol class="carousel-indicators">-->
							<!--<li data-target="#myCarousel_01" data-slide-to="0" class="active"></li>-->
							<!--<li data-target="#myCarousel_01" data-slide-to="1"></li>-->
							<!--<li data-target="#myCarousel_01" data-slide-to="2"></li>-->
							<!--</ol>-->

							<!-- Wrapper for slides -->
							<div class="carousel-inner">

								<div class="item active">

									<!--  -->
									<div style="overflow: auto; width: 100%">
										<div class="seats-div" id="seats-div-1">
											<!--  -->
											<table class="seat-set">
												<tr>
													<!-- <td id="g1_s45" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s1')">
														<div>
															<div class="seat-number-forward">45</div>
														</div>
													</td> -->
													<td id="g1_s41" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s41')">
														<div>
															<div class="seat-number-forward">41</div>
														</div>
													</td>
													<td id="g1_s37" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s37')">
														<div>
															<div class="seat-number-forward">37</div>
														</div>
													</td>
													<td id="g1_s33" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s33')">
														<div>
															<div class="seat-number-forward">33</div>
														</div>
													</td>
													<td id="g1_s29" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s29')">
														<div>
															<div class="seat-number-forward">29</div>
														</div>
													</td>
													<td id="g1_s25" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s25')">
														<div>
															<div class="seat-number-forward">25</div>
														</div>
													</td>
													<td id="g1_s21" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s21')">
														<div>
															<div class="seat-number-forward">21</div>
														</div>
													</td>
													<td id="g1_s21" class="wash-room-01"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													
													<td id="g1_s17" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s17')">
														<div>
															<div class="seat-number-forward">17</div>
														</div>
													</td>
													<td id="g1_s13" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s13')">
														<div>
															<div class="seat-number-forward">13</div>
														</div>
													</td>
													<td id="g1_s9" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s9')">
														<div>
															<div class="seat-number-forward">9</div>
														</div>
													</td>
													<td id="g1_s5" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s5')">
														<div>
															<div class="seat-number-forward">5</div>
														</div>
													</td>
													<td id="g1_s1" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s1')">
														<div>
															<div class="seat-number-forward">1</div>
														</div>
													</td>
												</tr>
												<tr>
													<!-- <td id="g1_s46" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s46')">
														<div>
															<div class="seat-number-forward">46</div>
														</div>
													</td> -->
													<td id="g1_s42" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s42')">
														<div>
															<div class="seat-number-forward">42</div>
														</div>
													</td>
													<td id="g1_s38" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s38')">
														<div>
															<div class="seat-number-forward">38</div>
														</div>
													</td>
													<td id="g1_s34" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s34')">
														<div>
															<div class="seat-number-forward">34</div>
														</div>
													</td>
													<td id="g1_s30" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s30')">
														<div>
															<div class="seat-number-forward">30</div>
														</div>
													</td>
													<td id="g1_s26" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s26')">
														<div>
															<div class="seat-number-forward">26</div>
														</div>
													</td>
													<td id="g1_s22" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s22')">
														<div>
															<div class="seat-number-forward">22</div>
														</div>
													</td>
													<td id="g1_s21" class="wash-room-02"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_s18" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s18')">
														<div>
															<div class="seat-number-forward">18</div>
														</div>
													</td>
													
													<td id="g1_s14" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s14')">
														<div>
															<div class="seat-number-forward">14</div>
														</div>
													</td>
													<td id="g1_s10" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s10')">

														<div class="seat-number-forward">10</div>

													</td>

													<td id="g1_s6" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s6')">
														<div>
															<div class="seat-number-forward">6</div>
														</div>
													</td>
													<td id="g1_s2" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s2')">
														<div>
															<div class="seat-number-forward">2</div>
														</div>
													</td>
												</tr>

												<tr>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
												</tr>
												<tr>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
												</tr>

												<tr>
													<!-- <td id="g1_s43" class="">
														<div>
															<div class="seat-number"></div>
														</div>
													</td>
 -->
													<td id="g1_s43" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s43')">
														<div>
															<div class="seat-number-forward">43</div>
														</div>
													</td>
													<td id="g1_s39" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s39')">
														<div>
															<div class="seat-number-forward">39</div>
														</div>
													</td>
													<td id="g1_s35" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s35')">
														<div>
															<div class="seat-number-forward">35</div>
														</div>
													</td>
													<td id="g1_s31" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s31')">
														<div>
															<div class="seat-number-forward">31</div>
														</div>
													</td>
													<td id="g1_s27" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s27')">
														<div>
															<div class="seat-number-forward">27</div>
														</div>
													</td>
													<td id="g1_s23" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s23')">
														<div>
															<div class="seat-number-forward">23</div>
														</div>
													</td>
													<td id="g1_s21" class="service-area-01"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_s19" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s19')">
														<div>
															<div class="seat-number-forward">19</div>
														</div>
													</td>
													<td id="g1_s15" class=""
														onclick="changeSeatStatus('g1_s15')">
														<div>
															<div class="seat-number-forward">15</div>
														</div>
													</td>
													<td id="g1_s11" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s11')">
														<div>
															<div class="seat-number-forward">11</div>
														</div>
													</td>
													<td id="g1_s7" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s7')">
														<div>
															<div class="seat-number-forward">7</div>
														</div>
													</td>
													<td id="g1_s3" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s3')">
														<div>
															<div class="seat-number-forward">3</div>
														</div>
													</td>

												</tr>

												<tr>

													<!-- <td id="g1_s43" class="">
														<div>
															<div class="seat-number"></div>
														</div>
													</td> -->
													<td id="g1_s44" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s44')">
														<div>
															<div class="seat-number-forward">44</div>
														</div>
													</td>
													<td id="g1_s40" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s40')">
														<div>
															<div class="seat-number-forward">40</div>
														</div>
													</td>
													<td id="g1_s36" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s36')">
														<div>
															<div class="seat-number-forward">36</div>
														</div>
													</td>
													<td id="g1_s32" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s32')">
														<div>
															<div class="seat-number-forward">32</div>
														</div>
													</td>
													<td id="g1_s28" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s28')">
														<div>
															<div class="seat-number-forward">28</div>
														</div>
													</td>
													<td id="g1_s24" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s24')">
														<div>
															<div class="seat-number-forward">24</div>
														</div>
													</td>
													<td id="g1_s21" class="service-area-02"
														>
													<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_s20" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s20')">
														<div>
															<div class="seat-number-forward">20</div>
														</div>
													</td>
													
													<td id="g1_s16" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s16')">
														<div>
															<div class="seat-number-forward">16</div>
														</div>
													</td>
													<td id="g1_s12" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s12')">
														<div>
															<div class="seat-number-forward">12</div>
														</div>
													</td>
													<td id="g1_s8" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s8')">
														<div>
															<div class="seat-number-forward">8</div>
														</div>
													</td>
													<td id="g1_s4" class="in-seat available-seat"
														onclick="changeSeatStatus('g1_s4')">
														<div>
															<div class="seat-number-forward">4</div>
														</div>
													</td>
												</tr>


											</table>


											<!-- <table class="seat-set">
			<tr>
				<td id="g2_s1" class="in-seat available-seat" onclick="changeSeatStatus('g2_s1')">
					<div>
						<div class="seat-number">1</div>
					</div>
				</td>
				<td id="g2_s5" class="in-seat booked-seat" onclick="changeSeatStatus('g2_s5')">
					<div>
						<div class="seat-number">5</div>
					</div>
				</td>
				<td id="g2_s9" class="in-seat available-seat" onclick="changeSeatStatus('g2_s9')">
					<div>
						<div class="seat-number">9</div>
					</div>
				</td>
				<td id="g2_s13" class="in-seat available-seat" onclick="changeSeatStatus('g2_s13')">
					<div>
						<div class="seat-number">13</div>
					</div>
				</td>
				<td id="g2_s17" class="in-seat available-seat" onclick="changeSeatStatus('g2_s17')">
					<div>
						<div class="seat-number">17</div>
					</div>
				</td>
				<td id="g2_s21" class="in-seat available-seat" onclick="changeSeatStatus('g2_s21')">
					<div>
						<div class="seat-number">21</div>
					</div>
				</td>
				<td id="g2_s25" class="in-seat available-seat" onclick="changeSeatStatus('g2_s25')">
					<div>
						<div class="seat-number">25</div>
					</div>
				</td>
				<td id="g2_s29" class="in-seat available-seat" onclick="changeSeatStatus('g2_s29')">
					<div>
						<div class="seat-number">29</div>
					</div>
				</td>
				<td id="g2_s33" class="in-seat available-seat" onclick="changeSeatStatus('g2_s33')">
					<div>
						<div class="seat-number">33</div>
					</div>
				</td>
				<td id="g2_s37" class="in-seat available-seat" onclick="changeSeatStatus('g2_s37')">
					<div>
						<div class="seat-number">37</div>
					</div>
				</td>
			</tr>
			<tr>
				<td id="g2_s2" class="in-seat available-seat" onclick="changeSeatStatus('g2_s2')">
					<div>
						<div class="seat-number">2</div>
					</div>
				</td>
				<td id="g2_s6" class="in-seat booked-seat" onclick="changeSeatStatus('g2_s6')">
					<div>
						<div class="seat-number">6</div>
					</div>
				</td>
				<td id="g2_s10" class="in-seat booked-seat" onclick="changeSeatStatus('g2_s10')">
					<div>
						<div class="seat-number">10</div>
					</div>
				</td>
				<td id="g2_s14" class="in-seat available-seat" onclick="changeSeatStatus('g2_s14')">
					<div>
						<div class="seat-number">14</div>
					</div>
				</td>
				<td id="g2_s18" class="in-seat available-seat" onclick="changeSeatStatus('g2_s18')">
					<div>
						<div class="seat-number">18</div>
					</div>
				</td>
				<td id="g2_s22" class="in-seat available-seat" onclick="changeSeatStatus('g2_s22')">
					<div>
						<div class="seat-number">22</div>
					</div>
				</td>
				<td id="g2_s26" class="in-seat available-seat" onclick="changeSeatStatus('g2_s26')">
					<div>
						<div class="seat-number">26</div>
					</div>
				</td>
				<td id="g2_s30" class="in-seat available-seat" onclick="changeSeatStatus('g2_s30')">
					<div>
						<div class="seat-number">30</div>
					</div>
				</td>
				<td id="g2_s34" class="in-seat booked-seat" onclick="changeSeatStatus('g2_s34')">
					<div>
						<div class="seat-number">34</div>
					</div>
				</td>
				<td id="g2_s38" class="in-seat available-seat" onclick="changeSeatStatus('g2_s38')">
					<div>
						<div class="seat-number">38</div>
					</div>
				</td>
			</tr>
			
			<tr>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
				<td class="null-seat"></td>
			</tr>

			<tr>
				<td id="g2_s3" class="in-seat booked-seat" onclick="changeSeatStatus('g2_s3')">
					<div>
						<div class="seat-number">3</div>
					</div>
				</td>
				<td id="g2_s7" class="in-seat available-seat" onclick="changeSeatStatus('g2_s7')">
					<div>
						<div class="seat-number">7</div>
					</div>
				</td>
				<td id="g2_s11" class="in-seat available-seat" onclick="changeSeatStatus('g2_s11')">
					<div>
						<div class="seat-number">11</div>
					</div>
				</td>
				<td id="g2_s15" class="in-seat available-seat" onclick="changeSeatStatus('g2_s15')">
					<div>
						<div class="seat-number">15</div>
					</div>
				</td>
				<td id="g2_s19" class="in-seat available-seat" onclick="changeSeatStatus('g2_s19')">
					<div>
						<div class="seat-number">19</div>
					</div>
				</td>
				<td id="g2_s23" class="in-seat available-seat" onclick="changeSeatStatus('g2_s23')">
					<div>
						<div class="seat-number">23</div>
					</div>
				</td>
				<td id="g2_s27" class="in-seat available-seat" onclick="changeSeatStatus('g2_s27')">
					<div>
						<div class="seat-number">27</div>
					</div>
				</td>
				<td id="g2_s31" class="in-seat available-seat" onclick="changeSeatStatus('g2_s31')">
					<div>
						<div class="seat-number">31</div>
					</div>
				</td>
				<td id="g2_s35" class="in-seat available-seat" onclick="changeSeatStatus('g2_s35')">
					<div>
						<div class="seat-number">35</div>
					</div>
				</td>
				<td id="g2_s39" class="in-seat available-seat" onclick="changeSeatStatus('g2_s39')">
					<div>
						<div class="seat-number">39</div>
					</div>
				</td>
			</tr>

			<tr>
				<td id="g2_s4" class="in-seat available-seat" onclick="changeSeatStatus('g2_s4')">
					<div>
						<div class="seat-number">4</div>
					</div>
				</td>
				<td id="g2_s8" class="in-seat available-seat" onclick="changeSeatStatus('g2_s8')">
					<div>
						<div class="seat-number">8</div>
					</div>
				</td>
				<td id="g2_s12" class="in-seat available-seat" onclick="changeSeatStatus('g2_s12')">
					<div>
						<div class="seat-number">12</div>
					</div>
				</td>
				<td id="g2_s16" class="in-seat available-seat" onclick="changeSeatStatus('g2_s16')">
					<div>
						<div class="seat-number">16</div>
					</div>
				</td>
				<td id="g2_s20" class="in-seat available-seat" onclick="changeSeatStatus('g2_s20')">
					<div>
						<div class="seat-number">20</div>
					</div>
				</td>
				<td id="g2_s24" class="in-seat available-seat" onclick="changeSeatStatus('g2_s24')">
					<div>
						<div class="seat-number">24</div>
					</div>
				</td>
				<td id="g2_s28" class="in-seat available-seat" onclick="changeSeatStatus('g2_s28')">
					<div>
						<div class="seat-number">28</div>
					</div>
				</td>
				<td id="g2_s32" class="in-seat available-seat" onclick="changeSeatStatus('g2_s32')">
					<div>
						<div class="seat-number">32</div>
					</div>
				</td>
				<td id="g2_s36" class="in-seat available-seat" onclick="changeSeatStatus('g2_s36')">
					<div>
						<div class="seat-number">36</div>
					</div>
				</td>
				<td id="g2_s40" class="in-seat available-seat" onclick="changeSeatStatus('g2_s40')">
					<div>
						<div class="seat-number">40</div>
					</div>
				</td>
			</tr>
			
				
		</table> -->




										</div>
									</div>













									<!-- 
<div class="plane">
<div class="cockpit">
    <h1>COMPARTMENT <b class="comp_no">BLR</b></h1>
</div>
<div class="exit exit--front fuselage">

</div>
<ol class="cabin fuselage">
<li class="row row--1 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="1A" />
            <label for="1A" class="reserved">1</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1B" />
            <label for="1B">2</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1C" />
            <label for="1C" style="display: none !important;">1C</label>
        </li>
        <li class="seat">
            <input type="checkbox" disabled id="1D" />
            <label for="1D" style="display: none !important;">Occupied</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1E" />
            <label for="1E" class="reserved">24</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="1F" />
            <label for="1F" class="reserved">23</label>
        </li>
    </ol>
</li>
<li class="row row--2 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="2A" />
            <label for="2A">3</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2B" />
            <label for="2B">4</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2C" />
            <label for="2C" style="display: none !important;">2C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2D" />
            <label for="2D" style="display: none !important;">2D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2E" />
            <label for="2E">26</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="2F" />
            <label for="2F">25</label>
        </li>
    </ol>
</li>
<li class="row row--3 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="3A" />
            <label for="3A">5</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3B" />
            <label for="3B">6</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3C" />
            <label for="3C" style="display: none !important;">3C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3D" />
            <label for="3D" style="display: none !important;">3D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3E" />
            <label for="3E">28</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="3F" />
            <label for="3F">27</label>
        </li>
    </ol>
</li>
<li class="row row--4 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="4A" />
            <label for="4A" class="reserved">7</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4B" />
            <label for="4B" class="reserved">8</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4C" />
            <label for="4C" style="display: none !important;">4C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4D" />
            <label for="4D" style="display: none !important;">4D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4E" />
            <label for="4E">30</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="4F" />
            <label for="4F">29</label>
        </li>
    </ol>
</li>
<li class="row row--5 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="5A" />
            <label for="5A">9</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5B" />
            <label for="5B">10</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5C" />
            <label for="5C" style="display: none !important;">5C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5D" />
            <label for="5D" style="display: none !important;">5D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5E" />
            <label for="5E">32</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="5F" />
            <label for="5F">31</label>
        </li>
    </ol>
</li>
<li class="row row--6 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="6A" />
            <label for="6A">11</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6B" />
            <label for="6B">12</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6C" />
            <label for="6C" style="display: none !important;">6C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6D" />
            <label for="6D" style="display: none !important;">6D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6E" />
            <label for="6E">34</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="6F" />
            <label for="6F">33</label>
        </li>
    </ol>
</li>
<li class="row row--7 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="7A" />
            <label for="7A">13</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7B" />
            <label for="7B">14</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7C" />
            <label for="7C" style="display: none !important;">7C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7D" />
            <label for="7D" style="display: none !important;">7D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7E" />
            <label for="7E">36</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="7F" />
            <label for="7F">35</label>
        </li>
    </ol>
</li>
<li class="row row--8 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="8A" />
            <label for="8A">15</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8B" />
            <label for="8B">16</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8C" />
            <label for="8C" style="display: none !important;">8C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8D" />
            <label for="8D" style="display: none !important;">8D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8E" />
            <label for="8E">38</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="8F" />
            <label for="8F">37</label>
        </li>
    </ol>
</li>
<li class="row row--9 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="9A" />
            <label for="9A" class="reserved">17</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9B" />
            <label for="9B" class="reserved">18</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9C" />
            <label for="9C" style="display: none !important;">9C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9D" />
            <label for="9D" style="display: none !important;">9D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9E" />
            <label for="9E">40</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="9F" />
            <label for="9F">39</label>
        </li>
    </ol>
</li>
<li class="row row--10 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="10A" />
            <label for="10A">19</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10B" />
            <label for="10B">20</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10C" />
            <label for="10C" style="display: none !important;">10C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10D" />
            <label for="10D" style="display: none !important;">10D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10E" />
            <label for="10E">42</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="10F" />
            <label for="10F">41</label>
        </li>
    </ol>
</li>
<li class="row row--11 margin_auto">
    <ol class="seats" type="A">
        <li class="seat">
            <input type="checkbox" id="11A" />
            <label for="11A">21</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11B" />
            <label for="11B">22</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11C" />
            <label for="11C" style="display: none !important;">10C</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11D" />
            <label for="11D" style="display: none !important;">10D</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11E" />
            <label for="11E">44</label>
        </li>
        <li class="seat">
            <input type="checkbox" id="11F" />
            <label for="11F">43</label>
        </li>
    </ol>
</li>
<ol class="seats" type="A">
    <li class="seat">
        <input type="checkbox" id="17A" />
        <label for="17A">10A</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17B" />
        <label for="17B">10B</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="11C" />
        <label for="11C" style="display: none !important;">10C</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17D" />
        <label for="17D" style="display: none !important;">10D</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17E" />
        <label for="17E">10E</label>
    </li>
    <li class="seat">
        <input type="checkbox" id="17F" />
        <label for="17F">10F</label>
    </li>
</ol>
</li>
</ol>
 dra




















<div class="exit exit--back fuselage">

</div>
</div>
 -->
								</div>



							</div>

							<!-- Left and right controls -->
							<!-- 	<a class="left carousel-control" href="#myCarousel_01"
								data-slide="prev"
								style="top: 50px; right: 60px !important; left: inherit;"> <span><img
									src="images/arrow_left.png" alt="" class=""> </span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel_01"
								data-slide="next" style="top: 50px;"> <span><img
									src="images/arrow_right.png" alt="" class=""> </span> <span
								class="sr-only">Next</span>
							</a> -->
						</div>
						<!-- slider-->
					</div>
					<!-- slider row-->

					<!-- <br> <b class="seat_type"><img src="images/available.png"
						alt="abmiddle" class="img_seat"> &nbsp; AVAILABLE SEATS </b>
					&nbsp; &nbsp; <b class="seat_type"><img
						src="images/reserved.png" alt="abmiddle" class="img_seat">
						&nbsp; RESERVED SEATS </b> &nbsp; &nbsp; <b class="seat_type"><img
						src="images/selected.png" alt="abmiddle" class="img_seat">
						&nbsp; SELECTED SEATS </b> -->
					<!-- <div class="row">
					<br> <b class="seat_type"><div
							style="width: 20px; height: 20px; background: red;"></div> &nbsp;
						AVAILABLE SEATS </b> &nbsp; &nbsp; <b class="seat_type"><div
							style="width: 20px; height: 20px; background: blue;"></div>
						&nbsp; RESERVED SEATS </b>&nbsp; &nbsp; <b class="seat_type"><div
							style="width: 20px; height: 20px; background: black;"></div>
						&nbsp; BLOCKED SEATS </b>
</div> -->
				</div>
				<!-- black box end-->
				<br>

			</div>
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<br> <b class="seat_type"><img src="images/available.png"
					alt="abmiddle" class="img_seat"> &nbsp; AVAILABLE SEATS </b>
				&nbsp; &nbsp; <b class="seat_type"><img
					src="images/reserved.png" alt="abmiddle" class="img_seat">
					&nbsp; RESERVED SEATS </b> &nbsp; &nbsp; <b class="seat_type"><img
					src="images/selected.png" alt="abmiddle" class="img_seat">
					&nbsp; SELECTED SEATS </b>
			</div>


			<!--seat booking section-->

			<!-- <div class="row margin_auto"> -->

			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"
				id="returnSeatPlan" style="display: none">

				<br>
				<div class="black_box">
					<!-- black box start-->
					
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div style="font-size: xx-large; color: white;">KDY - CF 15:00</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div class="return-train"></div>
						</div>
						<br>
					</div>
				
					<br>

					<div class="row">
						<!-- slider row-->
						<div id="myCarousel_01" class="carousel slide"
							data-ride="carousel" data-interval="false">

							<!-- Wrapper for slides -->
							<div class="carousel-inner">

								<div class="item active">

									<!--  -->
									<div style="overflow: auto; width: 100%">
										<div class="seats-div" id="seats-div-2">
											<!--  -->
											<table class="seat-set">
												<tr>
													<td id="g1_r1" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r1')">
														<div>
															<div class="seat-number">1</div>
														</div>
													</td>
													<td id="g1_r5" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r5')">
														<div>
															<div class="seat-number">5</div>
														</div>
													</td>
													<td id="g1_r9" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r9')">
														<div>
															<div class="seat-number">9</div>
														</div>
													</td>
													<td id="g1_r13" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r13')">
														<div>
															<div class="seat-number">13</div>
														</div>
													</td>
													<td id="g1_r17" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r17')">
														<div>
															<div class="seat-number">17</div>
														</div>
													</td>
													<td id="g1_s21" class="wash-room-01"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_r21" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r21')">
														<div>
															<div class="seat-number">21</div>
														</div>
													</td>
													<td id="g1_r25" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r25')">
														<div>
															<div class="seat-number">25</div>
														</div>
													</td>
													<td id="g1_r29" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r29')">
														<div>
															<div class="seat-number">29</div>
														</div>
													</td>
													<td id="g1_r33" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r33')">
														<div>
															<div class="seat-number">33</div>
														</div>
													</td>
													<td id="g1_r37" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r37')">
														<div>
															<div class="seat-number">37</div>
														</div>
													</td>
													<td id="g1_r41" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r41')">
														<div>
															<div class="seat-number">41</div>
														</div>
													</td>
													<!-- <td id="g1_r45" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r45')">
														<div>
															<div class="seat-number">45</div>
														</div>
													</td> -->
												</tr>
												<tr>
													<td id="g1_r2" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r2')">
														<div>
															<div class="seat-number">2</div>
														</div>
													</td>
													<td id="g1_r6" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r6')">
														<div>
															<div class="seat-number">6</div>
														</div>
													</td>
													<td id="g1_r10" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r10')">
														<div>
															<div class="seat-number">10</div>
														</div>
													</td>
													<td id="g1_r14" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r14')">
														<div>
															<div class="seat-number">14</div>
														</div>
													</td>
													<td id="g1_r18" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r18')">
														<div>
															<div class="seat-number">18</div>
														</div>
													</td>
													<td id="g1_s21" class="wash-room-02"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_r22" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r22')">
														<div>
															<div class="seat-number">22</div>
														</div>
													</td>
													<td id="g1_r26" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r26')">
														<div>
															<div class="seat-number">26</div>
														</div>
													</td>
													<td id="g1_r30" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r30')">
														<div>
															<div class="seat-number">30</div>
														</div>
													</td>
													<td id="g1_r34" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r34')">
														<div>
															<div class="seat-number">34</div>
														</div>
													</td>
													<td id="g1_r38" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r38')">
														<div>
															<div class="seat-number">38</div>
														</div>
													</td>

													<td id="g1_r42" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r42')">
														<div>
															<div class="seat-number">42</div>
														</div>
													</td>
													<!-- <td id="g1_r46" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r46')">
														<div>
															<div class="seat-number">46</div>
														</div>
													</td> -->
												</tr>

												<tr>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
												</tr>
												<tr>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
													<td class="null-seat"></td>
												</tr>

												<tr>
													<td id="g1_r3" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r3')">
														<div>
															<div class="seat-number">3</div>
														</div>
													</td>
													<td id="g1_r7" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r7')">
														<div>
															<div class="seat-number">7</div>
														</div>
													</td>
													<td id="g1_r11" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r11')">
														<div>
															<div class="seat-number">11</div>
														</div>
													</td>
													<td id="g1_r15" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r15')">
														<div>
															<div class="seat-number">15</div>
														</div>
													</td>
													<td id="g1_r19" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r19')">
														<div>
															<div class="seat-number">19</div>
														</div>
													</td>
													<td id="g1_s21" class="service-area-01"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_r23" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r23')">
														<div>
															<div class="seat-number">23</div>
														</div>
													</td>
													<td id="g1_r27" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r27')">
														<div>
															<div class="seat-number">27</div>
														</div>
													</td>
													<td id="g1_r31" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r31')">
														<div>
															<div class="seat-number">31</div>
														</div>
													</td>
													<td id="g1_r35" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r35')">
														<div>
															<div class="seat-number">35</div>
														</div>
													</td>
													<td id="g1_r39" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r39')">
														<div>
															<div class="seat-number">39</div>
														</div>
													</td>
													<td id="g1_r43" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r43')">
														<div>
															<div class="seat-number">43</div>
														</div>
													</td>

												</tr>

												<tr>
													<td id="g1_r4" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r4')">
														<div>
															<div class="seat-number">4</div>
														</div>
													</td>
													<td id="g1_r8" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r8')">
														<div>
															<div class="seat-number">8</div>
														</div>
													</td>
													<td id="g1_r12" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r12')">
														<div>
															<div class="seat-number">12</div>
														</div>
													</td>
													<td id="g1_r16" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r16')">
														<div>
															<div class="seat-number">16</div>
														</div>
													</td>
													<td id="g1_r20" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r20')">
														<div>
															<div class="seat-number">20</div>
														</div>
													</td>
													<td id="g1_s21" class="service-area-02"
														>
														<div style="width: 90px; ">
															<div class="img-icon-forward"></div>
														</div>
													</td>
													<td id="g1_r24" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r24')">
														<div>
															<div class="seat-number">24</div>
														</div>
													</td>
													<td id="g1_r28" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r28')">
														<div>
															<div class="seat-number">28</div>
														</div>
													</td>
													<td id="g1_r32" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r32')">
														<div>
															<div class="seat-number">32</div>
														</div>
													</td>
													<td id="g1_r36" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r36')">
														<div>
															<div class="seat-number">36</div>
														</div>
													</td>
													<td id="g1_r40" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r40')">
														<div>
															<div class="seat-number">40</div>
														</div>
													</td>
													<td id="g1_r44" class="in-seat available-seat-return"
														onclick="changeSeatStatusReturn('g1_r44')">
														<div>
															<div class="seat-number">44</div>
														</div>
													</td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>

							<!-- Left and right controls -->
							<!-- <a class="left carousel-control" href="#myCarousel_01"
									data-slide="prev"
									style="top: 50px; right: 60px !important; left: inherit;">
									<span><img src="images/arrow_left.png" alt="" class="">
								</span> <span class="sr-only">Previous</span>
								</a> <a class="right carousel-control" href="#myCarousel_01"
									data-slide="next" style="top: 50px;"> <span><img
										src="images/arrow_right.png" alt="" class=""> </span> <span
									class="sr-only">Next</span>
								</a> -->
						</div>
						<!-- slider-->
					</div>
					<!-- slider row-->

					<!-- 	<br> <b class="seat_type"><img src="images/available.png"
							alt="abmiddle" class="img_seat"> &nbsp; AVAILABLE SEATS </b>
						&nbsp; &nbsp; <b class="seat_type"><img
							src="images/reserved.png" alt="abmiddle" class="img_seat">
							&nbsp; RESERVED SEATS </b> &nbsp; &nbsp; <b class="seat_type"><img
							src="images/selected.png" alt="abmiddle" class="img_seat">
							&nbsp; SELECTED SEATS </b> -->

				</div>
				<!-- black box end-->
				<br>

				<!-- </div> -->

				
			</div>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<br>
					<div class="black_box">
						<!-- black box start-->

						<h1 class="modal_heading">BOOKING SUMMARY</h1>
						<br>

						<div class="row margin_auto">
							<table class="table table-bordered booking_summary_table">
								<tbody>
									<tr>
										<td style="border: 1px solid #595959;">Compartment - SCR</td>
										<td style="border: 1px solid #595959;">2 Seats X
											Rs.600.00</td>
									</tr>

									<tr>
										<td colspan="2"
											style="text-align: center; border: 1px solid #595959;">GRAND
											TOTAl - Rs. 1200.00</td>
									</tr>
								</tbody>
							</table>
						</div>

						<p style="text-align: center;"></p>

						<br>
						<div class="center-block text-center">
							<!--<a href="#myModal15" data-toggle="modal"><button type="submit" class="btn btn-success" style="width: 50%;">PROCEED TO CHECKOUT</button></a>-->
							<%--<a href="step_04.html">--%>
							<%--<button type="submit" class="btn btn-success" style="width: 50%;">PROCEED TO CHECKOUT</button></a>--%>

							<form method="post" action="reservation">
								<input type="submit" class="btn btn-success" style="width: 50%;"
									value="PROCEED TO CHECKOUT" />
							</form>
						</div>
						<br>

					</div>
					<!-- black box end-->
					<br>

				</div>

			<!--seat booking section-->

			<!--seat booking section-->


		</div>


		<!--check availability-->

		<!--=============================================-->
		<!--===================body====================-->


		<!--================modal===================-->

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
									<a href=""> <img src="images/fb.png" alt="abmiddle"
										class=""> &nbsp;
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
		<input type="hidden" value="${returnChecked}" name="returnChecked"
			id="returnChecked">
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

		<!--====================================-->


		<!--=============================================-->
		<!--===================footer====================-->

		<div class="row margin_auto footer_bar inner_footer_bar">

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


		<!--return show/hide -->
		<script type="text/javascript">
			function showhide_return(value) {
				if (value == 'Y') {
					$("#return_block").show();
				} else {
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



		<!-- date picker -->
		<script type="text/javascript"
			src="js/datepicker/bootstrap-datepicker.min.js"></script>
		<script>
			$('#datepicker1').datepicker();
			$('#datepicker1').on(
					"changeDate",
					function() {
						$('#my_hidden_input').val(
								$('#datepicker3')
										.datepicker('getFormattedDate'));
					});

			$('#datepicker1').datepicker({
				autoclose : true,
			});

			$('#datepicker1').on('changeDate', function() {
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
		<script type="text/javascript">
			var numberOfGroups = 2;
			var widthOfAGroup = 300;
			var topBoxWidth = 80;
			//	document.getElementById("seats-div-1").style.width = (topBoxWidth + numberOfGroups*widthOfAGroup)+'px';
			document.getElementById("seats-div-1").style.width = 'auto';
			document.getElementById("seats-div-2").style.width = 'auto';

			if ($('#returnChecked').val() == '1') {
				console.log('value read');
				$('#returnSeatPlan').css('display', 'block');
			}

			function changeSeatStatus(id) {
				var elementOfclass = document.getElementById(id);
				var classNames = elementOfclass.className;
				if (classNames.includes("available-seat")) {
					console.log("available-seat");
					elementOfclass.classList.remove("available-seat");
					elementOfclass.classList.add("selected-seat");
				} else if (classNames.includes("selected-seat")) {
					console.log("selected-seat");
					elementOfclass.classList.add("available-seat");
					elementOfclass.classList.remove("selected-seat");
				}
			}

			function changeSeatStatusReturn(id) {
				var elementOfclass = document.getElementById(id);
				var classNames = elementOfclass.className;
				if (classNames.includes("available-seat-return")) {
					console.log("available-seat-return");
					elementOfclass.classList.remove("available-seat-return");
					elementOfclass.classList.add("selected-seat-return");
				} else if (classNames.includes("selected-seat-return")) {
					console.log("selected-seat-return");
					elementOfclass.classList.add("available-seat-return");
					elementOfclass.classList.remove("selected-seat-return");
				}
			}
		</script>
		<!--popover style-->
</body>
</html>

