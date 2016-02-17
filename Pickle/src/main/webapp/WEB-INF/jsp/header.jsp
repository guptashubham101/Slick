<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../layout/taglib.jsp"%>
<html>
<head>
  <title>header</title>
  <meta charset="UTF-8">    
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
<body>
     <nav id="topNav" class="navbar navbar-inverse navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll"><i class="ion-ios-analytics-outline"></i> Go Grab Gobble</a>
            </div>
            <div class="navbar-collapse collapse" id="bs-navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a class="page-scroll" href="#one">How stuff works</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#two">Know Us</a>
                    </li>
                   <!-- <li>
                        <a class="page-scroll" href="#three">Gallery</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#four">Order</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#last">Contact</a>
                    </li>-->
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" data-toggle="modal" href="#userModal" id="login">Login</a>
                    </li> 
                    <li class="signup_dropdown"> 
                           <a class="dropdown-toggle" data-toggle="dropdown" href="#">SignUp <span class="caret"></span></a>
                           <ul class="dropdown-menu">
                               <li><a href='<spring:url value="/usignup.html"></spring:url>'>Customer</a></li>
                               <li><a href='<spring:url value="/csignup.html"></spring:url>'>>Chef</a></li>   
                           </ul>    
                    </li>
                     <li class="myaccount_dropdown"> 
                           <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>My Account <span class="caret"></span></a>
                           <ul class="dropdown-menu">
                               <li><a href="#">Settings <span class="glyphicon glyphicon-cog"></span></a></li>
                               <li><a href="#">Sign Out <span class="glyphicon glyphicon-log-out	"></span></a></li>   
                           </ul>    
                    </li>
                </ul>
            </div>
        </div>
    </nav> 
        <!-- Modal -->
  <div class="modal fade" id="userModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4  style="text-align:center"><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px ;">
          <form role="form" action="<spring:url value="/login" />"
							method="POST">
            <div class="form-group">
              <label for="userid"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="userid" placeholder="Enter User ID">
            </div>
            <div class="form-group">
              <label for="upwd"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" id="upwd" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me!</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>
        </div>
      </div>
      
    </div>
  </div>    

<script type="text/javascript">
var param = "${param.param}"
if(param == "show"){
        $("#userModal").modal();
}   
</script>
