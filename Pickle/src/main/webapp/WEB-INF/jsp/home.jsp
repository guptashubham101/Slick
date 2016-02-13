<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="../layout/taglib.jsp"%>
<%@include file="../layout/header.jsp"%>

<head>
  <title>Go Grab Gobble</title>
  <meta charset="utf-8">    
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>
     <div class="jumbotron" >
         <div id="home_location">
            <div id="location_text"> 
                <h1>Go Grab Gobble</h1>
                <p> Find what's cooking near you !</p>
                <br>
                <div id="search">
                    <input type="text" id="search_input" placeholder="Address, City/State or Zip" value="" />
                    <div id="search_icon"><span class="glyphicon glyphicon-search search_icon" ></span></div>  
                </div>
                <br>
                <br>
                <br>
                <button type="submit" class="go_button"> Go! </button>
            </div>
          </div>
      
           
    </div>  
 
</body>
</html>