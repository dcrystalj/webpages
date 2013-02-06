<?php
session_start();
if(isset($_POST['submit'])){
    require 'connect.php';
    $id          = $_POST['id'];
    $passwd      = $_POST['passwd'];
    $mail        = $_POST['mail'];
    $surname     = $_POST['surname'];
    $name        = $_POST['name'];

    $write = mysql_query("INSERT INTO user VALUES ('$id','$name','$surname','$mail','1','$passwd')");

    if($write)
        header("Location: index.php?page=register&w=1");
    else
        header("Location: index.php?page=register&w=2");
}
?>

<script type = "text/javascript"  src = "static/validateinputmarks.js" ></script>
 <h1 id="inputmarkstitle"> Registriraj uporabnika</h1>
<div id="conty">
    <form action="register.php" method="post" class="form">
    <ul><li><label>
            <span>ime:</span>
            <input type="text" name="name"  required = "required" />
        </label></li><li><label>
            <span>priimek:</span>
            <input type="text" name="surname"  required = "required" />
        </label></li><li><label>
            <span>mail:</span>
            <input type="email" name="mail"  required = "required" />
        </label></li><li><label>
            <span>vpisna št.:</span>
            <input type="text" name="id"  required = "required" pattern=".{8}" />
        </label></li><li><label>
            <span>geslo:</span>
            <input type="password" name="passwd"  required = "required" />
        </label></li><li>
            <input type="submit" value="Vpiši" name="submit" id="submitgrade" />
        </li>
        <li>
            <?php if(isset($_GET['w']) && $_GET['w']==1){ print "<li style='margin-left:130px'>Uspesen vpis</li>";} ?>
            <?php if(isset($_GET['w']) && $_GET['w']==2){ print "<li style='margin-left:130px'>Ta student ze obstaja</li>";} ?>
        </li>
    <form>
</div>