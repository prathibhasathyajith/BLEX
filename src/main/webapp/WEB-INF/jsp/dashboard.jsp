<!DOCTYPE html>
<html lang="en">
<head>

<!--tag lib-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--tag lib-->

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

<!--Date Picker-->
<link rel="stylesheet" type="text/css"
	href="css/datepicker/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" type="text/css"
	href="css/datepicker/bootstrap-datepicker3.standalone.min.css" />
<!--Date Picker end-->

<!--media query css-->
<link href="css/mediaquery.css" rel="stylesheet" type="text/css"
	media="screen">
<!--media query css-->

<!--table css-->
<link href="css/table_style.css" rel="stylesheet" type="text/css"
	media="screen">
<link href="css/dataTables.responsive.css" rel="stylesheet"
	type="text/css" media="screen">
<!--table css-->

<!--price slider-->
<link href="css/bootstrap-slider.css" rel="stylesheet">
<script type='text/javascript' src="js/modernizr.js"></script>
<!--price slider-->


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

<!--scroll bar style-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

.btn-arrow-right,.btn-arrow-left {
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

.btn-arrow-right:before,.btn-arrow-right:after,.btn-arrow-left:before,.btn-arrow-left:after
	{
	/* make two squares (before and after), looking similar to the button */
	content: "";
	position: absolute;
	top: 5px; /* move it down because of rounded corners */
	width: 22px; /* same as height */
	height: 22px; /* button_outer_height / sqrt(2) */
	background: inherit; /* use parent background */
	border: inherit; /* use parent border */
	border-left-color: transparent; /* hide left border */
	border-bottom-color: transparent; /* hide bottom border */
	border-top-color: transparent;
	border-right-color: transparent;
	border-radius: 0px 4px 0px 0px;
	/* round arrow corner, the shorthand property doesn't accept "inherit" so it is set to 4px */
	-webkit-border-radius: 0px 4px 0px 0px;
	-moz-border-radius: 0px 4px 0px 0px;
}

.btn-arrow-right:before,.btn-arrow-right:after {
	transform: rotate(45deg);
	/* rotate right arrow squares 45 deg to point right */
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
}

.btn-arrow-left:before,.btn-arrow-left:after {
	transform: rotate(225deg);
	/* rotate left arrow squares 225 deg to point left */
	-webkit-transform: rotate(225deg);
	-moz-transform: rotate(225deg);
	-o-transform: rotate(225deg);
	-ms-transform: rotate(225deg);
}

.btn-arrow-right:before,.btn-arrow-left:before {
	/* align the "before" square to the left */
	left: -11px;
}

.btn-arrow-right:after,.btn-arrow-left:after {
	/* align the "after" square to the right */
	right: -11px;
}

.btn-arrow-right:after,.btn-arrow-left:before {
	/* bring arrow pointers to front */
	z-index: 1;
}

.btn-arrow-right:before,.btn-arrow-left:after {
	/* hide arrow tails background */
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

				<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<p class="language_btn" style="margin-bottom: 0px;">
						<a href="profile.html"><b class="user"><img
								src="images/user_icon.png" alt="abmiddle" class="">
								Welcome, Kamal Perera</b></a>
					</p> -->
				<!-- <p class="language_btn" style="padding-top: 0px;">
						<a href=""><img src="images/eng.png" alt="abmiddle"></a> <a
							href=""><img src="images/sinhala.png" alt="abmiddle"></a> <a
							href=""><img src="images/tamil.png" alt="abmiddle"></a>
					</p> -->
				<!-- 	</div> -->

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

					<form action="dashboard" method="post">

						<div class="row">

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<!-- <div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect4"
										name="fromSt">
										<option value="a">-- SELECT FROM STATION --</option>

									</select>
								</div> -->
								<div class="form-group has-feedback">
									<div class="dropdown">
										<input type='text' placeholder="FROM *"
											class="menu_widget btn btn-secondary dropdown-toggle "
											style="width: 100%; text-align: left; border: 1px solid #b5b5b5; font-weight: 100;"
											id="fromSt" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" required>
										<ul id="from_st_list" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenuButton"
											style="max-height: 250px; overflow: auto; width: 100%;"></ul>
										<!-- <div class="form-control dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Sri Lanka</a> 
										<a class="dropdown-item" href="#">India</a> 
										<a class="dropdown-item" href="#">Japan</a>
									</div> -->
									</div>
								</div>
							</div>
							<input type="hidden" id="fromStID" name="fromSt">
							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<!-- <div class="form-group has-feedback">
									<select class="form-control" id="exampleFormControlSelect5"
										name="toSt">
										<option value="b">-- SELECT TO STATION --</option>

									</select>
								</div> -->
								<div class="form-group has-feedback">
									<div class="dropdown">
										<input type='text' placeholder="TO *"
											class="menu_widget btn btn-secondary dropdown-toggle "
											style="width: 100%; text-align: left; border: 1px solid #b5b5b5; font-weight: 100;"
											id="toSt" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" required>
										<ul id="to_st_list" class="dropdown-menu" role="menu"
											aria-labelledby="dropdownMenuButton"
											style="max-height: 250px; overflow: auto; width: 100%;"></ul>
										<!-- <div class="form-control dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a class="dropdown-item" href="#">Sri Lanka</a> 
										<a class="dropdown-item" href="#">India</a> 
										<a class="dropdown-item" href="#">Japan</a>
									</div> -->
									</div>
								</div>
							</div>
							<input type="hidden" id="toStID" name="toSt">
							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<input type="text" class="form-control form-control_my date"
										id="datepicker1" placeholder="DATE *" name="depDate"
										value="28-FEB-2018" required /> <i
										class="glyphicon glyphicon-calendar form-control-feedback"></i>
								</div>
							</div>

							<!--=========================-->

							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
								<div class="form-group has-feedback">
									<input type="number" class="form-control" id="usr"
										placeholder="NUMBER OF PASSENGER " name="noOfUsers"> <i
										class="glyphicon glyphicon-user form-control-feedback"></i>
								</div>
							</div>

							<!--=========================-->


							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"
								style="margin-top: 27px; margin-bottom: 27px;">
								<div class="form-group radio_button_div">

									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 center-block">
										<input type="radio" id="a-option" name="isReturn"
											checked="checked" onclick="showhide_return(this.value);"
											value="N"> <label class="radio-inline" for="a-option">ONE
											WAY</label>
										<div class="check"></div>
									</div>

									<div class="col-lg-5 col-md-5 col-sm-5 col-xs-12 center-block">
										<input type="radio" id="e-option" name="isReturn"
											checked="checked" onclick="showhide_return(this.value);"
											value="Y"> <label class="radio-inline" for="e-option">RETURN</label>
										<div class="check"></div>
									</div>

								</div>
							</div>

							<!--=========================-->


							<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"
								id="return_block">
								<div class="form-group has-feedback">
									<input type="text" class="form-control form-control_my date"
										id="datepicker2" placeholder="RETURN DATE "> <i
										class="glyphicon glyphicon-calendar form-control-feedback"></i>
								</div>
							</div>

							<!--=========================-->


						</div>


						<div class="clearfix"></div>

						<!--=========================-->

						<div class="row margin_auto">

							<div class="center-block text-center">
								<input type="submit" class="btn btn-success" value="SEARCH" />
								<input type="reset" class="btn btn-success" value="RESET" />
							</div>

						</div>

						<!--=========================-->

					</form>

					<br>

				</div>
				<!-- black box end-->
				<div style="color: #FFFF" align="center">
					<a href="" class="btn btn-arrow-right" style="color: #17202A">Home</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Check Availability</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Seat Plan</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Reservation</a>
					&nbsp;&nbsp;<a href="" class="btn btn-arrow-right" style="color: #17202A">Summary</a>
				</div>

			</div>

		</div>
		<!--check availability section-->

		<div class="clearfix"></div>

		<br> <br>

		<!--section-->
		<!-- 	<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 check_div">

			<div class="black_box">
				black box start
				<br>
				<form>

					=========================

					<div class="row margin_auto">

						<div class="examples">
							<div class='slider-example'>
								<div class="well">
									PRICE RANGE: <br> <b>Rs 10</b> <input id="ex2" type="text"
										class="span2" value="" data-slider-min="10"
										data-slider-max="1000" data-slider-step="5"
										data-slider-value="[250,450]" /> <b>Rs 1000</b>
								</div>
							</div>
						</div>
						/examples


					</div>

					=========================

					<div class="row margin_auto">
						<div class="form-group has-feedback">
							<select class="form-control" id="exampleFormControlSelect1">
								<option>COMPARTMENT TYPE</option>
								<option>FIRST CLASSY</option>
								<option>SECOND CLASS</option>
								<option>THIRD CLASS</option>
							</select>
						</div>
					</div>

					=========================

					<div class="row margin_auto">
						<div class="form-group has-feedback">
							<select class="form-control" id="exampleFormControlSelect2">
								<option>-SELECT PERIOD-</option>
								<option>00-04</option>
								<option>04-08</option>
								<option>08-12</option>
								<option>12-16</option>
								<option>16-20</option>
								<option>20-00</option>

							</select>
						</div>
					</div>

					=========================

					<div class="row margin_auto">

						<div
							class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center-block button_div2">
							<button type="submit" class="btn btn-default"
								style="width: 100%;">FILTER</button>
						</div>

					</div>

					=========================

				</form>

				<br>


			</div>
			black box end


		</div> -->
		<!--section-->




		<!--=======================================-->

		<!--table-->
		<div
			class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div hidden-xs"
			id="data_table">
			<br class="hidden-lg hidden-md"> <br class="hidden-lg hidden-md">
			<!-- <div class="row">
				<div class="col-sm-12" style="color: blue;"></div>
			</div> -->

			<!-- 	<div class="row">
				<div class="col-sm-12" style="background-color: blue;"></div>

			</div>
 -->
			<table id="example"
				class="table table-striped table-bordered data_table"
				cellspacing="0" width="100%">

				<thead>
					<tr>
						<th>Train</th>
						<th>departs</th>
						<th>Arrives</th>
						<th>Class</th>
						<th>Available</th>
						<th>Price Rs.</th>
						<th>Select Train</th>
					</tr>
				</thead>
				<tbody>



					<!-- Commented by Malitha for BLE testing on 20190322 -->
					<%-- 	<c:forEach items="${trainRowForward}" var="train">
						<tr>
							<td>${train.name}<br> (${train.code})
								${train.fromStation} - <br>${train.toStation} <br>
								${train.sourceFromTime} - ${train.endToTime}
							</td>
							<td>${train.dTime}</td>
							<td>${train.aTime}</td>
							<td>${train.classCode}</td>
							<td>${train.available}</td>
							<td>${train.price}</td>
							<td>
								<form method="post" action="seatplan">
									<input type="submit" class="btn btn-default train_select_btn"
										style="width: 100%; margin-bottom: 4px;" value="Select" />
								</form>
							</td>
						</tr>
					</c:forEach> --%>

					<tr class="border_none">
						<td>1009 Royal Saloon<br> (5555) Colombo Fort - <br>Kandy
							<br> 07:00 - 09:34
						</td>
						<td>7.00</td>
						<td>21.34</td>
						<td>BLR</td>
						<td>16</td>
						<td>1200.00</td>
						<td>
							<form action="seatplan" method="post">
								<input type="hidden" value="${returnChecked}"
									name="returnChecked" id="returnChecked"> <input
									type="submit" class="btn btn-default train_select_btn"
									style="width: 100%; margin-bottom: 4px;" value="Select" />
							</form>
						</td>
					</tr>

					<tr class="border_none">
						<td>1029 Royal Saloon<br> (1111) Colombo Fort – <br>Kandy
							<br> 15:35 - 18:08
						</td>
						<td>7.30</td>
						<td>18.08</td>
						<td>BLR</td>
						<td>32</td>
						<td>1200.00</td>
						<td>
							<form action="seatplan" method="post">
								<input type="hidden" value="${returnChecked}"
									name="returnChecked" id="returnChecked"> <input
									type="submit" class="btn btn-default train_select_btn"
									style="width: 100%; margin-bottom: 4px;" value="Select" />
							</form>
						</td>
					</tr>


					<%-- <tr class="border_none">
					<td>TExpress Train <br> (1006) Fort – <br>Badulla <br>
					07:30-18:30
					</td>
					<td>7.30 AM</td>
					<td>18.50 PM</td>
					<td>3rd Class</td>
					<td>40</td>
					<td>500.00</td>
					<td>
					<form action="#" th:action="@{/seatplan}"
					th:object="${searchInfo}" method="post">
					<input type="submit" class="btn btn-default train_select_btn"
					style="width: 100%; margin-bottom: 4px;" value="Select" />
					</form>
					</td>
					</tr>  --%>


					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>

					<%--<tr>--%>
					<%--<td>TExpress Train <br> (1006) Fort –Badulla <br>--%>
					<%--07:30-18:30--%>
					<%--</td>--%>
					<%--<td>7.30 AM</td>--%>
					<%--<td>18.50 PM</td>--%>
					<%--<td>61</td>--%>
					<%--<td>2011/04/25</td>--%>
					<%--<td>1250.00</td>--%>
					<%--<td>--%>
					<%--<form action="#" th:action="@{/seatplan}"--%>
					<%--th:object="${searchInfo}" method="post">--%>
					<%--<input type="submit" class="btn btn-default train_select_btn"--%>
					<%--style="width: 100%; margin-bottom: 4px;" value="Select" />--%>
					<%--</form>--%>
					<%--</td>--%>
					<%--</tr>--%>


				</tbody>
			</table>

		</div>

		<%-- <div
			class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div hidden-xs"
			id="data_table_1" style="display: none">
			<br class="hidden-lg hidden-md"> <br class="hidden-lg hidden-md">
			
			<table 
				class="table table-striped table-bordered data_table"
				cellspacing="0" width="100%" >

				<thead>
					<tr>
						<th>Train Name</th>
						<th>departs</th>
						<th>Arrives</th>
						<th>Class</th>
						<th>Available</th>
						<th>Price Rs.</th>
						<th>Select Train</th>
					</tr>
				</thead>
				<tbody>



					<!-- Commented by Malitha for BLE testing on 20190322 -->
						<c:forEach items="${trainRowForward}" var="train">
						<tr>
							<td>${train.name}<br> (${train.code})
								${train.fromStation} - <br>${train.toStation} <br>
								${train.sourceFromTime} - ${train.endToTime}
							</td>
							<td>${train.dTime}</td>
							<td>${train.aTime}</td>
							<td>${train.classCode}</td>
							<td>${train.available}</td>
							<td>${train.price}</td>
							<td>
								<form method="post" action="seatplan">
									<input type="submit" class="btn btn-default train_select_btn"
										style="width: 100%; margin-bottom: 4px;" value="Select" />
								</form>
							</td>
						</tr>
					</c:forEach>

					<tr class="border_none">
						<td>1009 Royal Saloon<br> (5555) Colombo Fort - <br>Kandy
							<br> 07:00 - 09:34
						</td>
						<td>7.00</td>
						<td>21.34</td>
						<td>BLR</td>
						<td>16</td>
						<td>1200.00</td>
						<td>
							<form action="seatplan" method="post">
							<input type="hidden" value="${returnChecked}" name="returnChecked"
				id="returnChecked">
								<input type="submit" class="btn btn-default train_select_btn"
									style="width: 100%; margin-bottom: 4px;" value="Select" />
							</form>
						</td>
					</tr>

					<tr class="border_none">
						<td>1029 Royal Saloon<br> (1111) Colombo Fort – <br>Kandy
							<br> 15:35 - 18:08
						</td>
						<td>7.30</td>
						<td>18.08</td>
						<td>BLR</td>
						<td>32</td>
						<td>1200.00</td>
						<td>
							<form action="seatplan" method="post">
							<input type="hidden" value="${returnChecked}" name="returnChecked"
				id="returnChecked">
								<input type="submit" class="btn btn-default train_select_btn"
									style="width: 100%; margin-bottom: 4px;" value="Select" />
							</form>
						</td>
					</tr>


				</tbody>
			</table>



		</div> --%>
		<!--table end-->


		<div id="example_wrapper_1" style="display: none"
			class="dataTables_wrapper form-inline dt-bootstrap no-footer">
			<div class="row">
				<div class="col-sm-6">
					<div class="dataTables_length" id="example_length">
						<label>Show <select name="example_length"
							aria-controls="example" class="form-control input-sm"><option
									value="10">10</option>
								<option value="25">25</option>
								<option value="50">50</option>
								<option value="100">100</option></select> entries
						</label>
					</div>
				</div>
				<div class="col-sm-6">
					<div id="example_filter" class="dataTables_filter">
						<label>Search:<input type="search"
							class="form-control input-sm" placeholder=""
							aria-controls="example"></label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<table id="example"
						class="table table-striped table-bordered data_table nowrap dataTable no-footer dtr-inline"
						cellspacing="0" width="100%" role="grid"
						aria-describedby="example_info" style="width: 100%;">

						<thead>
							<tr role="row">
								<th class="sorting_asc" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 213px;"
									aria-sort="ascending"
									aria-label="Train: activate to sort column descending">Train</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 92px;"
									aria-label="departs: activate to sort column ascending">departs</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 88px;"
									aria-label="Arrives: activate to sort column ascending">Arrives</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 72px;"
									aria-label="Class: activate to sort column ascending">Class</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 108px;"
									aria-label="Available: activate to sort column ascending">Available</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 98px;"
									aria-label="Price Rs.: activate to sort column ascending">Price
									Rs.</th>
								<th class="sorting" tabindex="0" aria-controls="example"
									rowspan="1" colspan="1" style="width: 0px;"
									aria-label="Select Train: activate to sort column ascending">Select
									Train</th>
							</tr>
						</thead>
						<tbody>
							<tr class="border_none odd" role="row">
								<td tabindex="0" class="sorting_1">1009 Royal Saloon<br>
									(5555) Colombo Fort - <br>Kandy <br> 07:00 - 09:34
								</td>
								<td>7.00</td>
								<td>21.34</td>
								<td>BLR</td>
								<td>16</td>
								<td>1200.00</td>
								<td style="">
									<form action="seatplan" method="post">
										<input type="hidden" value="${returnChecked}"
											name="returnChecked" id="returnChecked"> <input
											type="submit" class="btn btn-default train_select_btn"
											style="width: 100%; margin-bottom: 4px;" value="Select">
									</form>
								</td>
							</tr>
							<tr class="border_none even" role="row">
								<td tabindex="0" class="sorting_1">1029 Royal Saloon<br>
									(1111) Colombo Fort â€“ <br>Kandy <br> 15:35 - 18:08
								</td>
								<td>7.30</td>
								<td>18.08</td>
								<td>BLR</td>
								<td>32</td>
								<td>1200.00</td>
								<td style="">
									<form action="seatplan" method="post">
										<input type="hidden" value="${returnChecked}"
											name="returnChecked" id="returnChecked"> <input
											type="submit" class="btn btn-default train_select_btn"
											style="width: 100%; margin-bottom: 4px;" value="Select">
									</form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5">
					<div class="dataTables_info" id="example_info" role="status"
						aria-live="polite">Showing 1 to 2 of 2 entries</div>
				</div>
				<div class="col-sm-7">
					<div class="dataTables_paginate paging_simple_numbers"
						id="example_paginate">
						<ul class="pagination">
							<li class="paginate_button previous disabled"
								id="example_previous"><a href="#" aria-controls="example"
								data-dt-idx="0" tabindex="0">Previous</a></li>
							<li class="paginate_button active"><a href="#"
								aria-controls="example" data-dt-idx="1" tabindex="0">1</a></li>
							<li class="paginate_button next disabled" id="example_next"><a
								href="#" aria-controls="example" data-dt-idx="2" tabindex="0">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</div>


	<!--check availability-->


	<!--=============================================-->
	<!--===================body====================-->




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
						href="termsandconditions.html" style="color: #FFF">Terms &
						condition</a>
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





	<!-- date picker -->
	<script type="text/javascript"
		src="js/datepicker/bootstrap-datepicker.min.js"></script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>

	<!-- <script type="text/javascript">
		$.ajax({
			type : 'POST',
			url : 'api/fromStation/',
			contentType : "application/json",
			dataType : 'json',
			async : false,
			success : function(data) {
				$.each(data, function(i, obj) {
					var div_data = "<option value="+obj.stationID+">"
							+ obj.stationName + "</option>";

					$(div_data).appendTo('#exampleFormControlSelect4');
					$(div_data).appendTo('#exampleFormControlSelect5');
				});

			}

		});
	</script> -->
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


	<!--query table-->
	<script>
		$(document).ready(function() {
			console.log('val' + $("#returnChecked").val());
			/* 	console.log('attr' + $("#returnChcked").attr('value')); */
			if ($('#returnChecked').val() == '1') {

				$('#example_wrapper_1').css('display', 'block');
			}

			$('#example').addClass('nowrap').dataTable({
				responsive : true
			});
		});
	</script>

	<script src="js/table/jquery-1.12.4.js"></script>
	<script src="js/table/jquery.dataTables.min.js"></script>
	<script src="js/table/dataTables.bootstrap.min.js"></script>
	<script src="js/table/dataTables.responsive.js"></script>
	<script src="js/load_stations.js"></script>
	<!--query table-->

	<!--price slider-->
	<!-- ================================================== -->
	<script type='text/javascript' src="js/bootstrap-slider.js"></script>
	<script type='text/javascript'>
		$(document).ready(function() {
			/* Example 2 */
			$("#ex2").slider({});
		});
	</script>

	<!--price slider-->


	<!--mobile down script-->
	<script>
		if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i
				.test(navigator.userAgent)) {
			// alert('hello')
			// $("#data_table").scrollTop(500) + " px";
			$('html, body').animate({
				scrollTop : $("#data_table").offset().top
			}, 2000);
		}
	</script>
	<!--mobile down script-->


</body>
</html>

