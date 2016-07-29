<?php
/**
 * Created by PhpStorm.
 * User: Администратор
 * Date: 22.07.2016
 * Time: 14:23
 */

session_start();
require_once "functions.php";
$user_str="(Guest)";
$img="images/zaglyshka.jpg";
if(isset($_SESSION['rate']) && isset($_SESSION['img'])) {
    $rate = $_SESSION['rate'];
    if($_SESSION['img']!="")
    $img = $_SESSION['img'];
}
if(isset($_POST['user-name'])) {
    if ((isset($_POST['password']))) {
        $user = sanitizeString($_POST['user-name']);
        $pass = encodePassword(sanitizeString($_POST['password']));

        $result = $connection->query("SELECT * FROM users WHERE name='$user' AND pass='$pass'");

        if(!($result->num_rows)){
            die("Incorrect pass or login");
        }else{
            $row=$result->fetch_array(MYSQLI_ASSOC);
            $_SESSION['user'] = $user;
            $rate=$_SESSION['rate']=$row['rate'];

            if($row['avatar']!="")
            $img=$_SESSION['img']=$row['avatar'];
            setcookie('user',$user, time() + 86400);
        }

    }
}

if(isset($_COOKIE['user'])){
    $user=$_SESSION['user']=$_COOKIE['user'];
    $result=$connection->query("SELECT * FROM users WHERE name='$user'");
    $row=$result->fetch_array(MYSQLI_ASSOC);
    $rate=$_SESSION['rate']=$row['rate'];
    if($row['avatar']!='')
    $img=$_SESSION['img']=$row['avatar'];
}

if(isset($_SESSION['user'])){
    $user=$_SESSION['user'];
    $loggedin=true;
    $user_str="($user)";
}else{
    $loggedin=false;
}

?>

<!DOCTYPE html>
<html>
<head>
<title><?php echo "$appname$user_str" ?></title>
    <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
    <script src="js/vote.js"></script>
    <link rel="stylesheet" href="styles/style.css">

</head>
<body>

<header>

    <div class="logo-area"><a href="http://localhost/people_of_internet/"><img src="images/logo.png" alt=""></a></div>
    <div class="menu-area">

    <?php
if(!$loggedin){
  echo  <<< _END
  <ul class="top-menu"><li class="menu-item"><a class="open_window" href="#">Log In</a></li></ul>
    
_END;
    }else{
  echo  <<< _END
 <div class="logged-profile open_window">
  <div id="rating">Rate: $rate</div>
  <div id="u-name-top">$user</div>
 <img id="small-ava" src="$img">
 <div class='arrow-down'><img src="images/down-arrow.png"></div>
 </div>
<div id="exit"><a href='logout.php'></a><div>
_END;
} ?>

    </div>

</header>


    <div class="overlay" title="окно"></div>
    <div class="popup-auth">
        <div class="triangle"></div>



 <?php if(!$loggedin)


    echo  <<< _END

 
        <div class="submit-status">Login or password are incorrect</div>
        <form id="login-form" method="POST">
            <div class="input-area">
               <p>Login:</p>
            <input type="text" name="user-name" placeholder="">
            </div>
            <div class="input-area">
                <p>Password:</p>
            <input type="password" name="password" placeholder="">
            </div>

            <div class="info"><a href="register.php">Register!</a></div>

            <input type="submit" id="login-button" value="Enter">
        </form>

   
_END;

 else{
     echo  <<< _END

<div class="edit-profile"><a href="profile.php?view=$user">Edit profile</a></div>
<div class="view-history"><a href="history.php">History</a></div>
<div class="view-members"><a href="members.php">Members</a></div>


_END;

 }
 ?>
    </div>








