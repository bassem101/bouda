<?php
session_start();

if (isset($_POST['submit'])){
    $fname=$_POST["FirstName"];
    $lname=$_POST["Lastname"];
    $DateOfBirth=$_POST["birthday"];
    $Password=$_POST["Password"];
    $FingerPrint=1;
    $Phone=$_POST["phone"];
    $UserTypeID=2;
    $conn = mysqli_connect("localhost","root", "", "bouda10");
    $sql="UPDATE user SET First_Name='".$fname."', Last_Name='".$lname."' , Date_Of_Birth='".$DateOfBirth."'
    , password='".$Password."' , Phone_Number='".$Phone."' WHERE ID=".$_SESSION['ID']."";
    if ($conn->query($sql) === TRUE) {
       header('Location:home2.php');
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
}
?>
 