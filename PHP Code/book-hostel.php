<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for registration
if(isset($_POST['submit']))
{
$roomno=$_POST['room'];
$seater=$_POST['seater'];
$feespm=$_POST['fpm'];
$foodstatus=$_POST['foodstatus'];
$stayfrom=$_POST['stayf'];
$duration=$_POST['duration'];
$course=$_POST['course'];
$regno=$_POST['regno'];
$fname=$_POST['fname'];
$mname=$_POST['mname'];
$lname=$_POST['lname'];
$gender=$_POST['gender'];
$contactno=$_POST['contact'];
$emailid=$_POST['email'];
$emcntno=$_POST['econtact'];
$gurname=$_POST['gname'];
$gurrelation=$_POST['grelation'];
$gurcntno=$_POST['gcontact'];
$caddress=$_POST['address'];
$ccity=$_POST['city'];
$cstate=$_POST['state'];
$cpincode=$_POST['pincode'];
$paddress=$_POST['paddress'];
$pcity=$_POST['pcity'];
$pstate=$_POST['pstate'];
$ppincode=$_POST['ppincode'];
$query="insert into  registration(roomno,seater,feespm,foodstatus,stayfrom,duration,course,regno,firstName,middleName,lastName,gender,contactno,emailid,egycontactno,guardianName,guardianRelation,guardianContactno,corresAddress,corresCIty,corresState,corresPincode,pmntAddress,pmntCity,pmnatetState,pmntPincode) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('iiiisisissssisississsisssi',$roomno,$seater,$feespm,$foodstatus,$stayfrom,$duration,$course,$regno,$fname,$mname,$lname,$gender,$contactno,$emailid,$emcntno,$gurname,$gurrelation,$gurcntno,$caddress,$ccity,$cstate,$cpincode,$paddress,$pcity,$pstate,$ppincode);
$stmt->execute();
echo"<script>alert('Student Succssfully register');</script>";
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Student Hostel Registration</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script>
function getSeater(val) {
$.ajax({
type: "POST",
url: "get_seater.php",
data:'roomid='+val,
success: function(data){
//alert(data);
$('#seater').val(data);
}
});

$.ajax({
type: "POST",
url: "get_seater.php",
data:'rid='+val,
success: function(data){
//alert(data);
$('#fpm').val(data);
}
});
}
</script>

</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Registration </h2>

						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-primary">
									<div class="panel-heading">Fill all Info</div>
									<div class="panel-body">
										<form method="post" action="" class="form-horizontal">
							<?php
$uid=$_SESSION['login'];
							 $stmt=$mysqli->prepare("SELECT emailid FROM registration WHERE emailid=? ");
				$stmt->bind_param('s',$uid);
				$stmt->execute();
				$stmt -> bind_result($email);
				$rs=$stmt->fetch();
				$stmt->close();
				if($rs)
				{ ?>
			<h3 style="color: red" align="left">Hostel already booked by you</h3>
				<?php }
				else{
							echo "";
							}			
							?>			
<div class="form-group">
<label class="col-sm-4 control-label"><h4 style="color: green" align="left">Room Related info </h4> </label>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">College Name. </label>
<div class="col-sm-3">
<select name="room" id="room" class="form-control"  required>
<option value="">Select College</option>
<?php $query ="SELECT * FROM cllg";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->name;?>"> <?php echo $row->name;?></option>
<?php } ?>
</select> 
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Pincode</label>
<div class="col-sm-2">
<input type="text" name="seater" id="seater"  class="form-control"  >
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Hostel Name. </label>
<div class="col-sm-2">
<select name="room" id="room" class="form-control"  required>
<option value="">Choice 1</option>
<?php $query ="SELECT * FROM rooms";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->hname;?>"> <?php echo $row->hname;?></option>
<?php } ?>
</select> 
<span id="room-availability-status" style="font-size:12px;"></span>

</div>



<div class="col-sm-2">
<select name="room" id="room" class="form-control"  required>
<option value="">Choice 2</option>
<?php $query ="SELECT * FROM rooms";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->hname;?>"> <?php echo $row->hname;?></option>
<?php } ?>
</select> 
<span id="room-availability-status" style="font-size:12px;"></span>

</div>



<div class="col-sm-2">
<select name="room" id="room" class="form-control"  required>
<option value="">Choice 3</option>
<?php $query ="SELECT * FROM rooms";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->hname;?>"> <?php echo $row->hname;?></option>
<?php } ?>
</select> 
<span id="room-availability-status" style="font-size:12px;"></span>

</div>
</div>
<!--<div class="form-group">
<label class="col-sm-2 control-label">Choose Hostel.</label>
<div class="col-sm-8">
<input type="checkbox" name="seater" id="seater"  class="form-control">
</div>
</div>-->
<!--
<div class="form-group">
<label class="col-sm-2 control-label">Fees Per Month</label>
<div class="col-sm-8">
<input type="text" name="fpm" id="fpm"  class="form-control" >
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Food Status</label>
<div class="col-sm-8">
<input type="radio" value="0" name="foodstatus" checked="checked"> Without Food
<input type="radio" value="1" name="foodstatus"> With Food(Rs 2000.00 Per Month Extra)
</div>
</div>	

