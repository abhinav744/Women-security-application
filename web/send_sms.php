<?php

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


// check for post data

$data = json_decode(file_get_contents("php://input"));
$get_field_1 =   ($data->field_1);
$get_field_2 = ($data->field_2);
$get_empid =  ($data->email);


				
$result = mysqli_query($conn,"SELECT * FROM login WHERE email = '$get_empid'");
$Allresponse = mysqli_fetch_array($result);
$get_name = $Allresponse["name"];
$get_status = $Allresponse["field_7"];

$result1 = mysqli_query($conn,"SELECT * FROM details WHERE email = '$get_empid'");
$Allresponse1 = mysqli_fetch_array($result1);
$get_sender_mail = $Allresponse1["field_3"];
$get_image = $Allresponse1["field_4"];

$get_number = $Allresponse1["field_1"];
$get_number_2 = $Allresponse1["field_2"];


	$username = "contact@arudhrainnovations.com";
	$apiKey = urlencode('gFiNovbuwFA-Sq6GSGPLvCfzHKWRcQBbuzlt0ChGEK');

	$numbers = $get_number;
	$numbers1 = $get_number_2;
	
	
	$get_lat = substr($get_field_1, 0,6);
	$get_long = substr($get_field_2,0,6);



	$test = "0";
	$sender = urlencode('AISOFT');
	$message = 'Im '.$get_name.', current location lat '.$get_lat.' and log '.$get_long.'';
	$message = urlencode($message);

	if ($get_status)
	{
		

	$data = array('apikey' => $apiKey, 'numbers' => $numbers, 
	"sender" => $sender, "message" => $message, "test" => $test);
	
	$ch = curl_init('https://api.textlocal.in/send/');
	curl_setopt($ch, CURLOPT_POST, true);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
	$result2 = curl_exec($ch); // This is the result from the API
	curl_close($ch);
	
/*
	$data1 = array('apikey' => $apiKey, 'numbers' => $numbers1, 
	"sender" => $sender, "message" => $message, "test" => $test);
	
	$ch1 = curl_init('https://api.textlocal.in/send/');
	curl_setopt($ch1, CURLOPT_POST, true);
	curl_setopt($ch1, CURLOPT_POSTFIELDS, $data1);
	curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);
	$result3 = curl_exec($ch1); // This is the result from the API
	curl_close($ch1);
	*/
	
//////////////////Mail ////////////////////////////

				/*$message2 = "I am " .$get_name." Current Location Lat & Long ".$get_lat." & " .$get_long." Image -".$get_image."\r\n";
				*/

				$get_gmap = "https://maps.google.com/?q=";
				$message2 = "I am in trouble " .$get_name." sending Current Location Lat & Long ".$get_gmap."".$get_lat.",".$get_long." \r\n Image -".$get_image."\r\n";
				
				$subject = "My Geo Location";	//.$get_order_id."\r\n";

				$from ="womensafety@gmail.com";	// $get_empid;//  // from
				$message3 = wordwrap($message2, 200);
				
				// Send Mail By PHP Mail Function
				$mailto= $get_sender_mail; //$get_sender_mail TO 
				//mail($mailto, $subject, $message3, "From:".$from);
				
//////////////////Mail ////////////////////////////
	
			$response["success"] = 1;	
			echo json_encode($response);

	}
	else {
	
			$response["success"] = 0;	
			echo json_encode($response);
		
	}
?>