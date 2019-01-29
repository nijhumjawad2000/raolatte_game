<?php
session_start();
ob_start();
include("conn/connection.php");

$email = $_SESSION['email'];

if($email == TRUE) {
} else {
    header('location:login.php');
}

$query = "SELECT * FROM players WHERE email='$email'";                                                                                                                                     
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data);

if($total !=0){
    while($result = mysqli_fetch_assoc($data)){
        $player = $result['username'];
        $coins = $result['chips'];
        }
    } else {
        echo "No record found";
}  

include "include/header.php"; 
?>

<li><a href="score.php">score</a></li> 
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content" style="height:508px;">
    <div class="col-sm-8 text-left"> 

    <div>

        <div>
            <div><strong>
                    <?php echo $coins;  ?> chips </strong></div>
        </div>
    </div>

    <div>Welcome <b>
            <?php echo $player; ?></b> | <a href="logout.php">Logout</a>
    </div>

    <div>
        <?php echo $email; ?>

    </div>
    <div style="height: 543px;">
    <form action="" method="post">
        <div>
            <div class="buy">
                <div>
                    <h3>Buy 100 Chips</h3>
                    <h3>Only $1.00</h3>
                </div>
                <input type="submit" name="submit" value="buy">
            </div>
            <div class="buy">
                <div>
                    <h3>Buy 200 Chips</h3>
                    <h3>Only $2.00</h3>
                </div>
                <input type="submit" name="submit1" value="buy">
            </div>
        </div>
</form>
        </div>
    </div>
</div>
</div>
<?php
if (isset($_POST['submit'])){
   $email = $_SESSION['email'];
   $chip = 100;


       $query = "UPDATE players SET chips = '$chip'+'$coins' WHERE players.email = '$email'";
       $data = mysqli_query($conn, $query);

       if($data){
    //    echo "chips added";
       header("Refresh:0; url=game.php");
       }
   }else{
       echo "failed";
   }
   if (isset($_POST['submit1'])){
    $email = $_SESSION['email'];
    $chip = 200;
 
 
        $query = "UPDATE players SET chips = '$chip'+'$coins' WHERE players.email = '$email'";
        $data = mysqli_query($conn, $query);
 
        if($data){
        // echo "chips added";
        header("Refresh:0; url=game.php");
        }
    }else{
        echo "failed";
    }

?>
<footer class="container-fluid text-center">
  <p>This site is created by Nijhum Jawad</p>
</footer>

