<?php

function is_logged_in(){
    if(isset($_SESSION['user'])){
        return TRUE;
    }/*
    if(!isset($_SESSION['user'])&&isset($_COOKIE['user'])){ //naredi sejo ce ima cookie
        global $dbh;
        $q = $dbh->prepare('SELECT * FROM uporabnik WHERE cookie=:cookie LIMIT 0,1');
        $q->execute(array(':cookie' => $_COOKIE['user']));
        if($q->rowCount()==1){
            while($row = $q->fetch(PDO::FETCH_ASSOC)) {
                $id=      $row['id']    ;
            }
            $_SESSION['user']=$id;

            return TRUE;
        }
    }*/
    return FALSE;
}

function user_rights(){
    if(is_logged_in()) {
            $user=$_SESSION['user'];
           $query = mysql_query("SELECT * FROM user WHERE id='$user'") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako! $user");
            while ( $row = mysql_fetch_assoc( $query ) )
            {
               return $row['status'];
            }
    }
    return 0;
}
function login($user,$passwd,$remember){
    $query = mysql_query("SELECT * FROM user WHERE id='$user' and passwd='$passwd'") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako! $user");

    while ( $row = mysql_fetch_assoc( $query ) )
    {
       if($row['status']>0){
           $_SESSION['user']=$row['id'];
           if($remember=="yes"){
               setcookie("cid", $row['id'], time()+(3600)*24*7);
               setcookie("cpass", $row['passwd'], time()+(3600)*24*7);
           }
           else{
               setcookie("cid", "", time()+(3600)*24*7);
               setcookie("cpass", "", time()+(3600)*24*7);
           }
           return TRUE;
       }
    }
    return FALSE;
}
?>