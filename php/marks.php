<h1> Ocene </h1>
<div id="conty">
    <?php
    $username = $_SESSION['user'];
    $query = mysql_query("SELECT * FROM mark WHERE user=$username") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
    ?>
     <table onmouseover="ajaxDescription(event)">
        <thead>
            <tr>
                <th colspan="3" id="applysubject">Predmet</th>
                <th id="year">Letnik</th>
                <th id="grade">Ocena</th>
            </tr>
       </thead>
       <tbody id="xmlmarks">
           <?php
             $i=1;
             $list=array();
             while ( $row = mysql_fetch_assoc( $query ) )            {
               $subject=$row['subject'];
               $year=$row['year'];
               $grade=$row['mark'];
               mysql_query("SET NAMES 'utf8' COLLATE 'utf8_slovenian_ci' ");
               mysql_query("SET CHARACTER SET 'utf8_slovenian_ci' ");
               $query1 = mysql_query("SELECT * FROM subject WHERE id=$subject") or die ("Z bazo je nekaj narobe. Prosimo, javite nam napako!");
               while ( $row = mysql_fetch_assoc($query1)){$name=$row['name'];}
               $dict=array(
                   "subject"=>$subject,
                   "year"=>$year,
                   "grade"=>$grade,
                   "name"=>$name
               );
               $list[]=$dict;
               $i++;
            }
            $subjects=array();
            foreach ($list as $key => $row) {
                $subjects[$key]  = $row['subject'];
            }

            //asort($list);
            array_multisort($subjects,SORT_NUMERIC,$list);
            for ($i=0;$i<count($list);$i++){
                print( "<tr><td>" . ($i+1) . "</td><td>" . $list[$i]['subject'] . "</td><td onmouseover='description(event)'>" . $list[$i]['name'] . "</td><td>" . $list[$i]['year'] . "</td><td>" . $list[$i]['grade'] . "</td></tr>" );
            }
            ?>
       </tbody>
    </table>
    <div id="descriptions">

    </div>
</div>
<script type = "text/javascript"  src = "static/prikazocen.js" ></script>