<?php 
$title =  "Select film||Выбери фильм";
include 'header.php';

if ($_SERVER['REQUEST_METHOD'] === 'GET')
{
  $title = "Select film||Выбери фильм";
  include 'index1.php';
}

elseif ($_SERVER['REQUEST_METHOD'] === 'POST')
{
  header('Location: main.php');
  exit();  
}  
  
else
{
	include 'index1.php';
}
?>