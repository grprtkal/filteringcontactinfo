<?php
require("connection.php");
 
$data_array = array(); 


if($_POST)
{
	//if first name is not empty and form is submitted 
	if(isset($_POST['namefield']) && ($_POST['namefield'] != '')) 
	{
		$html = NULL;

		$query = "SELECT * FROM leads WHERE first_name LIKE '{$_POST['namefield']}%' OR last_name LIKE '{$_POST['namefield']}%'";

		$leads = fetchAll($query);
		 

		foreach ($leads as $lead)
		{ 
		$html .= "<tr>";  
		$html .= "<td>" . $lead['leads_id'] . "</td>";
		$html .= "<td>" . $lead['first_name'] . "</td>"; 
		$html .= "<td>" . $lead['last_name'] . "</td>";
		$html .= "<td>" . $lead['registered_datetime'] . "</td>";
		$html .= "<td>" . $lead['email'] . "</td>";
		$html .= "</tr>"; 	
		} 	
	}

	//isset means that the user has submitted the form; != '' means that the from field is not empty 
	//in this case, if the from field is filled and submitted, but to field is empty, execute the query 
	elseif(isset($_POST['from']) && ($_POST['from'] != '') && (empty($_POST['to'])))
	{
		$html = NULL;

		$_POST['from'] = date("Y-m-d", strtotime($_POST['from']));
		
		$query = "SELECT * FROM leads WHERE registered_datetime BETWEEN '{$_POST['from']}' AND '2016-01-01'"; 
		

		$fromdates = fetchAll($query); 

		
		foreach ($fromdates as $fromdate)
		{ 
			$html .= "<tr>";  
			$html .= "<td>" . $fromdate['leads_id'] . "</td>";
			$html .= "<td>" . $fromdate['first_name'] . "</td>"; 
			$html .= "<td>" . $fromdate['last_name'] . "</td>";
			$html .= "<td>" . $fromdate['registered_datetime'] . "</td>";
			$html .= "<td>" . $fromdate['email'] . "</td>";
			$html .= "</tr>"; 	
		} 	
	}

	// if from date is empty but the to date is set and submitted 
	elseif(empty($_POST['from']) && isset($_POST['to']) && ($_POST['to'] != ''))
	{

		$html = NULL;

		$_POST['to'] = date("Y-m-d H:i:s", strtotime($_POST['to']));

		$query = "SELECT * FROM leads WHERE registered_datetime BETWEEN '1800-01-01' and '{$_POST['to']}'"; 
		

		$todates = fetchAll($query); 


		foreach ($todates as $todate)
			{ 
				$html .= "<tr>";  
				$html .= "<td>" . $todate['leads_id'] . "</td>";
				$html .= "<td>" . $todate['first_name'] . "</td>"; 
				$html .= "<td>" . $todate['last_name'] . "</td>";
				$html .= "<td>" . $todate['registered_datetime'] . "</td>";
				$html .= "<td>" . $todate['email'] . "</td>";
				$html .= "</tr>"; 	
			} 	
		 
	}
	elseif(isset($_POST['from']) && ($_POST['from'] != '') && isset($_POST['to']) && ($_POST['to'] != ''))
	{

		$html = NULL;

		$_POST['from'] = date("Y-m-d", strtotime($_POST['from']));
		$_POST['to'] = date("Y-m-d H:i:s", strtotime($_POST['to']));

		$query = "SELECT * FROM leads WHERE registered_datetime BETWEEN '{$_POST['from']}' AND '{$_POST['to']}'"; 	

		$fromtodates = fetchAll($query); 

		foreach ($fromtodates as $fromtodate)
			{ 
				$html .= "<tr>";  
				$html .= "<td>" . $fromtodate['leads_id'] . "</td>";
				$html .= "<td>" . $fromtodate['first_name'] . "</td>"; 
				$html .= "<td>" . $fromtodate['last_name'] . "</td>";
				$html .= "<td>" . $fromtodate['registered_datetime'] . "</td>";
				$html .= "<td>" . $fromtodate['email'] . "</td>";
				$html .= "</tr>"; 	
			} 	
	}		
} 

$data_array['html'] = $html; 
$data_array['xyz'] = "hello"; //we can have more than one variable that goes into our empty array and then echo out the specific array that we want! so cool!
							 //if we wanted to encode "hello" in json, then specify $xyz in json_encode 
							 //if we wanted to encode all the variables we input in the empty array, then just call the array in json (i.e. echo json_encode($data_array);)

echo json_encode($html); 

?> 