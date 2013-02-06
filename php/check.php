<?php
session_start();
if(isset($_POST['submit'])){
        require 'connect.php';
        $check = $_POST['check'];
        $user= $_SESSION['user'];
        foreach ($check as $value) {
            $write = mysql_query("INSERT INTO exam VALUES ('','$value',$user)");
        }
        if($write)
            header("Location: index.php?page=check&w=1");
        else
             header("Location: index.php?page=check");

}
?>
<h1 id="applytoexam"> Prijava na izpit </h1>
    <div id="conty">
        <form action="check.php" method="POST">
            <ul>
                    <?php
                    if(isset($_GET['w']) && $_GET['w']==1){ print "<li style='margin-left:130px'>uspesno vpisano</li>";}
                    ?>
                <li>
                    <span id="applysubject">Predmet</span>

                     <select name="myList" id = "myList" >
                        <?php
                        $user = $_SESSION['user'];
                        $query = mysql_query("SELECT subject.id, subject.name FROM subject LEFT JOIN mark ON subject.id=mark.subject WHERE subject.examon=1 and subject.id NOT IN (select mark.subject FROM mark WHERE mark.user=$user) AND subject.id NOT IN (select subject from exam where user=$user) ") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
                        while ( $row = mysql_fetch_assoc( $query ) )
                        {
                            print "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                        }
                        ?>
                     </select>
                </li>
                <li>
                    <button style="margin-left:125px" id="choose">izberi</button>
                </li>
            </ul>
            <ul id="choosen">

            </ul>

            <?php
                if(mysql_num_rows($query)==0){
                    ?><input type="submit" value="Prijavi se" name="submit" id="submitgrade" style="margin-left:175px !important" disabled /><?php
                }
                else{
                    ?><input type="submit" value="Prijavi se" name="submit" id="submitgrade" style="margin-left:175px !important" /><?php
                }
             ?>
        </form>

    </div>