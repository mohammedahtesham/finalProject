<?php
mysql_connect("localhost","root","");
mysql_select_db("schoolms");
$query=  mysql_query("SELECT * FROM class");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html><head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type"><title>xyz.php</title>
<script type="text/javascript">
function getdata()
{
    var id=document.getElementById("class_name").value;
    document.getElementById("form1").submit();
}




</script>
</head><body>
<div>Select Class&nbsp;&nbsp;
    <form action="xyz.php" method="post " name="form1">
        
    <select name="class_name" id="class_name" >
        <option selected="selected">------</option>
        <?php
                while($res=  mysql_fetch_array($query))
                {
                    echo"<option value=".$res['class_id'].">".$res['name']."</option>";
                }
            ?>
    </select>
        <input type="submit" value="Select"/>
  </form>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp; &nbsp;Date<input name="date" type="date"> <br></div>
    <div>
        <?php
        if($_POST["class_name"]=='1')
        {
            echo "hello";
            $query1=  mysql_query("select name from student where class_id='$_POST[class_name]'");
         ?>
        <table>
           
            <th>Student Name</th>
            <th>Attendace</th>
            <th>Reason</th>
            
            
        <?php
                while($dn1=  mysql_fetch_array($query1))
                {
       ?>
                <td><?php echo $dn1['name'];?></td>
                <td></td>
                <td></td>
                       
       <?php 
                
                }
                
                echo "</table>";
        }
        
        ?>
                
        
    </div>
</body></html>