<div class="form-group">
<label class="col-sm-2 control-label">Stay From</label>
<div class="col-sm-8">
<input type="date" name="stayf" id="stayf"  class="form-control" >
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Duration</label>
<div class="col-sm-8">
<select name="duration" id="duration" class="form-control">
<option value="">Select Duration in Month</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
</select>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Total Amount</label>
<div class="col-sm-8">
<input type="text" name="ta" id="ta"  class="result form-control" >
</div>
</div>
-->
<div class="form-group">
<label class="col-sm-2 control-label"><h4 style="color: green" align="left">Personal info </h4> </label>
</div>

<!--<div class="form-group">
<label class="col-sm-2 control-label">course </label>
<div class="col-sm-8">
<select name="course" id="course" class="form-control" required> 
<option value="">Select Course</option>
<?php $query ="SELECT * FROM courses";
$stmt2 = $mysqli->prepare($query);
$stmt2->execute();
$res=$stmt2->get_result();
while($row=$res->fetch_object())
{
?>
<option value="<?php echo $row->course_fn;?>"><?php echo $row->course_fn;?>&nbsp;&nbsp;(<?php echo $row->course_sn;?>)</option>
<?php } ?>
</select> </div>
</div>
-->
<?php	
$aid=$_SESSION['id'];
	$ret="select * from userregistration where id=?";
		$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('i',$aid);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>

<div class="form-group">
<label class="col-sm-2 control-label">Aadhar Card No : </label>
<div class="col-sm-8">
<input type="text" name="regno" id="regno"  class="form-control" value="<?php echo $row->regNo;?>" readonly >
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Name : </label>
<div class="col-sm-8">
<input type="text" name="fname" id="fname"  class="form-control" value="<?php echo $row->firstName;?>" readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Date Of Birth: </label>
<div class="col-sm-8">
<input type="text" name="dob" id="dob"  class="form-control" value="<?php echo $row->dob;?>" readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Gender : </label>
<div class="col-sm-8">
<input type="text" name="gender" value="<?php echo $row->gender;?>" class="form-control" readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Contact No : </label>
<div class="col-sm-8">
<input type="text" name="contact" id="contact" value="<?php echo $row->contactNo;?>"  class="form-control" readonly>
</div>
</div>


<div class="form-group">
<label class="col-sm-2 control-label">Email id : </label>
<div class="col-sm-8">
<input type="email" name="email" id="email"  class="form-control" value="<?php echo $row->email;?>"  readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Street : </label>
<div class="col-sm-8">
<input type="text" name="street" id="street"  class="form-control" value="<?php echo $row->street;?>"  readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Area : </label>
<div class="col-sm-8">
<input type="text" name="area" id="area"  class="form-control" value="<?php echo $row->area;?>"  readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">District : </label>
<div class="col-sm-8">
<input type="text" name="district" id="district"  class="form-control" value="<?php echo $row->district;?>"  readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">state : </label>
<div class="col-sm-8">
<input type="text" name="state" id="state"  class="form-control" value="<?php echo $row->state;?>"  readonly>
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Pincode : </label>
<div class="col-sm-8">
<input type="text" name="pincode" id="pincode"  class="form-control" value="<?php echo $row->pincode;?>"  readonly>
</div>
</div>
<?php } ?>
<div class="form-group">
<label class="col-sm-2 control-label">Emergency Contact: </label>
<div class="col-sm-8">
<input type="text" name="econtact" id="econtact"  class="form-control" required="required">
</div>
</div>

<div class="form-group">
<label class="col-sm-2 control-label">Guardian  Name : </label>
<div class="col-sm-8">
<input type="text" name="gname" id="gname"  class="form-control" required="required">
</div>
</div>






<div class="col-sm-6 col-sm-offset-4">
<button class="btn btn-default" type="submit">Cancel</button>
<input type="submit" name="submit" Value="Register" class="btn btn-primary">
</div>
</form>

									</div>
									</div>
								</div>
							</div>
						</div>
							</div>
						</div>
					</div>
				</div> 	
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function(){
        $('input[type="checkbox"]').click(function(){
            if($(this).prop("checked") == true){
                $('#paddress').val( $('#address').val() );
                $('#pcity').val( $('#city').val() );
                $('#pstate').val( $('#state').val() );
                $('#ppincode').val( $('#pincode').val() );
            } 
            
        });
    });
</script>
	<script>
function checkAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'roomno='+$("#room").val(),
type: "POST",
success:function(data){
$("#room-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>


<script type="text/javascript">

$(document).ready(function() {
	$('#duration').keyup(function(){
		var fetch_dbid = $(this).val();
		$.ajax({
		type:'POST',
		url :"ins-amt.php?action=userid",
		data :{userinfo:fetch_dbid},
		success:function(data){
	    $('.result').val(data);
		}
		});
		

})});
</script>

</html>