<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<%@include file="../layout/taglib.jsp"%>
<jsp:include page="header.jsp" />
 <!-- <html lang="en">
 <head>
  <title>User SignUp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"
	integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
	integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
	crossorigin="anonymous"></script>
</head>
<body>-->
<br><br><br>
<div class="container">
<h1 class="text-center">SignUp</h1> 
<p class="text-center">Fill in the details.</p>
<ul class="nav nav-tabs navy" role="tablist" id="tabs">
    <li role="presentation" class="active"><a href="#usign1" role="tab" data-toggle="tab">Personal Details</a></li>
    <li role="presentation"><a href="#usign2" id="sign2"  role="tab" data-toggle="tab">Address Details</a></li>
    <li role="presentation"><a href="#usign3"  role="tab" data-toggle="tab">Email Notify</a></li>
  </ul>
<br>
<div class="tab-content">
  <div id="usign1" class="tab-pane fade in active">
    <form:form class="form-horizontal" role="form" commandName="userpersonal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="ufname">First Name:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="ufname" placeholder="Enter Name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="ulname">Last Name:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="ulname" placeholder="Enter Surname" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="userid">User Id:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="userid" placeholder="Enter unique name that will be used for Login" id="id" />
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="uemail">Email:</label>
      <div class="col-sm-10">
        <form:input type="email" class="form-control" path="uemail" placeholder="Enter Email" />
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="ucontact">Contact:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="ucontact" placeholder="Enter valid phone number" />
      </div>    
    </div>  
    <div class="form-group">
      <label class="control-label col-sm-2" for="upwd">Password:</label>
      <div class="col-sm-10">
        <form:input type="password" class="form-control" path="upwd" placeholder="Enter password" />
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
        <button type="submit" class="btn btn-default" id="btn1">Next</button>
      </div>
    </div>
  </form:form>
   </div>
   
   
  <div id="usign2" class="tab-pane fade"><spring:url value=""></spring:url>
     <form:form class="form-horizontal" role="form" commandName="useraddress" action="/Pickle/usignup/address.html">
    <div class="form-group">
      <label class="control-label col-sm-2" for="uadd1">Address Line 1:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="uadd1" placeholder="Enter house number and street number" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uadd2">Address Line 2:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="uadd2" placeholder="Enter locality" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="uzipcode">Zip Code:</label>
      <div class="col-sm-10">
        <form:input type="number" class="form-control" path="uzipcode" placeholder="Enter postal code" />
      </div>
    </div> 
    <div class="form-group">
      <label class="control-label col-sm-2" for="ucity">City:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="ucity" placeholder="Enter town/city" />
      </div>
    </div>    
    <div class="form-group">
      <label class="control-label col-sm-2" for="uzone">Zone:</label>
      <div class="col-md-10">
                        <form:select path="uzone" name="uzone" >
                            <option value="" selected="selected">(please select the zone)</option>
                            <option value="CE">Central</option>
                            <option value="EA">East</option>
                            <option value="ND">New Delhi</option>
                            <option value="NO">North</option>
                            <option value="NE">North Esat</option>
                            <option value="NW">North West</option>
                            <option value="SO">South</option>
                            <option value="SE">South West</option>
                            <option value="SW">West</option>
              </form:select>    
      </div>    
    </div>  
    <div class="form-group">
      <label class="control-label col-sm-2" for="ulandmark">Land Mark:</label>
      <div class="col-sm-10">
        <form:input type="text" class="form-control" path="ulandmark" placeholder="Enter landmark" />
      </div>
    </div>    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" class="btn btn-default" id="btn1">Next</button>
      </div>
    </div>
  </form:form>
  </div>
   <div id="usign3" class="tab-pane fade">
      <br>
      <div class="row">
          <div class="col-sm-4 text-right"> 
          <style>
          .logo{
          font-size: 50px;
          }
          </style>
          <span class="glyphicon glyphicon-envelope logo"> </span></div>
       <div class="col-sm-4"> <p> A Confirmation mail has been sent to your Email ID. Kindly check your Email ID.</p> </div>    
         
  </div>
</div>    
</div>
</div>    



</body>
<script type="text/javascript">
	var param ="${param.param1}"
if(param=="secondtab"){
	$('#tabs a[href="#usign2"]').tab('show')
}
	if(param=="thirdtab"){
		$('#tabs a[href="#usign3"]').tab('show')
	}
	 $('.navy li').not('.active').find('a').removeAttr("data-toggle");
	
</script>
</html>


