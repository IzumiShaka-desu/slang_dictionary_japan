<?php
include 'connection.php';
$queRes =$connect->query("SELECT * FROM `list_word`");
$result=Array();
while($data=$queRes->fetch_assoc()){
    $result[]=$data;
}
echo json_encode($result);
?>