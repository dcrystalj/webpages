<?php
session_start();
if(isset($_POST['submit'])){
        require 'connect.php';
        $check = $_POST['mylist'];
        $user= $_SESSION['user'];
        foreach ($check as $value) {
            $write = mysql_query("DELETE FROM exam WHERE subject=$value and user=$user ");
        }
        if($write)
            header("Location: index.php?page=checkout&w=1");
        else
             header("Location: index.php?page=checkout");

}
?>
<h1 id="applytoexam"> Odjava izpita </h1>
    <form action="checkout.php" method="POST">
        <ul style="width: 100%; text-align: center; list-style: none; padding: 0px;" >
           <li>
                <span id="applysubject">Predmet</span>
                 <select name="mylist[]" id = "myList"  multiple="true" >
                    <?php
                    $user = $_SESSION['user'];
                    $query = mysql_query("SELECT subject.name name, exam.subject id  FROM exam LEFT JOIN subject ON subject.id=exam.subject WHERE exam.user=$user") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
                    while ( $row = mysql_fetch_assoc( $query ) )
                    {
                        print "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                    }

                    ?>
                 </select>
            </li>
            <?php
                if(isset($_GET['w']) && $_GET['w']==1){ print "<li>Uspešna odjava</li>";}
            ?>
            <li>
                 <?php
                    if(mysql_num_rows($query)==0){
                        ?><input type="submit" value="Odjavi se" name="submit" disabled /><?php
                    }
                    else{
                        ?><input type="submit" value="Odjavi se" name="submit" /><?php
                    }
                 ?>
            </li>
        </ul>
    </form>


