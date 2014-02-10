<?php 
require_once("connection.php");
?> 

<!DOCTYPE HTML> 
<html lang="en"> 
<head> 
	<title>Leads Ajax</title>
	<link rel="stylesheet" type="text/css" href="leadsajax.css">
	<script src = "//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	
	<script type = "text/javascript">

	 $(document).ready(function(){
	
	   	$("#fromdatepicker").datepicker(); //Datepicker - From - jQuery UI 
		$("#todatepicker").datepicker(); // Datepicker - To - jQuery UI
	 
	 	$('#form').submit(function(){  //AJAX
	 		
	 		$.post(
				$(this).attr('action'), 
				$(this).serialize(), 
				function(data){ 
					console.log(data); 
					$('#displaydata').html(data); 
				},
				"json" 
			);
	 		return false; 
	 	}); 
	
	 	$('#namefield').keyup(function(){
	 		$('#form').submit(); 	 		 
	 	}); 

	 	$('#fromdatepicker').change(function(){
	 		$('#form').submit(); 
	 	}); 

		 $('#todatepicker').change(function(){
	 		$('#form').submit(); 
	 	});  	
	}); 
	</script> 
	
</head> 
<body> 
 	<div id = "wrapper"> 
 	<!-- Form: First Name, From, To  -->
 		<div id = "formdiv"> 
 			<form id = "form" action = "process.php" method = "post">
 				
 				<label for = "namefield">First Name:</label> 
 				<input id = "namefield" type = "text" name = "namefield" placeholder = "First Name">
 		
 				<label for = "from">From: </label>
 				<input id ="fromdatepicker" type = "text" name = "from" placeholder = "From">
 		
 
 				<label for = "to">To: </label>
 				<input id ="todatepicker" type = "text" name = "to" placeholder = "To">

 				<input id = "submit" type = "submit" value = "Submit"> 
 			</form> 
 		</div> 
 		 <!-- Display data from process.php  -->
 		<table id = "head">
			<thead>
			<tr>
				<th class = "headtitle">Leads ID</th>
				<th class = "headtitle">First Name</th>
				<th class = "headtitle">Last Name</th>
				<th class = "headtitle">Registered Date/Time</th>
				<th id = "emailtitle">Email</th>
			</tr>
			</thead>
		</table>
		<table>
			<tbody>
				<tr>
					<div id="displaydata">  <!-- This is where data will go -->
					</div> 
				</tr>
			</tbody> 
		</table> 
 	</div> <!-- End of wrapper -->
</body> 
</html>  