<!DOCTYPE html>
<html lang="en">
  <head>
    <title><?= $title ?></title>
    <meta charset="utf-8"> 
  	<style>
  		html {width:100%;height:100%;}
  		body {margin:0;width:100%;height:100%;background-image: url(films.jpg);background-size: 100% 100%;  min-width:74%;}
  		.table1 { position:absolute; width:50%; height:45%;	top: 2%; margin-left:25%; background:rgba(0,0,0,.7);
      box-shadow: 4px 4px 8px rgba(0,0,0,.5);}
  		.table2 {position:absolute; width:97%; height:80%;	top: 3%; margin-left:1%;}
      .table3 {
        position:absolute;
        margin-left:5%;
        top: 20%;
        width:90%;
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        color: #000;
        text-align: left;
        border-collapse: collapse;
        border-radius: 20px;
        box-shadow: 0 0 0 10px #F2906B;
      }
      b{color:red;}
  		p {color:white; font-size: 25pt;}      
      .left1 {
        position:absolute; 
        margin-left:15%;
        margin-top:0%;
      }
      .left {
       
        display: inline-block;
  			color: white;
  			text-decoration: none;
  			padding: .7em 5em;
  			outline: none;
  			border-width: 2px 0;
  			border-style: solid none;
  			border-color: #FDBE33 #000 #D77206;
  			border-radius: 6px;
  			background: linear-gradient(#F3AE0F, #E38916) #E38916;
  			transition: 0.2s;
      }
      .addbutton{
  			display: inline-block;
  			color: white;
  			text-decoration: none;
  			padding: .7em 5em;
  			outline: none;
  			border-width: 2px 0;
  			border-style: solid none;
  			border-color: #FDBE33 #000 #D77206;
  			border-radius: 6px;
  			background: linear-gradient(#F3AE0F, #E38916) #F3AE0F;
  			transition: 0.2s;
        margin-top: 30%; 
        margin-left:45%
      } 
			.addbutton:hover { background: linear-gradient(#f5ae00, #f59500) #f5ae00;}
			.addbutton:active { background: linear-gradient(#f59500, #f5ae00) #f59500;}     
      
			.th1 {
        padding: 10px 8px;
        background: white;
      }
			.th1:first-child {
				border-top-left-radius: 20px;
			}
			.th1:last-child {
				border-top-right-radius: 20px;
			}
			.td1 {
				border-top: 10px solid #F2906B;
				padding: 8px;
				background: white;
			}
			.tr1:first-child {
				border-bottom-left-radius: 20px;
			}
			.tr1:last-child {
				border-bottom-right-radius: 20px;
			} 
   	</style>    
	</head>
</html>