<?php 
session_start();
include "connection.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <title>Sanggar Bistro Cafe</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
  }

  h1 {
      margin: 20px;
      letter-spacing: 10px;
      font-size: 80px;
      color: #B62511;
          
    }

  h4 {
    margin: 10px 0 30px 0;
    letter-spacing: 2px;      
    font-size: 20px;
  }
  .container {
    padding: 80px 0px;
    margin-left: left;
    margin-right: right;
  }
  .container-fluid {
    margin-left: auto;
    margin-right: auto;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #D34426;
    color: #761401;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #560A02;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #8e1e07;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  .nav-tabs li a {
    color: #B62511;
  }
  .navbar {
    font-family: Montserrat, sans-serif;
    margin-bottom: 0;
    background-color: #741a0d;
    border: 0;
    font-size: 15px !important;
    letter-spacing: 6px;
    opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
    color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
    color: #fff !important;
  }
  .navbar-nav li.active a {
    color: #fff !important;
    background-color: #B62511 !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
  }
  .open .dropdown-toggle {
    color: #fff;
    background-color: #555 !important;
  }
  .dropdown-menu li a {
    color: #000 !important;
  }
  .dropdown-menu li a:hover {
    background-color: red !important;
  }
  footer {
    background-color: #2d2d30;
    color: #f5f5f5;
    padding: 32px;
  }
  footer a {
    color: #f5f5f5;
  }
  footer a:hover {
    color: #777;
    text-decoration: none;
  }  
  .form-control {
    border-radius: 0;
  }
  textarea {
    resize: none;
  }
  th {
    background-color: brown;
    color: black;
  }
  table, th, td {
    border: 5px solid #fff;
    width: 900px;
  }
         .table_reservation_section
        {
            margin-top: -50px;
            margin-bottom: -100px;
     
        }

        .check_availability_submit
        {
            background: #ffc851;
            color: white;
            border-color: #ffc851;
            font-family: work sans,sans-serif;
        }
        .client_details_tab  .form-control
        {
            background-color: #fff;
            border-radius: 0;
            padding: 25px 10px;
            box-shadow: none;
            border: 2px solid #eee;
        }

        .client_details_tab  .form-control:focus 
        {
            border-color: #ffc851;
            box-shadow: none;
            outline: none;
        }
        .text_header
        {
            margin-bottom: 5px;
            font-size: 18px;
            font-weight: bold;
            line-height: 1.5;
            margin-top: 22px;
            text-transform: capitalize;
        }
        .text_header_l
        {
            margin-bottom: 5px;
            font-size: 18px;
            font-weight: bold;
            margin-right: 10px;
            line-height: 2.5;
            margin-top: -70px;
            text-transform: capitalize;
        }
        .layer
        {
            height: 100%;
        background: -moz-linear-gradient(top, rgba(45,45,45,0.4) 0%, rgba(45,45,45,0.9) 100%);
    background: -webkit-linear-gradient(top, rgba(45,45,45,0.4) 0%, rgba(45,45,45,0.9) 100%);
    background: linear-gradient(to bottom, rgba(45,45,45,0.4) 0%, rgba(45,45,45,0.9) 100%);
        }

    </style>
</head>

<body id="sanggarBistro" data-spy="scroll" data-target=".navbar" data-offset="50">

    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <img src="Image/restaurant-image.png" alt="logo" style="height: 70px; width: 85px;">
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-left">
                    <li><a onclick="location.href='homepageCust.php'">HOMEPAGE</a></li>
                    <li><a onclick="location.href='about.php'">ABOUT US</a></li>
                    <li><a onclick="location.href='tableCust.php'">MENU</a></li>
                    <li><a onclick="location.href='cart.php'">CART</a></li>
                    <li><a onclick="location.href='table-reservation.php'">RESERVED TABLE</a></li>
                </ul>
            </div>
        </div>
    </nav>

       <div id="about" class="container text-center">
        <h4>RESERVED TABLE</h4>
        <section class="table_reservation_section">

            <div class="container">
                <?php
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}


