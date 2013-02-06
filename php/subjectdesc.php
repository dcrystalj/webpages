    <?php
    require 'connect.php';
    mysql_query("SET NAMES 'utf8' COLLATE 'utf8_slovenian_ci' ");
    mysql_query("SET CHARACTER SET 'utf8_slovenian_ci' ");

    $query = mysql_query("SELECT * FROM subject") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
    $descriptions=array();
    while ( $row = mysql_fetch_assoc( $query ) )
    {
        $descriptions[]=array("id"=>$row['id'],"description"=>$row['description']);
    }
         //print "<p id='" . $row['id'] . "' style='display:none'>" . $row['description'] . "</p>" ;
    print(json_encode($descriptions,JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));
    ?>