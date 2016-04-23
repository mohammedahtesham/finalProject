<?php
include('config.php');
include 'getdata.php';
if($_POST['sms_sender']!='' && $_POST['text']!='')
{
    $sender=$_POST['sms_sender'];
    $message=$_POST['text'];
    switch ($sender)
    {
        case 'all':
            //echo $sender;
            //echo $message;
            $query="SELECT phone FROM student UNION SELECT phone FROM parent UNION SELECT phone FROM teacher";
            $req1=  mysql_query($query);
            $row= mysql_num_rows($req1);
            $req2=  mysql_fetch_array($req1);
                for($i=1;$i<=$row;$i++)
                {
                    echo $req2['phone']."<br>";
                    echo $message;
                }
            exit();
        case 'teachers':
            $query="SELECT phone FROM teacher";
            $req1=  mysql_query($query);
            $row=  mysql_num_rows($req1);
            $req2=  mysql_fetch_array($req1);
                for($i=1;$i<=$row;$i++)
                {
                    echo $req2['phone']."<br>";
                    echo $message;
                }
                exit();
        case 'fee_defaluter':
            $query="SELECT S.phone FROM student as S, invoice as I WHERE S.student_id=I.student_id AND I.status='unpaid'";
            $req1=  mysql_query($query);
            $row=  mysql_num_rows($req1);
            $req2=  mysql_fetch_array($req1);
                for($i=1;$i<=$row;$i++)
                {
                    echo $req2['phone']."<br>";
                    echo $message;
                    //display($message);
                    
                }
                exit();
        case 'students':
            $query="SELECT S.phone FROM student as S, class as C WHERE S.class_id=C.class_id AND C.class_id='$_POST[class_name]'";
            $req1=  mysql_query($query);
            $row=  mysql_num_rows($req1);
            $req2=  mysql_fetch_array($req1);
                for($i=1;$i<=$row;$i++)
                {
                    echo $req2['phone']."<br>";
                    echo $message;
                    //display($message);
                    
                }
                exit();
        case 'parents':
            $query="SELECT phone FROM parent";
            $req1=  mysql_query($query);
            $row=  mysql_num_rows($req1);
            $req2=  mysql_fetch_array($req1);
                for($i=1;$i<=$row;$i++)
                {
                    echo $req2['phone']."<br>";
                    echo $message;
                    
                    
                }
                exit();
        case 'specific':
                    echo $_POST['number']."<br>";
                    echo $message;
                    exit();
    }       
    
}
else
{
    echo "Please provide the valid details";
}





?>
