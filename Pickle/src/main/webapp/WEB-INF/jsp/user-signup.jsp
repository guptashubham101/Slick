<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../layout/taglib.jsp"%>
<html>
<head>
  <title>User SignUp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
 <script> src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="text-center">SignUp</h1> 
<p class="text-center">Fill in the details.</p>
<ul class="nav nav-tabs">
  <li class="active"><a data-toggle="tab" href="#usign1">Personal Details</a></li>
  <li><a data-toggle="tab" href="#usign2">Address Details</a></li>
  <li><a data-toggle="tab" href="#usign3">Email Notify</a></li>
</ul>

<div class="tab-content">
  <div id="usign1" class="tab-pane fade in active">
    <form class="form-horizontal" role="form" commandName="userpersonal">
        <br>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ufname">First Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ufname" placeholder="Enter Name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ulname">Last Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ulname" placeholder="Enter Surname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="userid">User Id:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="userid" placeholder="Enter unique name that will be used for Login">
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="uemail">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="uemail" placeholder="Enter Email">
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="ucontact">Contact:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ucontact" placeholder="Enter valid phone number">
      </div>    
    </div>  
    <div class="form-group">
      <label class="control-label col-sm-2" for="upwd">Password:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="upwd" placeholder="Enter password">
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="ucpwd">Confirm Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="ucpwd" placeholder="Re-Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">

        <!-- Changed 'button' tag to 'a' tag-->
          <a class="btn btn-default btnNext">Next</a>
      
      </div>
    </div>
   </form>
   </div>
    
  <div id="usign2" class="tab-pane fade">
      <div>
     <form class="form-horizontal" role="form" commandName="useraddress" action="/user-signup/address.html">
         <br>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uadd1">Address Line 1:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="uadd1" placeholder="Enter house number and street number">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uadd2">Address Line 2:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="uadd2" placeholder="Enter locality">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uzipcode">Zip Code:</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="uzipcode" placeholder="Enter postal code">
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="ucity">City:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ucity" placeholder="Enter town/city">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uzone">Zone:</label>
      <div class="col-lg-10">
                        <select id="uzone" name="uzone" >
                            <option value="" selected="selected">(please select the zone)</option>
                            <option value="CE">Central</option>
                            <option value="EA">East</option>
                            <option value="ND">New Delhi</option>
                            <option value="NO">North</option>
                            <option value="NE">North East</option>
                            <option value="NW">North West</option>
                            <option value="SO">South</option>
                            <option value="SE">South West</option>
                            <option value="SW">West</option>
              </select>    
      </div>    
    </div>  
    <div class="form-group">
      <label class="control-label col-sm-2" for="ulandmark">Land Mark:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="ulandmark" placeholder="Enter landmark">
      </div>
    </div>    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
          <a class="btn btn-default btnNext">Next</a>
      </div>
    </div>
    </div>     
  </form>
  </div>
        
  <div id="usign3" class="tab-pane fade">
      <br>
      <div class="row">
          <div class="col-sm-4 text-right"><style>.logo{font-size: 50px;}</style><span class="glyphicon glyphicon-envelope logo"> </span></div>
       <div class="col-sm-4"> <p> A Confirmation mail has been sent to your Email ID. Kindly check your Email ID.</p> </div>    
         
  </div>
</div>    
    </div>

 <script type="text/javascript">
 
$('.btnNext').click(function(){
  $('.nav-tabs > .active').next('li').find('a').trigger('click');
});
</script>   
</body>
<script type="text/javascript">
	var param ="${param.param1}"
if(param=="secondtab"){
	$('#tabs a[href="#usign2"]').tab('show')
}
	if(param=="thirdtab"){
		$('#tabs a[href="#usign3"]').tab('show')
	}
	 $('.nav li').not('.active').find('a').removeAttr("data-toggle");
	
</script>
</html>