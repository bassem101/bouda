<!DOCTYPE html>
<html>
    <Head> 
      <meta name="viewport" content="width=device-width, initial-scale=1">
    
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

           
            </style>   
     </Head> 
    
    <body>
        <header>
            <nav>
              <div class="topnav2">
                <ul>  
                  <li><a href="bouda10.html"> BOUDA 10 EVENTS</a></li>
                  <li><a href="login.html">LOGIN</a></li></ul></div>
    <div class="topnav">
      <ul>  
        <li><a href="contact.html">CONTACT US</a></li>
        <li><a href="about.html">ABOUT US </a></li>
        <li><a href="createevent.html">CREATE EVENT</a></li>
        <li><a href="bookevent.html">BOOK EVENT</a></li>
        <li><a href="hompage.html">HOME</a></li>
        
        
        
        
    </ul>
      </div>
      </nav>
      
    </header>
    </body>
<body>
  <style>
    .bb {
      height: 200px;
      background-image: linear-gradient( 180deg, #b09453, white);
    }
    </style>
    <div class="bb"></div>
    <div><h1 style="text-align: center; color: #b09453;font-size: 30;" ><b><u> Book our Special Events Now</u></b></h1></div>
    <br><br>
<style>
    * {box-sizing: border-box}

/* Container needed to position the overlay. Adjust the width as needed */
.container {
  position: relative;
  width: 50%;
  max-width: 300px;
}

/* Make the image to responsive */
.image {
  display: block;
  width: 100%;
  height: 175px;
  margin-left: 20px ;
}

/* The overlay effect - lays on top of the container and over the image */
.overlay {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1;
  width: 100%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
  margin-left: 20px;
}

/* When you mouse over the container, fade in the overlay title */
.container:hover .overlay {
  opacity: 1;
}

</style>
<style>
 .vl {
  border-left: 6px solid #b09453;
  height: 175px;
  position: absolute;
  left: 50%;
  margin-left: 250px;
  top: 0;
}
.vl2 {
  border-left: 6px solid #b09453;
  height: 165px;
  position: absolute;
  left: 50%;
  margin-left: 450px;
  top: 0;
}
  </style>
  <table style="width: 100%;">
  <tr>
    <td>
    <div class="container">
       <div> <img src="asto2.jpeg" alt="Avatar" class="image"></div>
      <div class="overlay"><input type="button" value="Book Now" ></div>
     <div class="vl"></div>
    </td>
     <td>
       <p>Event Description</p>
     </td>
     <td>Price for 1 Ticket</td>
    </div>
  </tr>
  <tr>
    <td>
    <div class="container">
       <div> <img src="halowwen.jpg" alt="Avatar" class="image"></div>
      <div class="overlay"><input type="button" value="Book Now" ></div>
     <div class="vl"></div>
    </td>
     <td>
       <p>Event Description</p>
     </td>
     <td>Price for 1 Ticket</td>
    </div>
  </tr>
  <tr>
    <td>
    <div class="container">
       <div> <img src="battle.jpg" alt="Avatar" class="image"></div>
      <div class="overlay"><input type="button" value="Book Now" ></div>
     <div class="vl"></div>
    </td>
     <td>
       <p>Event Description</p>
     </td>
     <td>Price for 1 Ticket</td>
    </div>
  </tr>


</table>
</body>

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