<?php 

$db = new mysqli;

$db->connect('localhost','root','','sanggardb');

if(isset($_POST['send'])){
    $menuName = $_POST['name'];
    $menuPrice = $_POST['price'];
    $menuDesc = $_POST['desc'];
    
    $menuImage = $_FILES['image']['name']; 
    $menuImageTmp = $_FILES['image']['tmp_name']; 
    
    $uploadPath = "../sanggar/Image" . basename($menuImage);
    move_uploaded_file($menuImageTmp, $uploadPath);
    
$sql = "INSERT INTO menu (name, price, desc_menu, image) VALUES ('$menuName', '$menuPrice', '$menuDesc', '$menuImage')";

    $db->query($sql);    

    header('location:menu.php');        
}

?>