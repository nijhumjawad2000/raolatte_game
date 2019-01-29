<?php
session_start();
// ob_start();
include("conn/connection.php");
if(count($_SESSION)) header("Location: game.php");
$error = isset($_GET['error']); 

// $title= 'Fun Roulette Game';
 

    if(isset($_POST['submit'])){
        $email = $_POST['email'];
        $pwd = $_POST['password'];
        $query = "SELECT * FROM players WHERE email = '$email' && password = '$pwd' ";
        $data = mysqli_query($conn, $query);
        $result = mysqli_num_rows($data);

        if ($result == 1){
            $_SESSION['email'] = $email;
            header('location:game.php');
        } else {
            echo "<div><h6><b class='error'>Login Failed. Please enter a valid Username or Password.</b></h6></div>";
        }
    };
    include "include/header.php";
?>

        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          <li><a href="resistration.php"><span class="glyphicon glyphicon-log-in"></span> Sign Up</a></li>
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
          <h2>Log In</h2>
          <form action="" method="post">
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
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