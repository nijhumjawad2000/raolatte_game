<?php
session_start();
include("conn/connection.php");

// $title= 'Fun Roulette Game';
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

$query = "SELECT * FROM bet";                                                                                                                                     
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data);
    
if($total != 5){        
    header("location:game.php");
}

$query = "SELECT * FROM result WHERE name='$player'";                                                                                                                                       
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data); 

if($total !=0){
    while($result = mysqli_fetch_assoc($data)){
        $ba = $result['bet_amount'];
        $bn = $result['bet_number'];
        $bc = $result['bet_color'];
        $wn = $result['win_num'];
        $wc = $result['win_col'];
        $wchips = $result['win_chips'];
        }
    } else {
        echo "No record found";
} 

include "include/header.php"; 

?>

     <li><a href="summary.php">View Result</a></li> 
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content" style="height:508px;">
    <div class="col-sm-8 text-left"> 
        <div style="color:white;">
            <strong>
                <?php echo "chips = ". $coins; ?> chips </strong>
        </div>


        <div>Welcome <b>
                <?php echo $player; ?></b>
        </div>
    </div>

    <div>
        <?php echo $email; ?>
    </div>

    <div style="text-align:center;">
        <div>
            <div>
                <h3><img src="image/2.jpg" alt="" width="200"></h3>
            </div><br/>
            
        </div>

        <div>
            <h4>You have bet
                <?php echo $ba; ?> chips.
            </h4>
            <h4>Your Number :
                <?php echo $bn; ?>
            </h4>
            <h4>Your Color :
                <?php echo $bc; ?>
            </h4>
        </div>
    </div>
    <div>
        <div>
            <h3>Winning Number :
                <?php echo $wn; ?>
            </h3>
            <h3>Winning Color :
                <?php echo $wc; ?>
            </h3>
        </div>
    </div>
    <div>
        <?php
    if ($wchips > 0) {
        echo "<h2>Congratulations!!! You have won " . $wchips . " chips.</h2>";
    } else {
        echo "<h2>Better luck next time.</h2>";
    }?>
    </div>
</div>

<footer class="container-fluid text-center">
  <p>This site is created by Nijhum Jawad</p>
</footer>


    <script>

        history.pushState(null, null, document.URL);
        window.addEventListener('popstate', function () {
            history.pushState(null, null, document.URL);
        });

        document.onkeydown = function (e) {
            var key;
            if (window.event) {
                key = event.keyCode
            }
            else {
                var unicode = e.keyCode ? e.keyCode : e.charCode
                key = unicode
            }

            switch (key) {//event.keyCode
                case 116: //F5 button
                    key.returnValue = false;
                    key = 0; //event.keyCode = 0;
                    return false;
                case 82: //R button
                    if (event.ctrlKey) {
                        key.returnValue = false;
                        key = 0; //event.keyCode = 0;
                        return false;
                    }
                case 91: // ctrl + R Button
                    event.returnValue = false;
                    key = 0;
                    return false;
            }
        }
    </script>

  