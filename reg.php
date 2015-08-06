<?php include('header.php'); ?>
<?php include('dbconn.php'); ?>

<?php
error_reporting(0);
session_start();
if (!isset($_SESSION['user'])) {
    header('location:logout.php');
}
$userID = $_SESSION['id'];
$username = $_SESSION['user'];

//echo $username;

?>
<script>

/*jQuery time*/
$(document).ready(function(){
  $("#accordian h3").click(function(){
    //slide up all the link lists
    $("#accordian ul ul").slideUp();
    //slide down the link list below the h3 clicked - only if its closed
    if(!$(this).next().is(":visible"))
    {
      $(this).next().slideDown();
    }
  })
})


</script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<head>
<link rel="stylesheet" type="text/css" href="a.css">

</head>


 <div class="testbox">

  <div class="table">
    <ul id="horizontal-list">
      <li><a href="navigation.php">home</a></li>
      <li><a href="logout.php">Logout</a></li>
     
    </ul>
  </div>
  <h1>Reports</h1>

    <form name="regiForm" class="form-horizontal" method="POST" action="insert.php">

      <?php

$query = "SELECT MAX(PID) as max FROM test_records"; 
 $sql = mysql_query($query) or die(mysql_error());
$row = mysql_fetch_array( $sql );
$newpid=$row['max'];

$query = "SELECT Test_Name FROM tests";
$sql = mysql_query($query) or die(mysql_error());

$item=array();
$i=0;
while($row = mysql_fetch_array( $sql ))
{
   $item[$i++]=$row[0];
}

$j=0;
      ?>

     
   
  <input type="text" name="id" id="id" placeholder="Patient id" required/>
  <h5> <?php echo $item[$j++]; ?></h5>
  <input type="text" name="password" id="password" placeholder="result" />
<h5> <?php echo $item[$j++]; ?></h5>
<input type="text" name="contact" id="name" placeholder="result" />
  <h5> <?php echo $item[$j++]; ?></h5>
  <input type="text" name="branch" id="branch" placeholder="result" />
<h5> <?php echo $item[$j++]; ?></h5>
<input type="text" name="tai" id="tai" placeholder="result" />
  
   

 <button type="submit" class="button">Register</button>
</div>




<?php include('footer.php'); ?>