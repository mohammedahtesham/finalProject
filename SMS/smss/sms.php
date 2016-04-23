<?php
include 'config.php';


?>
<html>
    <head>
        <title>SMS Services</title>
        <script type="text/javascript">
            function show()
            {
                document.getElementById('msg').style.display='block';
                document.getElementById('send').style.display='block';
                 document.getElementById('class_drop').style.display='none'
                 document.getElementById('num').style.display='none';
               
            }
            function show_ip()
            {
                   document.getElementById('num').style.display='block'; 
                   document.getElementById('msg').style.display='block';
                    document.getElementById('send').style.display='block';
            }
            function getStudents()
            {
                document.getElementById('class_drop').style.display='block'
                document.getElementById('msg').style.display='block';
                 document.getElementById('send').style.display='block';
        /* var xmlhttp;
                try
                {
                    xmlhttp=new XMLHttpRequest;
                }
                catch(e)
                {
                    xmlhttp=new ActiveXobject ("Microsoft.XMLHttp");
                }
                if(xmllhttp)
                    {
                        var form=document['sms_form'];
                        var type=form['sms_sender'].value; 
                        xmlhttp.open('GET',"http://localhost:8082/smss/getdata.php?type="+type,tru);
                        
                        xmlhttp.onreadystatechange=function()
                        {
                            if(this.readyState==4)
                                {
                                    alert(this.responseText);
                                }
                        }
            
                        xmlhttp.send(null);
                        
                    }*/
            }
        </script>
            
    </head>
    <body>
        <form action="sms_validate.php" method="post" name="sms_form">
        <input type="radio" name="sms_sender" value="all" onclick="show();">All(Students/Employees/Parents)
        <input type="radio" name="sms_sender" value="teachers" onclick="show();">Teachers
        <input type="radio" name="sms_sender" value="students" onclick="getStudents();">Stundents
        <input type="radio" name="sms_sender" value="parents" onclick="show();">Parents
        <input type="radio" name="sms_sender" value="fee_defaluter"onclick="show();">Fee Defaulters
        <input type="radio" name="sms_sender" value="specific"onclick="show_ip();">Indiviusal
        <input type="text" name="number" id="num" style="display: none"placeholder="Mobile Number"/>
       
            <?php
            echo " <div id='class_drop' name='class_drop' style='display: none'>";
$res=  mysql_query("SELECT class_id,name FROM class");
//echo mysql_num_rows($res);
echo"<select name='class_name' id='cname' onChage='show();'>";
echo"<option >----Select Student Class---</option>";
while($r=mysql_fetch_array($res))
{
    
echo"<option  value=".$r['class_id'].">".$r['name']."</option>";    
    
    
}
echo "</select></div>";

?>
        <textarea rows="5"  cols="20" id="msg" name="text" style="display: none" placeholder="Message to be sent...."></textarea>
        <button id="send" style="display: none">Send </button>
        </form>
    </body>
    
</html>