if(isset($_POST['submit_table_reservation_form']) && $_SERVER['REQUEST_METHOD'] === 'POST')
{
    $selected_date = $_POST['selected_date'];
    $selected_time = $_POST['selected_time'];
    
    $desired_date = $selected_date." ".$selected_time;

    $number_of_guests = $_POST['number_of_guests'];

    $table_id = $_POST['table_id'];

    $client_full_name = test_input($_POST['client_full_name']);
    $client_phone_number = test_input($_POST['client_phone_number']);

    $conn->begin_transaction();
    try
    {
        $stmtgetCurrentClientID = $conn->prepare("SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'sanggardb' AND TABLE_NAME = 'clients'");
        $stmtgetCurrentClientID->execute();
        $result = $stmtgetCurrentClientID->get_result();
        $client_id = $result->fetch_array()[0];

        $stmtClient = $conn->prepare("INSERT INTO clients (client_name, client_phone) VALUES (?, ?)");
        $stmtClient->bind_param("ss", $client_full_name, $client_phone_number);
        $stmtClient->execute();

        $stmt_reservation = $conn->prepare("INSERT INTO reservations (date_created, client_id, selected_time, nbr_guests, table_id) VALUES (?, ?, ?, ?, ?)");
        $date_created = date("Y-m-d H:i");
        $stmt_reservation->bind_param("sssss", $date_created, $client_id, $desired_date, $number_of_guests, $table_id);
        $stmt_reservation->execute();

        echo "<div class='alert alert-success'>Great! Your Reservation has been created successfully.</div>";

        $conn->commit();
    }
    catch(Exception $e)
    {
        $conn->rollback();
        echo "<div class='alert alert-danger'>" . $e->getMessage() . "</div>";
    }
}
?>

                <div class="text_header">
                    <h2><em>Select Date & Time</em></h2>
                </div>
                <form method="POST" action="table-reservation.php">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="form-group">
                                <label for="reservation_date">Date</label>
                                <input type="date" min="<?php echo (isset($_POST['reservation_date']))?$_POST['reservation_date']:date('Y-m-d',strtotime("+1day"));  ?>" value="<?php echo (isset($_POST['reservation_date']))?$_POST['reservation_date']:date('Y-m-d',strtotime("+1day"));  ?>" class="form-control" name="reservation_date">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="form-group">
                                <label for="reservation_time">Time</label>
                                <input type="time" id="reservation_time" value="<?php echo (isset($_POST['reservation_time']))?$_POST['reservation_time']:date('H:i');  ?>" class="form-control" name="reservation_time">
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="form-group">
                                <label for="number_of_guests">How many people?</label>
                                <select class="form-control" name="number_of_guests" required>
                                    <option value="" <?php echo (isset($_POST['number_of_guests']))?"selected":"";  ?>>Please Select!</option>
                                    <option value="1" <?php echo (isset($_POST['number_of_guests']))?"selected":"";  ?>>One person</option>
                                    <option value="2" <?php echo (isset($_POST['number_of_guests']))?"selected":"";  ?>>Two people</option>
                                    <option value="3" <?php echo (isset($_POST['number_of_guests']))?"selected":"";  ?>>Three people</option>
                                    <option value="4" <?php echo (isset($_POST['number_of_guests']))?"selected":"";  ?>>Four people</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6">
                            <div class="form-group">
                                <label for="check_availability" style="visibility: hidden;">Check Availability</label>
                                <input type="submit" class="form-control check_availability_submit" name="check_availability_submit">
                            </div>
                        </div>
                    </div>
                </form>

                <!-- CHECKING AVAILABILITY OF TABLES -->

                <?php
require 'connection.php'; 

