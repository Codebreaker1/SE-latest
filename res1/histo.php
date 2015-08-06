<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<title>Test reports</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="styles/main.css"/>
	</head>
	<body>
		<!-- css bar graph -->


		<?php
   $query = "SELECT Q_ID,Question FROM questions"; 





        $sql = mysql_query($query) or die(mysql_error());




		?>

		<div class="css_bar_graph">


			
			<!-- y_axis labels -->
<form action="ms.php" method="post">

<h3> Select A question and a corresponding Test</h3>
<select name="mask[]" id="asi_pore" multiple> // Initializing Name With An Array


	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[0].'>'.$row[1].'</option>';
  
 // echo $row[0];

        }


	 ?>


</select>

    <?php
$query = "SELECT * FROM tests"; 
        $sql = mysql_query($query) or die(mysql_error());

    

        ?>

    <select name="mask1[]" id="asi1" multiple>

      <?php 

 while($row = mysql_fetch_array($sql) ){    

 echo '<option value='.$row[0].'>'.$row[1].'</option>';
  
 // echo $row[0];

 }

      ?>
</select>
<input type="submit" name="submit" id="but" value="View" />
</form>


			
		</div>
	</body>
</html>