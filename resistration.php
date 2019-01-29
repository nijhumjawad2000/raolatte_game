<?php
session_start();
include("conn/connection.php");
//error_reporting(0);
include "include/header.php"; 

?>
<div class="col-sm-8 text-left"> 
<?php
if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $name = ucwords($_POST['username']);
    $pass = $_POST['password'];


    $email_query = "SELECT * FROM players WHERE email='$email'";
    $user_query = "SELECT * FROM players WHERE username='$name'";
    $conUser = mysqli_query($conn, $user_query);
    $conEmail = mysqli_query($conn, $email_query);

     //check if user already exist
    if (mysqli_num_rows($conUser) > 0) {
        echo "Sorry. Username already taken.";     
    } else if (mysqli_num_rows($conEmail) > 0) {
        echo "Sorry.This email already exists.";

    //email validation    
    } else if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
            echo "Please Enter A Valid Email.";
    } else {
        if($email!="" && $name!="" &&  $pass!="" ) {
            $query = "INSERT INTO players VALUES ('','$email', '$name', '$pass', '100.00')";
                
            $data = mysqli_query($conn, $query);
            if($data) {
                echo "Sign Up successful.";
          header('location:login.php');
            } else {
                echo "*All fields are required!";
            }
        }
    }
}   
?>

</ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container-fluid text-center">
    <div class="row content">
      <div class="col-sm-2 sidenav1">
        <p><a href="rules.php">Help</a></p>
        <p><a href="game.php">Game</a></p>
      </div>
      <div class="col-sm-8 text-left">
        <div class="container">
  <h2>Resistration</h2>
  <form action="" method="post">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="Username">Username:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <input type="submit" name="submit" class="btn btn-default">
  </form>
  </div>
      </div>
      <div class="col-sm-2 sidenav1">
        <p><img src="image/1.jpg" alt="" width="100"></p>
        <p><img src="image/2.jpg" alt="" width="100"></p>
      </div>
    </div>
  </div>

  <footer class="container-fluid text-center">
  <p>This site is created by Nijhum Jawad</p>
  </footer>

</body>

</html>