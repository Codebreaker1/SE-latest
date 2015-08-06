<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<title>Possible Disease for a Particular Factor</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="styles/main.css"/>
	</head>
	<body>
		<!-- css bar graph -->

<?php
   $query = "SELECT Q_ID,Question FROM questions "; 





        $sql = mysql_query($query) or die(mysql_error());

$ques=array();
$f=0;
$g=0;
     while($row=mysql_fetch_array($sql))
     {

        $ques[$f]=$row[1];
        //echo $ques[$f];
        $f++;
     }

		?>


		<?php
   $query = "SELECT options,Option_ID FROM options where Factor_ID=1 AND Q_ID=1"; 





        $sql = mysql_query($query) or die(mysql_error());




		?>

		<div class="css_bar_graph">

<h3>Choose a Lifestyle Factor</h3>
			
			<!-- y_axis labels -->
<form action="sto.php" method="post">

<select name="mask[]" id="asi_pore" multiple> 

<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>

	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>
	 <?php
   $query = "SELECT options,Option_ID FROM options where Factor_ID=1 AND Q_ID=2"; 





        $sql = mysql_query($query) or die(mysql_error());




		?>

		
<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>			
			<!-- y_axis labels -->




	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>


<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>

<?php

$query = "SELECT options,Option_ID FROM options where Factor_ID=1 AND Q_ID=3"; 





        $sql = mysql_query($query) or die(mysql_error());


?>


	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>
<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>


<?php

$query = "SELECT options,Option_ID FROM options where Factor_ID=2 AND Q_ID=4"; 





        $sql = mysql_query($query) or die(mysql_error());

?>

 


	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>


<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>

<?php

$query = "SELECT options,Option_ID FROM options where Factor_ID=3 AND Q_ID=5"; 





        $sql = mysql_query($query) or die(mysql_error());

?>
 


	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>

<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>
<?php

$query = "SELECT options,Option_ID FROM options where Factor_ID=3 AND Q_ID=6"; 





        $sql = mysql_query($query) or die(mysql_error());

?>
 


	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>




<?php

$query = "SELECT options,Option_ID FROM options where Factor_ID=4 AND Q_ID=7"; 





        $sql = mysql_query($query) or die(mysql_error());

?>
 

<option id="opt" selected disabled><?php echo $ques[$g++]; ?></option>
	<?php 


 while($row = mysql_fetch_array($sql) ){		

 echo '<option value='.$row[1].'>'.$row[0].'</option>';
  
 // echo $row[0];

        }


	 ?>


</select>

<input type="submit" name="submit" id="but" value="View" />
</form>


			
		</div>
	</body>
</html>