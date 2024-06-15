<?php 
include "connection.php";
session_start();
$db = new mysqli;
$db->connect('localhost','root','','sanggardb');


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
    <link rel="icon" href="Image/restaurant-image.png" type="image/png">
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
            padding: 80px 120px;
            margin-left: auto;
            margin-right: auto;
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
                display: none;
                /* Hide the carousel text when the screen is less than 600 pixels wide */
            }
        }

        .bg-1 {
            background: #D34426;
            color: #761401;
        }

        .bg-1 h3 {
            color: #fff;
        }

        .bg-1 p {
            font-style: italic;
        }

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

        .btn:hover,
        .btn:focus {
            border: 1px solid #333;
            background-color: #fff;
            color: #000;
        }

        .modal-header,
        h4,
        .close {
            background-color: #8e1e07;
            color: #fff !important;
            text-align: center;
            font-size: 30px;
        }

        .modal-header,
        .modal-body {
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

        .navbar li a,
        .navbar .navbar-brand {
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

        table,
        th,
        td {
            border: 5px solid #fff;
            width: 900px;
        }

        .hideme {
            display: none;
            visibility: hidden;
        }

        .showme {
            display: inline;
            visibility: visible;
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
                    <li><a onclick="location.href='cart.php'">CART</a></li>\
                    <li><a onclick="location.href='table-reservation.php'">RESERVED TABLE</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Container (Red Panda Introduction) -->
    <div id="about" class="container text-center">
        <h4>MENU</h4>
        <h4><?php echo $_SESSION['table'];?></h4>
        <?php
    
 $records = mysqli_query($conn, "SELECT * FROM menu");
    
 while($data = mysqli_fetch_array($records))
 {
    ?>
        <div class="row text-center">
            <div>
                <div class="thumbnail">
                    <img src="Image/<?php echo htmlspecialchars($data['IMAGE']); ?>" style="height: 300px; width: 400px;" /><br>
                    <p><strong><?php echo $data['NAME'];?></strong><span class="glyphicon glyphicon-fire"></span></p>
                    <p><?php echo $data['DESC_MENU'];?></p>
                    <p>Price: RM <?php echo $data['PRICE'];?></p>
                    <div style="text-align: center">
                        <form action="add.php" method="post" role="form">
                            <div class="form-group">
                                <input type="text" id="name" name="name" class="hideme" value="<?php echo $data['NAME'];?>">
                                <input type="text" id="price" name="price" class="hideme" value="<?php echo $data['PRICE'];?>">
                                <label for="psw"><span class="glyphicon glyphicon-tags"></span> Quantity</label>
                                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Enter quantity">
                                <input type="text" class="hideme" id="table" name="table" value="<?php echo $_SESSION['table'];?>">
                            </div>
                            <button type="submit" name="send" class="btn btn-block">Add To Cart
                                <span class="glyphicon glyphicon-shopping-cart"></span>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php
}
?>

    </div>

    <?php
function test_input($data) {
    $data = trim($data);          
    $data = htmlspecialchars($data); 
    return $data;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['sent'])) {
    $db = new mysqli('localhost', 'root', '', 'sanggardb');

    if ($db->connect_error) {
        die("Connection failed: " . $db->connect_error);
    }

    $name = test_input($_POST['name']);
    $email = test_input($_POST['email']);
    $comment = test_input($_POST['suggestion']);

    $db->begin_transaction();
    
    try {
        $stmt = $db->prepare("INSERT INTO CONTACT (NAME, EMAIL, SUGGESTION) VALUES (?, ?, ?)");
        
        if ($stmt) {
            $stmt->bind_param("sss", $name, $email, $comment);
            
            if ($stmt->execute()) {
                echo "<div id='success-message' class='alert alert-success' style='text-align: center;'>Great! Your Message has been sent!</div>";
                $db->commit(); 
            } else {
                throw new Exception("Error executing statement: " . $stmt->error);
            }
            
            $stmt->close();
        } else {
            throw new Exception("Error preparing statement: " . $db->error);
        }
    } catch (Exception $e) {
        $db->rollback();
        echo "<div class='alert alert-danger'>" . $e->getMessage() . "</div>";
    }

    $db->close();
}
?>

    <!-- Container (Contact Section) -->
    <form action="menuCust.php" method="POST">
        <div id="contact" class="container">
            <h3 class="text-center">Contact</h3>
            <p class="text-center"><em>Any Suggestion? Let us know!</em></p>

            <div class="row">
                <div class="col-md-4">
                    <p>Need more information? Contact us on:</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span> 17, Jalan Universiti 6, 86400 Parit Raja, Johor</p>
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
            // Initialize Tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {

                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function() {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
        })

        // Get the modal

        var modalparent = document.getElementsByClassName("modal_multi");

        // Get the button that opens the modal

        var modal_btn_multi = document.getElementsByClassName("myBtn_multi");

        // Get the <span> element that closes the modal
        var span_close_multi = document.getElementsByClassName("close_multi");

        // When the user clicks the button, open the modal
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

            // When the user clicks on <span> (x), close the modal
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

            // When the user clicks on <span> (x), close the modal
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
        
        setTimeout(function() {
            document.getElementById('success-message').style.display = 'none';
        }, 10000);
    </script>

</body>

</html>