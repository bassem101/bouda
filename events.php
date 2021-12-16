<!DOCTYPE html>
<html>
  <head>
     
<link rel="stylesheet" type="text/css" href="addProperty2.css">
</head>
<title>
            BOUDA 10 
        </title>
        <style>   
            body   
            {  
margin: 0;            }  
             header {  
            background-color: white;   
             left: 0;  
            right: 0;  
            top: 0px;   
             height: 100px;   
             display: flex;   
            align-items: center;  
            box-shadow: 0 0 25px 0 #b09453;  
            }   
            header * {  
            display: inline;  
            }  
            header li {  
            margin: 25px;  
            }  
             header li a {  
            color: rgb(30, 30, 37);  
            text-decoration: none;  
            }  
            
.topnav {
  overflow: hidden;
  background-color: white;
}

.topnav a {
  float: right;
  color:#b09453;
  text-align: center;
  padding: 16px 18px;
  text-decoration: none;
  font-size: 16px;
}

.topnav a:hover {
  background-color: white;
  color: black;
  
}

.topnav a.active {
  background-color: white;
  color: black;
}
.topnav2 {
  overflow: hidden;
  background-color: white;
}

.topnav2 a {
  float: left;
  color:black;
  text-align: center;
  padding: 16px 18px;
  text-decoration: none;
  font-size: 16px;
}

.topnav2 a:hover {
  background-color: white;
  color: black;
  
}

.topnav2 a.active {
  background-color: white;
  color: black;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}
.dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown:hover .dropdown-content {
  display: block;
}
            </style>   
     </Head> 
    
    <body>
    <header>
            <nav>
              <div class="topnav2">
                <ul>  
                  <li><a href="bouda10.html"> BOUDA 10 EVENTS</a></li>
                 
                </ul>
                </div>
                <?php
                session_start();
                $conn = mysqli_connect("localhost","root", "", "bouda10");
                $ret=mysqli_query($conn ,"SELECT * FROM user WHERE ID='".$_SESSION['ID']."'");
                if ($ret->num_rows > 0) {
                  // output data of each row
                  while($row = $ret->fetch_assoc()) {     
                            echo "Welcome ".$row["First_Name"]."";
                            // "<select>
                            // <option>Go To</option>
                            // <option><a href='www.google.com'>My Account</a></option>
                            // <option>My Booking</option>
                            // <option>My Events</option>
                            // </select>".
                            // "<button>Submit</button>";
                            
                            }}    
                               
                             ?>

    <div class="topnav">
      <ul>  
        <li><a href="contact.html">CONTACT US</a></li>
        <li><a href="aboutus.html">ABOUT US </a></li>
        <li><a href="createevent.html">CREATE EVENT</a></li>
        <li><a href="events.php">BOOK EVENT</a></li>
        <li><a href="home2.php">HOME</a></li></ul>
        <div class="dropdown">
    <button class="dropbtn">Dropdown 
      <i class="fa fa-caret-down"></i>
    </button>
        <div class="dropdown-content">
                            <a href="myaccount.php">My Account</a>
                            <a href="Mybooking.php">My Booking</a>
                            <a href="MyEvents.php">My Events</a>
                          </div>                  
      </div>
        
      </div>

        
        
    
      </div>

      </nav>
      
    </header>
    </body>
    <style>
    .bb {
      height: 200px;
      background-image: linear-gradient( 180deg, #b09453, white);
    }
    </style>
    <div class="bb"></div>
    <div><h1 style="text-align: center; color: #b09453;font-size: 30;" ><b><u> Book our Special Events Now</u></b></h1></div>
    
<?php
$conn = mysqli_connect("localhost","root", "", "bouda10");

$sql2="SELECT * from events WHERE ticket_type_ID=4 ";
$result = mysqli_query($conn, $sql2);
if ($result->num_rows > 0) {
  //echo"<div><p></p>";
  while($row = $result->fetch_assoc()) {

echo '<div class="grid-container" >'.'<div class="grid-item">' .
'<img src='.$row["image"].'  id="image">'.
'<form  action="singleEvents.php" method="POST">'.
'<b id="thisfor">Event:</b>'.
'<p id="for" >'.$row["name"].'</p>'.
'<b id="description">Date:</b>'.
'<p class="v2">'.$row["Date"].'</p>'.
'<b id="adress">Price:</b>'.
' <p id="adressD">'.$row["ticket_price"].'</p>'.
'<input hidden type="text"id="xx" name="id" value='.$row["ID"].'>'.
'<input type="submit" id="request"  value="View" name="submit" >'
  .'</form>'

  .'</div>'.'</div>';
}
}
?>

<style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}
        
        /* Button used to open the chat form - fixed at the bottom of the page */
        .open-button {
          background-color:#b09453;
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          opacity: 0.8;
          position: fixed;
          bottom: 23px;
          right: 28px;
          width: 280px;
          border-radius: 7px;
        }
        
        
        /* The popup chat - hidden by default */
        .chat-popup {
          display: none;
          position: fixed;
          bottom: 0;
          right: 15px;
          border: 3px solid #f1f1f1;
          z-index: 9;
        }
        
        /* Add styles to the form container */
        .form-container {
          max-width: 300px;
          padding: 10px;
          background-color: white;
        }
        
        /* Full-width textarea */
        .form-container textarea {
          width: 100%;
          padding: 15px;
          margin: 5px 0 22px 0;
          border: none;
          background: #f1f1f1;
          resize: none;
          min-height: 200px;
        }
        
        /* When the textarea gets focus, do something */
        .form-container textarea:focus {
          background-color: #ddd;
          outline: none;
        }
        
        /* Set a style for the submit/send button */
        .form-container .btn {
          background-color: #04AA6D;
          color: white;
          padding: 16px 20px;
          border: none;
          cursor: pointer;
          width: 100%;
          margin-bottom:10px;
          opacity: 0.8;
        }
        
        /* Add a red background color to the cancel button */
        .form-container .cancel {
          background-color: red;
        }
        
        /* Add some hover effects to buttons */
        .form-container .btn:hover, .open-button:hover {
          opacity: 1;
        }
        </style>
        </head>
        <body>
        
        
        <button class="open-button" onclick="openForm()">Chat</button>
        
        <div class="chat-popup" id="myForm">
          <form action="/action_page.php" class="form-container">
            <h1>Chat</h1>
        
            <label for="msg"><b>Message</b></label>
            <textarea placeholder="Type message.." name="msg" required></textarea>
        
            <button type="submit" class="btn">Send</button>
            <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
          </form>
        </div>
        
        <script>
        function openForm() {
          document.getElementById("myForm").style.display = "block";
        }
        
        function closeForm() {
          document.getElementById("myForm").style.display = "none";
        }
        </script>

</html>