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
            margin: 5px;  
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

           
            </style>   
     </Head> 
    
    <body>
        <header>
            <nav>
              <div class="topnav2">
                <ul>  
                  <li><a href="bouda10.html"> BOUDA 10 EVENTS</a></li>
                  <!-- <li><a href="login.html">LOGIN</a></li> -->
                <li><a href="insert.php"><input type="button" value="Insert Event" ></a></li>
                <!-- <li><a href="#"><input type="button" value="Update Event" ></a></li> -->
              </div>
    <!-- <div class="topnav">
      <ul>  
        <li><a href="contact.html">CONTACT US</a></li>
        <li><a href="about.html">ABOUT US </a></li>
        <li><a href="createevent.html">CREATE EVENT</a></li>
        <li><a href="bookevent.html">BOOK EVENT</a></li>
        <li><a href="hompage.html">HOME</a></li>
        
        
        
        
    </ul>
      </div>
      </nav> -->
      
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
session_start();
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