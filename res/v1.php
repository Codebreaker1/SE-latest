<html>

<head>

		<link rel="stylesheet" type="text/css" href="ms.css"/>



<style type="text/css">
	.column:nth-child(1) .fill{
		background: blue;
	
		height: <?php echo 50; ?>%;
	}
	.column:nth-child(2) .fill{
		background: yellow;
		height: 50%;
	}
	.column:nth-child(3) .fill{
		background: green;
		height: 60%;
	}
	.column:nth-child(4) .fill{
		background: red;
		height: 80%;
	}
	.column:nth-child(5) .fill{
		background: gray;
		height: <?php echo 80; ?>%;
	}
</style>

</head>

<body>

<div class="chart">
	<div class="column-container">
		<div class="column">
			<div class="fill" style="height: 90 %;"></div>
			<p class="rotulo">NY</p>
		</div>
		<div class="column">
			<div class="fill"></div>
			<p class="rotulo">Boston</p>
		</div>
		<div class="column">
			<div class="fill"></div>
			<p class="rotulo">LA</p>
		</div>
		<div class="column">
			<div class="fill"></div>
			<p class="rotulo">Houston</p>
		</div>
		<div class="column">
			<div class="fill"></div>
			<p class="rotulo">Washington</p>
		</div>
	</div>
</div>


</body>

</html>