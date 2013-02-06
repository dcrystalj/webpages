<?php
session_start();
if(isset($_POST['submit'])){
    require 'connect.php';
    $subject = $_POST['subject'];
    $query = mysql_query("UPDATE subject  SET examon=1 WHERE id=$subject ");
    if($query)
        header("Location: index.php?page=examon&w=1");
    else
         header("Location: index.php?page=examon&w=2");

}
?>
<h1> Razpiši izpitni rok</h1>
<div>
    <form action="examon.php" method="post">
    <ul style="width: 100%; text-align: center; list-style: none; padding: 0px;">
        <li>
            <span id="applysubject">Predmet:</span>
            <select id = "subject" name="subject">
                    <?php
                        $query = mysql_query("SELECT id, name FROM subject WHERE examon=0 ORDER BY id, name") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
                        while ( $row = mysql_fetch_assoc( $query ) )
                        {
                            print "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                        }
                    ?>
            </select>
        </li>
        <li><input type="submit" value="Razpiši" name="submit" /></li>
        <?php if(isset($_GET['w']) && $_GET['w']==1){ print "<li>uspesno vpisano</li>";}
        else if(isset($_GET['w']) && $_GET['w']==2){ print "<li>Neuspesno vpisano</li>";} ?> <form>
</div>