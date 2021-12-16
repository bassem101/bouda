<?php
session_start();
$conn = mysqli_connect("localhost","root", "", "bouda10");
if(isset($_POST['submit']))
{
    $name=$_POST["name"];
    $Date=$_POST["Date"];
    $category=$_POST["country"];
    $location=$_POST["Event_Location"];
    $capacity=$_POST["Capacity"];
    $price=$_POST["Ticketsprice"];
    $equipment=$_POST["equipment"];
    $payment=$_POST["paymentmethod"];

    $sql="INSERT INTO events (name, Date, location_ID,ticket_type_ID,max_capacity,ticket_price,image)
    VALUES ('$name', '$Date', '$location','$category','$capacity','$price','')";
    if ($conn->query($sql) === TRUE) {
        $last_id = mysqli_insert_id($conn);
    }
        $sql2='INSERT INTO event_creation (User_ID, Event_ID)
        VALUES ("'.$_SESSION["ID"].'", "'.$last_id.'")';   
        if ($conn->query($sql2) === TRUE) {
            $last_id_creation  = mysqli_insert_id($conn);
      } 
        foreach($equipment as $check){
        $sql3="INSERT INTO event_creation_equipment (Event_creation_ID, Event_Equipment_ID)
        VALUES ('$last_id_creation', '$check')";
        if ($conn->query($sql3) === TRUE) {
      } 
       }
       $sql4='INSERT INTO event_creation_relation (Event_ID, Event_Creation_ID)
       VALUES ("'.$last_id.'", "'.$last_id_creation.'")';   
       if ($conn->query($sql4) === TRUE) {
           $last_id_relation  = mysqli_insert_id($conn);
     }
     $total=0;
     foreach($equipment as $check){
        $ret=mysqli_query($conn ,"SELECT * FROM event_equipments WHERE ID=$check");
        if ($ret->num_rows > 0) {
          // output data of each row
          while($row = $ret->fetch_assoc()) {   
            $temp=$row["Price"];
            $total+=$temp;
         
      } 
  
       }
    }
    echo $total;
     $sql5='INSERT INTO event_creation_payment (Event_creation_Relation_ID, total_price,Payment_method_ID)
       VALUES ("'.$last_id_relation.'", "'.$total.'","'.$payment.'")';   
       if ($conn->query($sql5) === TRUE) {
           $last_id_creation  = mysqli_insert_id($conn);
     }  
}

?>