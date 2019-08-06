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
    <link href="css/train_seat_css.css" rel="stylesheet" type="text/css" media="screen">

    <link href="css/train_seat_inner_page_css.css" rel="stylesheet" type="text/css" media="screen">
    <!--main css-->

    <!--media query css-->
    <link href="css/mediaquery.css" rel="stylesheet" type="text/css" media="screen">
    <!--media query css-->

    <!--table css-->
    <link href="css/table_style.css" rel="stylesheet" type="text/css" media="screen">
    <link href="css/dataTables.responsive.css" rel="stylesheet" type="text/css" media="screen">
    <!--table css-->

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


  </head>
  <body class="inner_page_bg">



  <!--=============================================-->
  <!--===================header====================-->

<div class="row margin_auto header_bar">
  <div class="container">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 no_padding">

      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <a href="index.html"><img src="images/logo.png" alt="" class="img-responsive logo"></a>
      </div>

     <!--  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <p class="language_btn"  style="margin-bottom: 0px;">
          <a href="profile.html"><b class="user"><img src="images/user_icon.png" alt="abmiddle" class=""> Welcome, Kamal Perera</b></a>
        </p> -->
    <!--     <p class="language_btn" style="padding-top: 0px;">
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
        &nbsp;
      </div>
    </div>
    <!--logo bar-->

    <br>

    <!--check availability-->

    <div class="container">

      <!--check availability section-->
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 check_div">

        <h1 class="modal_heading" style="margin-top: 0px;">USER PROFILE</h1>
        <br>

        <div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-12 col-xs-12">

          <div class="black_box"><!-- black box start-->

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
              <img src="images/user.png" alt="" class="img-responsive img-circle user_img"><!-- user img-->
            </div>

            <br>

            <form>

              <!--=========================-->

              <div class="row margin_auto">

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="usr" placeholder="USER NAME *" required>
                    <i class="glyphicon glyphicon-user form-control-feedback"></i>
                  </div>
                </div>

                <!--=========================-->

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="usr" placeholder="PHONE *" required>
                    <i class="glyphicon glyphicon-phone form-control-feedback"></i>
                  </div>
                </div>

                <!--=========================-->

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="usr" placeholder="EMAIL *" required>
                    <i class="glyphicon glyphicon-envelope form-control-feedback"></i>
                  </div>
                </div>

                <!--=========================-->

                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                  <div class="form-group has-feedback">
                    <input type="text" class="form-control" id="usr" placeholder="NIC *" required>
                    <i class="glyphicon glyphicon-modal-window form-control-feedback"></i>
                  </div>
                </div>

              </div>

          <!--=========================-->

            <div class="row margin_auto">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 center-block button_div1">
                <div class="center-block text-center">
                  <button type="submit" class="btn btn-success">UPDATE</button>
                </div>
              </div>
            </div>

            <!--=========================-->

            </form>

            <br>

          </div><!-- black box end-->

        </div>

      </div>
      <!--check availability section-->

      <!--=======================================-->

      <!--table-->
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <br>

        <table id="example" class="table table-striped table-bordered data_table" cellspacing="0" width="100%">
          <thead>
          <tr>
            <th>REFFERNCE NO</th>
            <th>TRAIN</th>
            <th>From</th>
            <th>TO</th>
            <th>BOOKING DATE</th>
            <th>No of TICKETS</th>
            <th>CLASS</th>
            <th>AMOUNT</th>
          </tr>
          </thead>
          <tbody>

          <tr>
            <td>5233002</td>
            <td>7862</td>
            <td>Nanu Oya</td>
            <td>Colombo Fort</td>
            <td>25-MAR-2017</td>
            <td>03</td>
            <td>01</td>
            <td>3000</td>
          </tr>

          <tr>
            <td>5232984</td>
            <td>1015</td>
            <td>Colombo Fort</td>
            <td>Nanu Oya</td>
            <td>24-MAR-2017</td>
            <td>04</td>
            <td>03</td>
            <td>1600</td>
          </tr>

        

        

         
          <tr>
            <td>4541953</td>
            <td>1030</td>
            <td>Kandy</td>
            <td>Colombo Fort</td>
             <td>22-DEC-2016</td>
            <td>01</td>
            <td>03</td>
            <td>280</td>
          </tr>

          <tr>
            <td>4155138</td>
            <td>1010</td>
            <td>Kandy</td>
            <td>Colombo Fort</td>
            <td>15-APR-2016</td>
            <td>01</td>
            <td>01</td>
            <td>280</td>
          </tr>

          <tr>
            <td>3951865</td>
            <td>1006</td>
           <td>Nanu Oya</td>
           
            <td>Colombo Fort</td>
             <td>09-JAN-2016</td>
            <td>05</td>
            <td>01</td>
            <td>5000</td>
          </tr>

          <tr>
            <td>3021134</td>
            <td>1006</td>
            <td>Nanu Oya</td>
            <td>Colombo Fort</td>
            <td>14-FEB-2015</td>
            <td>02</td>
            <td>01</td>
            <td>2000</td>
          </tr>



          </tbody>
        </table>

      </div>
      <!--table end-->


    </div>


    <!--check availability-->


  <!--=============================================-->
  <!--===================body====================-->




  <!--=============================================-->
  <!--===================footer====================-->

  <div class="row margin_auto footer_bar inner_footer_bar">

    <div class="container">

      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- <p class="footer_p1">© Sri Lanka Railways, Colombo 10, Sri Lanka  |  Contact Us  | Terms & condition</p> -->
       <p class="footer_p1">
					<a href="aboutus.html" style="color: #FFF">About us</a> | <a
						href="thetrain.html" style="color: #FFF">The Train</a> | <a
						href="contactus.html" style="color: #FFF">Contact Us</a> | <a
						href="faq.html" style="color: #FFF">FAQ</a> | <a 
						href="termsandconditions.html" style="color: #FFF">Terms & condition</a>
				</p>
      </div>

      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <p class="footer_p2">Powered By &nbsp; <a href="http://www.mobitel.lk/" target="_blank"> <img src="images/footer_logo.png" alt="abmiddle"  class="footer_logo" > </a></p>
      </div>

    </div>

  </div>

  <!--=============================================-->
  <!--===================footer====================-->






    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


  <!--query table-->

  <script>
      $(document).ready( function () {
          $('#example')
              .addClass( 'nowrap' )
              .dataTable( {
                  responsive: true
              } );
      } );
  </script>

  <script src="js/table/jquery-1.12.4.js"></script>
  <script src="js/table/jquery.dataTables.min.js"></script>
  <script src="js/table/dataTables.bootstrap.min.js"></script>
  <script src="js/table/dataTables.responsive.js"></script>

  <!--query table-->


  </body>
</html>
