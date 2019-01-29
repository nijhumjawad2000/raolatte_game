<?php
session_start();
include("conn/connection.php");
include "include/header.php"; 
?>
<!-- <div class="col-sm-8 text-left"> -->
<?php     
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



$query = "SELECT * FROM result where name='$player'";                                                                                                                                       
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data); 

if($total != 0){
    while($result = mysqli_fetch_assoc($data)){
        $wn = $result['win_num'];
        $wcol = $result['win_col'];
    }
    } else {
    // echo "No record found";
    }

$query = "SELECT * FROM result";                                                                                                                                       
$data = mysqli_query($conn, $query);
$total = mysqli_num_rows($data); 

if($total != 5){        
    header("location:game.php");
}

?>

    <li><a href="score.php">score</a></li> 
      </ul>
    </div>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content" style="height:508px;">
    <div class="col-sm-8 text-left"> 

        <div><strong>
                <?php echo $coins;  ?> chips </strong></div>
        <!-- <div><img src="img/coin.png" alt="coin" class="coin"></div> -->
    </div>


    <div>Welcome <b>
            <?php echo $player; ?></b> | <a href="logout.php">Logout</a>
    </div>
    <div>
        <?php echo $email; ?>
    </div>


    <div>
        <h2>Game Result</h2>
    </div>
    <div>
        <div>
            <h2>Winning Number :
                <?php echo $wn; ?>
            </h2>
            <h2>Winning Color :
                <?php echo $wcol; ?>
            </h2>
        </div>
    </div>
    <div style="width: 590px;" class="container">
        <h1>Summary</h1>
        <table class="table table-striped">
            <tr>
                <th></th>
                <th>Player</th>
                <th>Bet Amount</th>
                <th>Bet Color</th>
                <th>Bet Number</th>
                <th>Status</th>
                <th>Chips Win</th>
            </tr>
            <?php 
if($total != 0){
    while($result = mysqli_fetch_assoc($data)){
        echo   "
        <tr>
            <td>" . $result['id'] . "</td>
            <td>" . $result['name'] . "</td>
            <td>" . $result['bet_amount'] . "</td>
            <td>" . $result['bet_color'] . "</td>
            <td>" . $result['bet_number'] . "</td>
            <td>" . $result['status'] . "</td>
            <td>" . $wc = $result['win_chips'] . "</td>
        </tr>";
}
} else {
// echo "No record found";
}
?>
        </table>
    </div>
    <?php            
        $query = "INSERT INTO scoreboard (win_num, win_col, name, status, bet_amount, bet_color, bet_number, win_chips, date) 
        SELECT win_num, win_col, name, status, bet_amount, bet_color, bet_number, win_chips, date 
        FROM result";
        if (mysqli_query($conn, $query)) {

        } else {
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
        }
        
    $query = "TRUNCATE TABLE bet;";
    if (mysqli_query($conn, $query)) {
        
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
    }
?>
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
