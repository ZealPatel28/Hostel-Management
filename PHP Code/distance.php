<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
</head>
<body>
	 <?php
    $zipcode1="380013";
    $zipcode2="380026";
    $url = "http://maps.googleapis.com/maps/api/geocode/json?address=".$zipcode1."&sensor=false";
    $details=file_get_contents($url);
    $result = json_decode($details,true);

    $lat1=$result['results'][0]['geometry']['location']['lat'];

    $lng1=$result['results'][0]['geometry']['location']['lng'];

    echo "Latitude :" .$lat1;
    echo '<br>';
    echo "Longitude :" .$lng1;
	
	echo '<br>';
	echo '<br>';
	
	$url = "http://maps.googleapis.com/maps/api/geocode/json?address=".$zipcode2."&sensor=false";
    $details=file_get_contents($url);
    $result = json_decode($details,true);

    $lat2=$result['results'][0]['geometry']['location']['lat'];

    $lng2=$result['results'][0]['geometry']['location']['lng'];

    echo "Latitude :" .$lat2;
    echo '<br>';
    echo "Longitude :" .$lng2;
		
	function distance($lat1, $lon1, $lat2, $lon2, $unit) {

	  $theta = $lon1 - $lon2;
	  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
	  $dist = acos($dist);
	  $dist = rad2deg($dist);
	  $miles = $dist * 60 * 1.1515;
	  $unit = strtoupper($unit);

	  if ($unit == "K") {
		return ($miles * 1.609344);
	  } else if ($unit == "N") {
		return ($miles * 0.8684);
	  } else {
		return $miles;
	  }
	}

	echo '<br>';
	echo '<br>';
	echo distance($lat1, $lng1, $lat2, $lng2, "M"). " Miles<br>";
	echo distance($lat1, $lng1, $lat2, $lng2, "K"). " Kilometers<br>";
	echo distance($lat1, $lng1, $lat2, $lng2, "N"). " Nautical Miles<br>";

	?>
</body>
</html>	