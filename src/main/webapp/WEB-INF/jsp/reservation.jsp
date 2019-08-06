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

<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap -->

<!--main css-->
<link href="css/train_seat_css.css" rel="stylesheet" type="text/css"
	media="screen">

<link href="css/faq.css" rel="stylesheet" type="text/css" media="screen">

<link href="css/payment-methodv2.css" rel="stylesheet" type="text/css">

<link href="css/train_seat_inner_page_css.css" rel="stylesheet"
	type="text/css" media="screen">
<!--main css-->

<!--media query css-->
<link href="css/mediaquery.css" rel="stylesheet" type="text/css"
	media="screen" />
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


.btn-arrow-right,.btn-arrow-left {
	position: relative;
	padding-left: 18px;
	padding-right: 18px;
	background-color: #ABB2B9;
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
	-webkit-transform: rotate(50deg);
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="js/bootbox.js"></script>
<script src="js/bootbox.min.js"></script>

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
                <p class="language_btn"  style="margin-bottom: 0px;">
                    <a href="profile.html"><b class="user"><img src="images/user_icon.png" alt="abmiddle" class=""> Welcome, Kamal Perera</b></a>
                </p> -->
				<!--  <p class="language_btn" style="padding-top: 0px;">
                    <a href=""><img src="images/eng.png" alt="abmiddle"></a>
                    <a href=""><img src="images/sinhala.png" alt="abmiddle"></a>
                    <a href=""><img src="images/tamil.png" alt="abmiddle"></a>
                </p> -->
				<!--  </div> -->

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
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div">

			<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">

				<div class="black_box">
					<!-- black box start-->

					<h1 class="modal_heading">BOOKING SUMMARY</h1>
					<br>

					<div class="row margin_auto">
						<table class="table table-bordered booking_summary_table">
							<tbody>
								<tr>
									<td style="border: 1px solid #595959;">Compartment - SCR</td>
									<td style="border: 1px solid #595959;">2 Seats X Rs.600.00</td>
								</tr>

								<tr>
									<td colspan="2"
										style="text-align: center; border: 1px solid #595959;">GRAND
										TOTAl - Rs. 1200.00</td>
								</tr>
							</tbody>
						</table>
					</div>

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
				
				<br>

				<div class="black_box">
					<!-- black box start-->

					<h1 class="modal_heading">PASSENGER DETAIL</h1>
					<br>

					<div class="row margin_auto">

						<form id="resForm">
							<!--========================================-->

							<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">

								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" id="usr"
											placeholder="PASSENGER NAME *" required> <i
											class="glyphicon glyphicon-user form-control-feedback"></i>
									</div>
								</div>

								<!--========================================-->

								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" id="usr"
											placeholder="PHONE *" required> <i
											class="glyphicon glyphicon-phone form-control-feedback"></i>
									</div>
								</div>

								<!--========================================-->

								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" id="usr"
											placeholder="EMAIL *" required> <i
											class="glyphicon glyphicon-envelope form-control-feedback"></i>
									</div>
								</div>

								<!--========================================-->

								<div class="row margin_auto">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" id="usr"
											placeholder="NIC *" required> <i
											class="glyphicon glyphicon-modal-window form-control-feedback"></i>
									</div>
								</div>
								<br>

								<div align="center">
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target=".bd-example-modal-lg">Terms and Conditions</button>
								</div> 
								<br>
								
								<div style="color: #FFFFFF; font-size: 14px;" align="center">
									<input id="agree" type="checkbox" name="t&c" value="agree">&nbsp;&nbsp;&nbsp;&nbsp;Agree to terms and conditions<br>
								</div>

								 <div class="modal fade bd-example-modal-lg" tabindex="-1"
									role="dialog" aria-labelledby="myLargeModalLabel"
									aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" style="margin-top: 2%">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLongTitle">Modal
													title</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											 <div class="modal-body">
												<h3 class="small_heading">TERMS AND CONDITIONS</h3>

												<h4 class="faq_style">The Blue Train Terms and
													Conditions</h4>
												<h5 class="faq_style">The following booking Terms and
													Conditions will apply to all reservations.</h5>
												<br>
												<h6 class="faq_style">The Blueline Train accepts three
													types of bookings: individual guest, group bookings and
													private charters.</h6>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													1.00 | Reservation confirmation <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>Upon making a reservation, a reference number
																shall be furnished by email message to the client making
																the booking. Clients are requested to supply this
																reference number for ticket printing and any enquiries
																related to their reservation.</li>
															<li>Ticket can be printed at the Sri Lanka Ralways
																ticketing counters and it is recomending to print at the
																counter in departure railway station.</li>
															<li>A reservation only becomes guaranteed once full
																payment has been received.</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													2.00 | Private Charters <font
														style="color: #b2b2b2; font-size: 14px;"> <br>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Charters
														reserved outside of 3 months, deposits required are as
														follows:
														<ul>
															<ul>
																<li>3 (three) months prior to departure, a 20%
																	(twenty per cent)non-refundable, non-transferable
																	deposit is due.</li>
																<li>The balance is due 30 (thirty) days prior to
																	departure</li>
															</ul>
														</ul> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Charters
														reserved within 3 (three) months of travel:
														<ul>
															<ul>
																<li>Immediately after receiving the final quote,
																	client to advise acceptance and confirm with a 50%
																	(fifty per cent)non-refundable, non-transferable
																	deposit.</li>
																<li>The balance is due 30 (thirty) daysprior to
																	departure</li>
															</ul>
														</ul> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Charters
														reserved within 60 (sixty) days of travel:
														<ul>
															<ul>
																<li>Full payment is due immediately upon
																	confirmation of charter.</li>
															</ul>
														</ul>

													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													3.00 | Cancellation policy <font
														style="color: #b2b2b2; font-size: 14px;"> <br>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No
														cancellation will be allowed once a ticket is purchased.
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													4.00 | Liability clause <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>The Blueline Train shall not be held liablefor
																any damages; loss or theft of personal luggage and
																belongings, nor can Blueline Train be held liable for
																personal injury, accident, illness or deathwhile guests
																areon an excursion made available by Blueline Train.</li>
															<li>The Blue Train shall also not be held
																responsible, when circumstances beyond its control lead
																to an interruption, early termination, delay or
																cancellation of any particular trip. Such circumstances
																shall include, but not be limited to instances of vis
																major/force majeureand/or casus fortuitous(natural
																causes such as floods and other natural disasters,
																fortuitous and unforeseen events, etc.).</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													5.00 | Travel conditions <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>The Blueline Train undertakes to use its best
																endeavours to convey the guest/s to the schedule
																destination in accordance with Blueline Train time
																table/schedule, as directed by Sri Lanka Railways.
																Therefore, Blueline Train does not guarantee departure
																or arrival times. Blueline Train hereby advises guests
																not to confirm bookings for flights or make own arranged
																excursions preceding and subsequent to Blueline Train
																trip.</li>
															<li>In the event that Blueline Train service is
																delayed due to unforeseen circumstances,a representative
																from Blueline Train shall inform the guests timeously of
																such delay. Where the guest has been booked via a third
																party, a representative from Blueline Train shall also
																inform the third party of such a delay.</li>
															<li>In the event that Blueline Train fails to
																provide a train trip on a specified or agreed upon date
																and time due to technical or operational failure in the
																Blueline Train compartment and non any other, Shall
																refund to the guest the amount paid to Blueline Train in
																respect of that reservation.</li>
															<li>Guests are requested to check-in minimum 30
																minutes prior to departure.</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													6.00 | Child policy <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>Children from the age of 3 (three) years and
																younger sharing a seat with their parents travel free of
																charge (maximum of 1 (one)children per adult). Due to
																space constraints, Blueline Train will not be able to
																accommodate any additional to accommodate the infant /
																children. Children will have to share the seat with
																their parents / guardians. Should this pose a problem,
																we recommend that guests book an additional seat for the
																children(children's rate applies).</li>
															<li>Children from the age of 3 (three) years and
																older pay full adult rates.</li>
															<li>Blueline Train unfortunately does not serve
																special meals for children and/ or infants.</li>
															<li>Children should be kept under strict adult
																supervision by their parents/ guardians and should not
																inconvenience other guests.</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													7.00 | Dangerous goods <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>For safety reasons,no guestis allowed to bring
																dangerous goods such as firearms, flammable substances,
																fireworks, poisonous or toxic substanceson board.</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													8.00 | Pets <font style="color: #b2b2b2; font-size: 14px;">
														<br>
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No pets
														are allowed onboard.
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													9.00 | Luggage <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>Butlers will store luggage in the Luggage cabin.
																Luggage/baggage stored in the Luggage cabin is subject
																to availability.</li>
															<li>Although great care will be taken to safeguard
																luggage and other belongings, it is recommended that
																luggage be securely locked.</li>
														</ul>
													</font>
												</div>

												<div class="accordion"
													style="color: #FFFFFF; font-size: 14px;">
													10.00 | General <font
														style="color: #b2b2b2; font-size: 14px;">
														<ul>
															<li>These Terms and Conditions shall not be amended
																or waived unless this is done in writing and signed by
																Blueline Train Executive Manager in person.</li>
														</ul>
													</font>
												</div>

												<h4 class="faq_style">The Blue Train Terms and
													Conditions</h4>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div> 
											
										</div>
									</div>
								</div> 
								
								


								<div class="row">
									<div class="paymentCont">
										<!-- <div class="headingWrap">
											
											<p class="text-center">Created with bootsrap button and
												using radio button</p>
										</div> -->
										<div class="paymentWrap">
											<div class="btn-group paymentBtnGroup btn-group-justified"
												data-toggle="buttons">
												<label class="btn paymentMethod active">
													<div class="method visa"></div> <input type="radio"
													name="options" checked>
												</label> <label class="btn paymentMethod">
													<div class="method master-card"></div> <input type="radio"
													name="options">
												</label> <label class="btn paymentMethod">
													<div class="method amex"></div> <input type="radio"
													name="options">
												</label> <label class="btn paymentMethod">
													<div class="method vishwa"></div> <input type="radio"
													name="options">
												</label> <label class="btn paymentMethod">
													<div class="method ez-cash"></div> <input type="radio"
													name="options">
												</label>

											</div>
										</div>
										
									</div>

								</div>

							</div>
						</form>
					</div>

					<br>
				</div>

				<br>

				<div class="row margin_auto">
					<div
						class="col-lg-12 col-md-12 col-sm-6 col-xs-6 center-block button_div1">
						<div class="center-block text-center">
							<button id="btncheckout" type="submit" class="btn btn-success" onclick="agreeFun()">CHECKOUT</button>
						</div>
					</div>
				</div>

				<!--=========================-->

			</div>

		</div>

		<!--check availability section-->

		<!--=======================================-->


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
							$('#datepicker3').datepicker('getFormattedDate'));
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
	<!--popover style-->
	
	<script>
	function agreeFun(){
		if(document.getElementById("agree").checked==true){
			document.getElementById("resForm").submit();
			
		} else{
			alert("Please agree to terms and conditions.");
			document.getElementById("btncheckout").disabled = true;
		}
	}
	</script>
</body>
</html>