if (isset($_POST['check_availability_submit'])) {
    $selected_date = $_POST['reservation_date'];
    $selected_time = $_POST['reservation_time'];
    $number_of_guests = $_POST['number_of_guests'];

    $stmt = $conn->prepare("SELECT table_id
                            FROM tables
                            WHERE table_id NOT IN (SELECT t.table_id
                                                   FROM tables t, reservations r
                                                   WHERE t.table_id = r.table_id
                                                   AND DATE(r.selected_time) = ?
                                                   AND liberated = 0
                                                   AND canceled = 0)");

    $stmt->bind_param("s", $selected_date);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 0) {
        ?>
                <div class="error_div">
                    <span class="error_message" style="font-size: 16px">ALL TABLES ARE RESERVED</span>
                </div>
                <?php
    } else {
        $row = $result->fetch_assoc();
        $table_id = $row['table_id'];
        ?>
                <div class="text_header">
                    <span>
                        2. Client details
                    </span>
                </div>
                <form method="POST" action="table-reservation.php">
                    <input type="hidden" name="selected_date" value="<?php echo $selected_date ?>">
                    <input type="hidden" name="selected_time" value="<?php echo $selected_time ?>">
                    <input type="hidden" name="number_of_guests" value="<?php echo $number_of_guests ?>">
                    <input type="hidden" name="table_id" value="<?php echo $table_id ?>">
                    <div class="client_details_tab">
                        <div class="form-group colum-row row">
                            <div class="col-sm-12">
                                <input type="text" name="client_full_name" id="client_full_name" oninput="document.getElementById('required_fname').style.display = 'none'" onkeyup="this.value=this.value.replace(/[^\sa-zA-Z]/g,'');" class="form-control" placeholder="Full name" required>
                                <div class="invalid-feedback" id="required_fname">
                                    Invalid Name!
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <input type="text" name="client_phone_number" id="client_phone_number" oninput="document.getElementById('required_phone').style.display = 'none'" class="form-control" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" placeholder="Phone number" required>
                                <div class="invalid-feedback" id="required_phone">
                                    Invalid Phone number!
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submit_table_reservation_form" class="btn btn-info" value="Make a Reservation">
                    </div>
                </form>
                <?php
    }

    $stmt->close();
}

$conn->close();
?>
            </div>
        </section>
    </div>

    <!-- Container (Contact Section) -->
    <form action="addComment.php" method="post">
        <div id="contact" class="container">
            <h3 class="text-center">Contact</h3>
            <p class="text-center"><em>Any Suggestion? Let us know!</em></p>

            <div class="row">
                <div class="col-md-4">
                    <p>Need more information? Contact us on:</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span>17, Jalan Universiti 6, 86400 Parit Raja, Johor</p>
                    <p><span class="glyphicon glyphicon-phone"></span> Phone: +6011-2672 4577</p>
                    <p><span class="glyphicon glyphicon-envelope"></span> Email: sanggarBistro@gmail.com</p>
                </div>
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="suggestion" name="suggestion" placeholder="Suggestion" rows="5"></textarea>
                    <br>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <button class="btn pull-right" name="sent" type="submit">Send</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>



    <!-- Footer -->
    <footer class="text-center">
        <a class="up-arrow" href="#sanggarBistro" data-toggle="tooltip" title="TO TOP">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a><br><br>
        <p>For More Information: <a href="https://www.facebook.com/sanggarbistro/?locale=ms_MY" data-toggle="tooltip" title="More info about Sanggar Bistro">Click Here</a></p>
    </footer>

    <script>
        $(document).ready(function() {
            $('[data-toggle="tooltip"]').tooltip();

            $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

                if (this.hash !== "") {

                    event.preventDefault();

                    var hash = this.hash;

  
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function() {

                        window.location.hash = hash;
                    });
                } 
            });
        })

        var currentTime = new Date();
  var hours = currentTime.getHours();
  var minutes = currentTime.getMinutes();

  var formattedTime = (hours < 10 ? '0' : '') + hours + ':' + (minutes < 10 ? '0' : '') + minutes;

  document.getElementById('reservation_time').value = formattedTime;

        var modalparent = document.getElementsByClassName("modal_multi");


        var modal_btn_multi = document.getElementsByClassName("myBtn_multi");

        var span_close_multi = document.getElementsByClassName("close_multi");

        function setDataIndex() {

            for (i = 0; i < modal_btn_multi.length; i++) {
                modal_btn_multi[i].setAttribute('data-index', i);
                modalparent[i].setAttribute('data-index', i);
                span_close_multi[i].setAttribute('data-index', i);
            }
        }



        for (i = 0; i < modal_btn_multi.length; i++) {
            modal_btn_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "block";
            };

            span_close_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "none";
            };

        }

        for (i = 0; i < modal_btn_multi.length; i++) {
            modal_btn_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "block";
            };

            span_close_multi[i].onclick = function() {
                var ElementIndex = this.getAttribute('data-index');
                modalparent[ElementIndex].style.display = "none";
            };

        }

        window.onload = function() {

            setDataIndex();
        };

        window.onclick = function(event) {
            if (event.target === modalparent[event.target.getAttribute('data-index')]) {
                modalparent[event.target.getAttribute('data-index')].style.display = "none";
            }

            // OLD CODE
            if (event.target === modal) {
                modal.style.display = "none";
            }
        };
    </script>

</body>

</html>