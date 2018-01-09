<?php
$title = "Выбери фильм || Все фильмы";
include 'header.php';
$pdo = new PDO('mysql:host=127.0.0.1;dbname=selectfilm45;charset=utf8', 'selectfilm45', 'bWuPs80o');

$sql = $pdo->query('SELECT * FROM `info_movie`;');
$sql->execute();

$datas = [];

  while ($data = $sql->fetch())
   {
     $datas[] = $data;
   }
?>

  <center>
  <div class = "left1">  
    <a href = "genre.php" class = "left">По жанрам</a>
    <a href = "time.php" class = "left">По длительности</a>
    <a href = "rating.php" class = "left">По рейтингу</a>
    <a href = "year.php" class = "left">По году</a>
  </div>
  
  <table class = "table3" border=0>  
    <tr >
    	<th class ="th1" width=20>№</th>
    	<th class ="th1" width=100>Название</th>
    	<th class ="th1" width=50>Год</th>
    	<th class ="th1" width=100>Режиссер</th>
    	<th class ="th1" width=100>Жанр</th>
    	<th class ="th1" width=400>Актеры</th>
    	<th class ="th1" width =100>Страна</th>                  
    </tr>
  <?php 
		foreach ($datas as $num)
			{ ?>
      		<tr class = "tr1"> 
          <td class ="td1"><?=$num['id']?></td>            
          <td class ="td1"><?=$num['name']?></td>
        	<td class ="td1"><?= $num['year']?></td>          
        	<td class ="td1"><?=$num['name_director']?></td>
        	<td class ="td1"><?= $num['genres_movie']?></td>        
        	<td class ="td1"><?= $num['cast_movie']?></td>
					<td class ="td1"><?= $num['country'];}?></td></tr></table></center>
