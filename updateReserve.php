<?php
session_start();
$db = new mysqli('localhost', 'root', '', 'sanggardb');

$clientName = $_GET['client_name'];

$sql = "SELECT c.client_name, c.client_phone, r.selected_time, r.nbr_guests
        FROM clients c
        JOIN reservation r ON c.client_id = r.client_id
        WHERE c.client_name = '$clientName'";
$rows = $db->query($sql);

if (isset($_POST['send'])) {
    $clientName = $_POST['client_name'];
    $clientPhone = $_POST['client_phone'];
    $selectedTime = $_POST['selected_time'];
    $nbrGuests = $_POST['nbr_guests'];

    $updateClientSql = "UPDATE clients SET client_name='$clientName', client_phone='$clientPhone' WHERE client_name='$clientName'";
    $updateReservationSql = "UPDATE reservation r
                             JOIN clients c ON r.client_id = c.client_id
                             SET r.selected_time='$selectedTime', r.nbr_guests='$nbrGuests'
                             WHERE c.client_name='$clientName'";

    $db->query($updateClientSql);
    $db->query($updateReservationSql);

    header("Location: cart.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Sanggar Bistro Cafe</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link rel="icon" href="Image/restaurant-image.png" type="image/png">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        /* Add your custom styles here */
        /* ... */
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

        .form-control {
            border-radius: 0;
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

    <div id="about" class="container text-center">
        <h4>Sanggar Bistro Cafe</h4>
        <div id="order" class="bg-1">
            <div class="modal-content">
                <div class="modal-header">
                    <h4><span class="fa fa-pencil-square-o"></span> EDIT ORDER</h4>
                </div>
                <div class="modal-body">
                    <form method="POST">
                        <?php while ($row = $rows->fetch_assoc()): ?>
                        <label for="client_name"><span class="glyphicon glyphicon-user"></span> Client Name</label>
                        <input type="text" class="form-control" id="client_name" name="client_name" value="<?php echo htmlspecialchars($row['client_name']); ?>">

                        <label for="client_phone"><span class="glyphicon glyphicon-earphone"></span> Client Phone</label>
                        <input type="text" class="form-control" id="client_phone" name="client_phone" value="<?php echo htmlspecialchars($row['client_phone']); ?>">

                        <label for="selected_time"><span class="glyphicon glyphicon-time"></span> Selected Time</label>
                        <input type="text" class="form-control" id="selected_time" name="selected_time" value="<?php echo htmlspecialchars($row['selected_time']); ?>">

                        <label for="nbr_guests"><span class="glyphicon glyphicon-user"></span> Number of Guests</label>
                        <input type="text" class="form-control" id="nbr_guests" name="nbr_guests" value="<?php echo htmlspecialchars($row['nbr_guests']); ?>">
                        <?php endwhile; ?>

                        <button type="submit" name="send" class="btn btn-block">
                            <span class="fa fa-check-circle-o"> Confirm</span>
                        </button>
                    </form>
                </div>
                <div class="modal-footer">
                    <a href="cart.php" class="btn btn-danger btn-default pull-left"><span class="glyphicon glyphicon-remove"></span> Cancel</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Initialize Tooltip
            $('[data-toggle="tooltip"]').tooltip();

            // Add smooth scrolling to all links in navbar + footer link
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
        });

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

        window.onload = function() {
            setDataIndex();
        };

        window.onclick = function(event) {
            if (event.target === modalparent[event.target.getAttribute('data-index')]) {
                modalparent[event.target.getAttribute('data-index')].style.display = "none";
            }
            if (event.target === modal) {
                modal.style.display = "none";
            }
        };
    </script>

</body>

</html>