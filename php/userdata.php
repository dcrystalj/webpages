<?php
    $user=$_SESSION['user'];
    $query = mysql_query("SELECT * FROM user WHERE id='$user'") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako! $user");
    $row = mysql_fetch_assoc( $query );
     $row['status'];

?>
<div>
        <?php print $row['name']; ?><br />
        <?php print $row['surname']; ?>
        <small><?php print $row['mail']; ?></small>
    </div>
    <div class="imagewithcaption">
        <img src="images/<?php print $user; ?>.png" alt="userimage" id="userimage"/>
        <div class="caption">
            <?php
                if(user_rights()==1){
                    ?><p id="imagecaption1">Status: Študent</p><?php
                }
                else if(user_rights()==2){
                    ?><p id="imagecaption1">Status: Admin</p><?php
                }
             ?>
        </div>
    </div>
    <time datetime="<?php print date("Y-m-d"); ?>"><?php print date("F j, Y"); ?></time>