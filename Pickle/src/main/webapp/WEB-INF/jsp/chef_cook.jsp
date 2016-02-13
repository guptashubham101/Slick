<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../layout/taglib.jsp"%>
<%@include file="../layout/header.jsp"%>

<head>
  <title>Chef SignUp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

   <nav id="topNav" class="navbar navbar-inverse">
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
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" >Sign Out</a>
                    </li> 
                </ul>
            </div>
        </div>
    </nav> 
   <div class="container-fluid text-center">    
   <div class="row content">
    <div class="col-sm-2 sidenav">
      <p>My Profile</p>
    <p><img src="/img/chef_by_xcutiner.jpg" class="img-circle" alt="Me!" height="150px"></p>    
      <p><a href="#">Account</a></p>
      <p><a href="#">Payment</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
     <ul class="nav nav-tabs nav-justified">
          <li class="active"><a data-toggle="tab" href="#chefbreakfast">Breakfast <br> 07:00 AM- 11:00 AM</a></li>
          <li><a data-toggle="tab" href="#cheflunch">Lunch  <br> 11:00 AM- 04:00 PM</a></li>
          <li><a data-toggle="tab" href="#chefsnacks">Snacks  <br> 04:00 PM- 07:00 PM</a></li>
          <li><a data-toggle="tab" href="#chefdinner">Dinner <br> 07:00 PM- 11:00 PM</a></li>
    </ul> 
     <br>
     <br>
    <div class="tab-content" >
        <div id="chefbreakfast" class="tab-pane fade in active">
            <button type="button" class="btn btn-default btn-sm" id="breakfastbutton" style="float:right;">Add <span class="glyphicon glyphicon-plus-sign"></span></button>
            <!-- Modal -->
  <div class="modal fade" id="breakfastmodal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-pencil"></span> Add Dish</h4>
        </div>
        <div class="modal-body">
          <form role="form" commandName="chefbreakfast">
            <div class="form-group">
              <label for="bfastdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" id="bfastdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="bfastingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" id="bfastingredients" placeholder="Enter ingredients used to prepare the dish.">
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="bfasttype">Vegetarian</label>
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="bfasttype">Non-Vegetarian</label>
            </div>
             <div class="radio-inline">
               <label><input type="radio" name="bfasttype">Combo</label>
             </div>  
            <div class="form-group">
              <label for="bfastdescription"><span class="glyphicon glyphicon-edit"></span>Description</label>
              <textarea class="form-control" rows="5" id="bfastription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="bfastdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" id="bfastdishprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="bfastdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" id="bfastdishdate" placeholder="Enter date when dish is to be served.">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Done</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Add more dishes? <a href="#"></a><span class="glyphicon glyphicon-th-list"></span></p>
        </div>
      </div>
    </div>
  </div> 

            <table class="table table-striped" >
         
    <thead>
      <tr>
        <th>Dish</th>
        <th>Ingredients</th>
        <th>Type</th>
        <th>Description</th>
        <th>Price</th>
        <th>Date</th>
        <th>Options</th>  
      </tr>
    </thead>
    <tbody>
       <tr>
       <catlina:forEach items="${ChefPersonal.chefbreakfast}" var="item1">
      <td> ${item1.dish}</td>
       <td> ${item1.ingredients}</td>
       <td> ${item1.type}</td>
       <td> ${item1.description}</td>
       <td> ${item1.price}</td>
      <td>  ${item1.date}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a></td>   
      </tr>    
    </tbody>
  </table>
        </div>
         <div id="cheflunch" class="tab-pane fade">
              <button type="button" class="btn btn-default btn-sm" id="lunchbutton" style="float:right;">Add <span class="glyphicon glyphicon-plus-sign"></span></button>
            <!-- Modal -->
  <div class="modal fade" id="lunchmodal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-pencil"></span> Add Dish</h4>
        </div>
        <div class="modal-body">
          <form role="form" commandName="cheflunch" action="/chef/cook/lunch.html">
            <div class="form-group">
              <label for="lunchdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" id="lunchdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="lunchingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" id="lunchingredients" placeholder="Enter ingredients used to prepare the dish.">
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="lunchtype">Vegetarian</label>
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="lunchtype">Non-Vegetarian</label>
            </div>
             <div class="radio-inline">
               <label><input type="radio" name="lunchtype">Combo</label>
             </div>  
            <div class="form-group">
              <label for="lunchdescription"><span class="glyphicon glyphicon-edit"></span>Description</label>
              <textarea class="form-control" rows="5" id="lunchdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="lunchdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" id="lunchdishprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="lunchdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" id="lunchdishdate" placeholder="Enter date when dish is to be served.">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Done</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Add more dishes? <a href="#"></a><span class="glyphicon glyphicon-th-list"></span></p>
        </div>
      </div>
    </div>
  </div> 
            <table class="table table-striped" >
         
    <thead>
      <tr>
        <th>Dish</th>
        <th>Ingredients</th>
        <th>Type</th>
        <th>Description</th>
        <th>Price</th>
        <th>Date</th>
        <th>Options</th>  
      </tr>
    </thead>
    <tbody>
       <tr>
       <catlina:forEach items="${ChefPersonal.cheflunch}" var="item2">
      <td> ${item2.dish}</td>
       <td> ${item2.ingredients}</td>
       <td> ${item2.type}</td>
       <td> ${item2.description}</td>
       <td> ${item2.price}</td>
      <td>  ${item2.date}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a></td>   
      </tr>    
    </tbody>
  </table>
        </div>
         <div id="chefsnacks" class="tab-pane fade">
             <button type="button" class="btn btn-default btn-sm" id="snackbutton" style="float:right;">Add <span class="glyphicon glyphicon-plus-sign"></span></button>
            <!-- Modal -->
  <div class="modal fade" id="snackmodal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-pencil"></span> Add Dish</h4>
        </div>
        <div class="modal-body">
          <form role="form" commandName="chefsnacks" action="/chef/cook/snacks.html">
            <div class="form-group">
              <label for="snackdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" id="snackdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="snackingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" id="snackingredients" placeholder="Enter ingredients used to prepare the dish.">
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="snacktype">Vegetarian</label>
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="snacktype">Non-Vegetarian</label>
            </div>
             <div class="radio-inline">
               <label><input type="radio" name="snacktype">Combo</label>
             </div>  
            <div class="form-group">
              <label for="snackdescription"><span class="glyphicon glyphicon-edit"></span>Description</label>
              <textarea class="form-control" rows="5" id="snackdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="snackdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" id="snackdishprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="snackdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" id="snackdishdate" placeholder="Enter date when dish is to be served.">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Done</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Add more dishes? <a href="#"></a><span class="glyphicon glyphicon-th-list"></span></p>
        </div>
      </div>
    </div>
  </div> 
            <table class="table table-striped" >
         
    <thead>
      <tr>
        <th>Dish</th>
        <th>Ingredients</th>
        <th>Type</th>
        <th>Description</th>
        <th>Price</th>
        <th>Date</th>
        <th>Options</th>  
      </tr>
    </thead>
    <tbody>
       <tr>
        <catlina:forEach items="${ChefPersonal.chefsnacks}" var="item3">
      <td> ${item3.dish}</td>
       <td> ${item3.ingredients}</td>
       <td> ${item3.type}</td>
       <td> ${item3.description}</td>
       <td> ${item3.price}</td>
      <td>  ${item3.date}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a></td>   
      </tr>    
    </tbody>
  </table>
        </div>
    <div id="chefdinner" class="tab-pane fade">
        <button type="button" class="btn btn-default btn-sm" id="dinnerbutton" style="float:right;">Add <span class="glyphicon glyphicon-plus-sign"></span></button>
            <!-- Modal -->
  <div class="modal fade" id="dinnermodal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="color:red;"><span class="glyphicon glyphicon-pencil"></span> Add Dish</h4>
        </div>
        <div class="modal-body">
          <form role="form" commandName="chefdinner" action="/chef/cook/dinner.html">
            <div class="form-group">
              <label for="dinnerdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" id="dinnerdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="dinneringredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" id="dinneringredients" placeholder="Enter ingredients used to prepare the dish.">
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="dinnertype">Vegetarian</label>
            </div>
            <div class="radio-inline">
              <label><input type="radio" name="dinnertype">Non-Vegetarian</label>
            </div>
             <div class="radio-inline">
               <label><input type="radio" name="dinnertype">Combo</label>
             </div>  
            <div class="form-group">
              <label for="dinnerdescription"><span class="glyphicon glyphicon-edit"></span>Description</label>
              <textarea class="form-control" rows="5" id="dinnerdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="dinnerdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" id="dinnerdishprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="dinnerdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" id="dinnerdishdate" placeholder="Enter date when dish is to be served.">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Done</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Add more dishes? <a href="#"></a><span class="glyphicon glyphicon-th-list"></span></p>
        </div>
      </div>
    </div>
  </div> 
            <table class="table table-striped" >
         
    <thead>
      <tr>
        <th>Dish</th>
        <th>Ingredients</th>
        <th>Type</th>
        <th>Description</th>
        <th>Price</th>
        <th>Date</th>
        <th>Options</th>  
      </tr>
    </thead>
    <tbody>
       <tr>
       <catlina:forEach items="${ChefPersonal.chefdinner}" var="item4">
      <td> ${item4.dish}</td>
       <td> ${item4.ingredients}</td>
       <td> ${item4.type}</td>
       <td> ${item4.description}</td>
       <td> ${item4.price}</td>
      <td>  ${item4.date}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="#">
          <span class="glyphicon glyphicon-trash"></span>
        </a></td>   
      </tr>    
    </tbody>
  </table>
        </div>    
    </div>
      
     </div> 
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>
<script>
$(document).ready(function(){
    $("#breakfastbutton").click(function(){
        $("#breakfastmodal").modal();
    });
});
</script>
<script>
$(document).ready(function(){
    $("#lunchbutton").click(function(){
        $("#lunchmodal").modal();
    });
});    
</script>
<script>
$(document).ready(function(){
    $("#snackbutton").click(function(){
        $("#snackmodal").modal();
    });
});    
</script>   
<script>
$(document).ready(function(){
    $("#dinnerbutton").click(function(){
        $("#dinnermodal").modal();
    });
});    

</script>     
<script type="text/javascript">
	var param = "${param.param1}"
	if (param == "firsttab") {
		$('#tabs a[href="#chefbreakfast"]').tab('show')
	}
	if (param == "secondtab") {
		$('#tabs a[href="#cheflunch"]').tab('show')
	}
	if (param == "thirdtab") {
		$('#tabs a[href="#chefsnacks"]').tab('show')
	}
	if (param == "fourthtab") {
		$('#tabs a[href="#chefdinner"]').tab('show')
	}    
	</script>
    
</body>   
</html>    