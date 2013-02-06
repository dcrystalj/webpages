<?php
session_start();
if(isset($_POST['submit'])){
    require 'connect.php';
    $id = explode(" ",$_POST['student']);
    $id=$id[0];
    $subject = $_POST['subject'];
    $mark = $_POST['mark'];
    $year = $_POST['year'];
    $query = mysql_query("SELECT id FROM exam WHERE subject=$subject AND user=$id");
    $w1=mysql_affected_rows();
    if($w1>0){
        $query1 = mysql_query("DELETE FROM exam WHERE subject=$subject AND user=$id");
        $w2=mysql_affected_rows();
        if($w2>0){
            $write = mysql_query("INSERT INTO mark VALUES ('','$subject','$id','$mark','$year')");
            $w3=mysql_affected_rows();
        }
    }
    if($w1==0)
        header("Location: index.php?page=inputmarks&w=1");
    else if($w2==0 || $w3==0)
        header("Location: index.php?page=inputmarks&w=2");
    else if($write)
        header("Location: index.php?page=inputmarks&w=3");

}
?>

<script type = "text/javascript"  src = "static/validateinputmarks.js" ></script>
<h1 id="inputmarkstitle"> Vnos ocen </h1>
<div id="conty">
    <form action="inputmarks.php" method="post" class="form">
    <ul><li>
            <label>
                <span id="useridname">Vpisna študenta:</span>
                <input list="student" id="studentid" name="student">
                <datalist id="student">
                    <?php
                        $query = mysql_query("SELECT id, name, surname FROM user WHERE status=1 ORDER BY id, name") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
                        while ( $row = mysql_fetch_assoc( $query ) )
                        {
                            print "<option value='" . $row['id'] . " " . $row['name'] . " " . $row['surname'] . "'>";
                        }
                    ?>
                </datalist>
            </label>
        </li><li>
            <span id="applysubject">Predmet:</span>
            <select id = "subject" name="subject">
                    <?php
                        $query = mysql_query("SELECT id, name FROM subject ORDER BY id, name") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
                        while ( $row = mysql_fetch_assoc( $query ) )
                        {
                            print "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                        }
                    ?>
            </select>
        </li><li>
            <span id="grade">Ocena:</span>
            <select id = "mark" name="mark">
               <option value = "5">5</option>
               <option value = "6">6</option>
               <option value = "7">7</option>
               <option value = "8">8</option>
               <option value = "9">9</option>
               <option value = "10">10</option>
            </select>
        </li><li>
        <span id="year">Letnik:</span>
            <select name="year">
               <option value = "1">1</option>
               <option value = "2">2</option>
               <option value = "3">3</option>
            </select>
        </li><li>
            <input type="submit" value="Vpiši" name="submit" id="submitgrade" />
        </li>
        <li>
            <?php if(isset($_GET['w']) && $_GET['w']==1){ print "<li style='margin-left:130px'>Uporabnik se ni vpisal na ta izpit</li>";} ?>
            <?php if(isset($_GET['w']) && $_GET['w']==2){ print "<li style='margin-left:130px'>Neuspesen vpis</li>";} ?>
            <?php if(isset($_GET['w']) && $_GET['w']==3){ print "<li style='margin-left:130px'>Uspesno vpisano</li>";} ?>
        </li>
      </ul>
    </form>
</div>