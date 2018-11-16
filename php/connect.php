<?php
header("content-type:test/html;charset=utf8");
$link=mysqli_connect("127.0.0.1",'root','','time');
if(!$link)
{
    echo "数据库链接失败";
}