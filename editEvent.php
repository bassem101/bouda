<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: rgb(176, 148, 83);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>
<?php
                session_start();
                $conn = mysqli_connect("localhost","root", "", "bouda10");
                $sql2="SELECT * from user WHERE ID='".$_SESSION['ID']."'";
                $result = mysqli_query($conn, $sql2);
                if ($result->num_rows > 0) {
                  while($row = $result->fetch_assoc()) {
                      echo '
<form action="editaccount.php" method="POST"style="border:1px solid #ccc">
  <div class="container">
    <h1>My Account</h1>
    <hr>
<label for="FirstName"><b>FirstName</b></label>
    <input type="text" placeholder="FirstName" name="FirstName" value='.$row["First_Name"].' >
    <label for="LastName"><b>LastName</b></label>
    <input type="text" placeholder="Lasttname" name="Lastname" value='.$row["Last_Name"].'>
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" value='.$row["Email"].' disabled>
    <label for="birthday">DOB:</label>
<input type="date" id="dateofbith" name="birthday" value='.$row["Date_Of_Birth"].'> <Br> <Br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="Password" value='.$row["password"].'>
  
    <label for="phone">Enter a phone number:</label><br><br>
  <input type="tel" id="phone" name="phone" placeholder="01xxxxxxx" value='.$row["Phone_Number"].'> <Br>
      <input type="submit" name="submit" value="Submit">
      
    </div>
  </div>
</form>';
                }
            }
                ?>
</body>
</html>
