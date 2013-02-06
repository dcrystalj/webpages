<?php
session_start();
require 'connect.php';
require 'functions.php';
mysql_query("SET NAMES 'utf8' COLLATE 'latin1_swedish_ci' ");
mysql_query("SET CHARACTER SET 'latin1' ");
if(user_rights()==0)
    header("Location: logout.php");
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
    <div id="main">
        <div id="leftdiv">
            <div id="userdata">
               <?php include 'userdata.php'; ?>
            </div>
            <nav>
                <?php
                if(user_rights()==1)
                    include 'menu.html';
                else if(user_rights()==2)
                    include 'menuadmin.html';
                ?>
            </nav>
        </div>
        <div id="content">
            <?php
            if(isset($_GET['page'])){
                $page=$_GET['page'];
                if($page=="welcome")
                    include 'welcome.html';
                else if($page=="login")
                    include 'login.php';
                else if($page=="marks")
                    include 'marks.php';
                else if($page=="check")
                    include 'check.php';
                else if($page=="checkout")
                    include 'checkout.php';
                else if($page=="inputmarks")
                    include 'inputmarks.php';
                else if($page=="examon")
                    include 'examon.php';
                else if($page=="examoff")
                    include 'examoff.php';
                else if($page=="register")
                    include 'register.php';
                else
                    include 'welcome';
            }
            else {
               include 'welcome.html';
            }
            ?>
        </div>
    </div>
    <footer >
        <?php include 'footer.html'; ?>
    </footer>
  </body>
</html>
