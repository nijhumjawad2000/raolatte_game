<?php
session_start();
ob_start();
include("conn/connection.php");

$title= 'Fun Roulette Game';
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
    
if($total == 5){        
    header("location:win.php");
}

$query = "TRUNCATE TABLE result;";
if (mysqli_query($conn, $query)) {
    
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($conn);
}

include "include/header.php"; 
?>

    <li><a href="score.php">Scoreboard</a></li>
    <li><a href="store.php">Store</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
    <li><a href="rules.php"> Help</a></li>
</ul>
</div>
</div>
</nav>
<div class="container-fluid text-center">
    <div class="row content">
        <div class="head" id="main">
            <div class="menu">
                <div class="wallet">
                    <div><strong>
                            <?php echo $coins;  ?> chips </strong></div>
                </div>
            </div>

            <div>Welcome <b>
                    <?php echo $player; ?></b> | <a href="logout.php">Logout</a>
            </div>
        </div>

        <div>

            <div>
                <?php echo $email; ?>
            </div>
        </div>
<div style="border: 2px solid #03A9F4; background-color: pink;">
        <h1 style="center">My Bet</h1>
        <div class="container">
            <form action="" method="post">
                <div class="form-group">
                    <label for="a">Amount</label>
                    <?php
if(isset($_POST['submit'])){
    $amount = $_POST['a'];
    $color = ucwords($_POST['c']);
    $number = $_POST['n'];
        
    $player_sql = "SELECT * FROM bet WHERE player_name='$player'";
    $con_user = mysqli_query($conn, $player_sql);

    //check if player already bet
    if (mysqli_num_rows($con_user) > 0) {
        echo "<br/><b style='background-color:red;color:white;padding: 6px;'>Sorry. You have already placed a bet.</b><br/><br/>";     
    } else {     
        if ($amount <= $coins) {
            $query = "UPDATE players SET chips = $coins - $amount WHERE username='$player'"; 
            $data = mysqli_query($conn, $query); 

            $query = "INSERT INTO bet VALUES ('', '$player', '$amount', '$color', '$number')";
            $data = mysqli_query($conn, $query);
            if($data) {
                header("Refresh:0; url=game.php");
                echo "Records added successfully.";
            } else {
                echo "<b style='background-color:red;color:white;padding: 6px;'>*All fields are required!</b><br/><br/>";
            }
        } else {
            echo "Sorry. You don't have enough chips to bet. Buy chips from our <a href='store.php'>Online Store</a>.";  
        }         
    }
}
?>

                    <input type="number" name="a" placeholder="Your amount" min="1" required placeholder="Enter email">

                </div>
                <div class="form-group">
                    <label for="sel1">Color</label>
                    <select name="c" class="form-control" id="sel1" required>
                        <option selected disabled value="">Select your color</option>
                        <option value="red">Red</option>
                        <option value="black">Black</option>
                        <option value="green">Green</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="sel1">Number</label>
                    <select name="n" class="form-control" id="sel1" required>
                        <option selected disabled value="">Select your number</option>
                        <?php 
                            for($i = 0; $i <= 35; $i++) {
                                echo "<option value='$i'>$i</option>";
                            }
                            ?>
                    </select>
                </div>
                <input type="submit" value="Enter" name="submit" class="enter">
            </form>
        </div>
    </div>
</div>
</div>
<div class="table-responsive">
    <h1 style="text-align: center">Bet Screen</h1>
    <table class="table">
        <tr>
            <th></th>
            <th>Player</th>
            <th>Bet Amount</th>
            <th>Bet Color</th>
            <th>Bet Number</th>
        </tr>
        <?php 
if($total != 0){
    while($result = mysqli_fetch_assoc($data)){
        echo   " 
            <tr>
                <td>" . $result['id'] . "</td>
                <td>" . $result['player_name'] . "</td>
                <td>" . $result['amount'] . "</td>
                <td>" . $result['color'] . "</td>
                <td>" . $result['number'] . "</td>
            </tr>";
    }
} else {
    // echo "No record found";
}
?>
    </table>
    <h5 style="text-align:center;">* Required 5 players to play.</h5>
</div>
</div>

<footer class="container-fluid text-center">
<p>This site is created by Nijhum Jawad</p>
</footer>

</body>

</html>