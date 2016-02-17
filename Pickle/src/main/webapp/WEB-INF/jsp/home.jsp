<%@include file="../layout/taglib.jsp"%>

<jsp:include page="header.jsp" />
  
  <link rel="stylesheet" type="text/css" href="css/home.css">

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