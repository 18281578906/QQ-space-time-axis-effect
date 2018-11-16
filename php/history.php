<?php
require_once ('connect.php');
$type=$_GET['type'];
switch ($type)
{
    case "add":
        $date=$_POST['date'];
        $time=$_POST['time'];
        $word=$_POST['text'];
        $sql="insert into history(date,time,word) values ('$date','$time','$word')";
        $res=mysqli_query($link,$sql);
        if($res)
        {
            header("HTTP/1.1 200");
            echo "插入成功";
        }
        else{

            header("HTTP/1.1 401");
            echo "插入失败";
        }
        break;
    case 'show':
        $sql="select * from history";
        $res=mysqli_query($link,$sql);
        $data=array();
        while($row=mysqli_fetch_assoc($res)){
            $data[]=$row;
        }
        echo json_encode($data);
        break;
}
