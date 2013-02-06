<?php
session_start();
require 'connect.php';
require 'functions.php';
if(isset($_POST['submit'])){
    $id = $_POST['username'];
    $passwd = $_POST['password'];
    $remember = $_POST['remember'];
    if(login($id,$passwd,$remember)){
        $success=TRUE;
    }
    else{
        $success=FALSE;
    }
}
if(isset($_COOKIE['cid'])){
    $cid=$_COOKIE['cid'];
    $cpass=$_COOKIE['cpass'];
}

?>
<!DOCTYPE html>
<html>
  <head>
    <?php include 'head.html'; ?>
  </head>
  <body>
    <header>
        <?php include 'header.html'; ?>
    </header>
     <?php if(!is_logged_in()){ ?>
            <div id="login">
                <div id="content">
                    
                </div>
            </div>
      <?php
      }
      else{
          header("Location: index.php");
      }
      ?>

    <footer >
        <?php include 'footer.html'; ?>
    </footer>
  </body>
</html>