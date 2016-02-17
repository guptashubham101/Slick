<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../layout/taglib.jsp"%>
<jsp:include page="header.jsp" />




   <div class="container-fluid text-center">  
   <div class="row content">
    <div class="col-sm-2 sidenav">
      <p>My Profile</p>
    <p><img src="/img/chef_by_xcutiner.jpg" class="img-circle" alt="Me!" height="150px"></p>    
      <p><a href="#">Account</a></p>
      <p><a href="#">Payment</a></p>
    </div>
    <div class="col-sm-8 text-left">
     <ul class="nav nav-tabs nav-justified" id="tabs">
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
          <form:form role="form" commandName="chefbreakfast" action="/Pickle/chef/cook/breakfast.html">
            <div class="form-group">
              <label for="bfastdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" path="breakfastdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="bfastingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" path="breakfastingredients" placeholder="Enter ingredients used to prepare the dish.">
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
              <textarea class="form-control" rows="5" path="breakfastdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="bfastdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" path="breakfastprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="bfastdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" path="breakfastdate" placeholder="Enter date when dish is to be served.">
            </div>
            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-ok"></span> Done</button>
          </form:form>
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
      <td> ${item1.breakfastdishname}</td>
       <td> ${item1.breakfastingredients}</td>
       <td> ${item1.breakfasttype}</td>
       <td> ${item1.breakfastdescription}</td>
       <td> ${item1.breakfastprice}</td>
      <td>  ${item1.breakfastdate}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="<spring:url value='/chef/remove/breakfast/${item1.id}.html' />"
          <span class="glyphicon glyphicon-trash breakfasttriggerRemove"></span>Remove></a>
       </td>   
      </tr>    
    </tbody>
  </table>
  
  <div class="modal fade" id="breakfastRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove Item</h4>
      </div>
      <div class="modal-body">
      Really you wanna do that?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>
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
          <form role="form" commandName="cheflunch" action="/Pickle/chef/cook/lunch.html">
            <div class="form-group">
              <label for="lunchdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" path="lunchdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="lunchingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" path="lunchingredients" placeholder="Enter ingredients used to prepare the dish.">
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
              <textarea class="form-control" rows="5" path="lunchdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="lunchdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" path="lunchprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="lunchdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" path="lunchdate" placeholder="Enter date when dish is to be served.">
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
      <td> ${item2.lunchdishname}</td>
       <td> ${item2.lunchingredients}</td>
       <td> ${item2.lunchtype}</td>
       <td> ${item2.lunchdescription}</td>
       <td> ${item2.lunchprice}</td>
      <td>  ${item2.lunchdate}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="<spring:url value='/chef/remove/lunch/${item2.id}.html' />"
          <span class="glyphicon glyphicon-trash lunchtriggerRemove"></span>>Remove</a>
        </td>   
      </tr>    
    </tbody>
  </table>
  
  <div class="modal fade" id="lunchRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove Item</h4>
      </div>
      <div class="modal-body">
      Really you wanna do that?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>
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
          <form role="form" commandName="chefsnacks" action="/Pickle/chef/cook/snacks.html">
            <div class="form-group">
              <label for="snackdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" path="snackdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="snackingredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" path="snackingredients" placeholder="Enter ingredients used to prepare the dish.">
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
              <textarea class="form-control" rows="5" path="snackdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="snackdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" path="snackprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="snackdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" path="snackdate" placeholder="Enter date when dish is to be served.">
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
      <td> ${item3.snackdishname}</td>
       <td> ${item3.snackingredients}</td>
       <td> ${item3.snacktype}</td>
       <td> ${item3.snackdescription}</td>
       <td> ${item3.snackprice}</td>
      <td>  ${item3.snackdate}</td>
      
       </catlina:forEach>
        <td></td>
        <td><a href="<spring:url value='/chef/remove/snacks/${item3.id}.html' />"
          <span class="glyphicon glyphicon-trash snackstriggerRemove"></span>>Remove</a>
        </td>   
      </tr>    
    </tbody>
  </table>
  
  <div class="modal fade" id="snacksRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove Item</h4>
      </div>
      <div class="modal-body">
      Really you wanna do that?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>
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
          <form role="form" commandName="chefdinner" action="/Pickle/chef/cook/dinner.html">
            <div class="form-group">
              <label for="dinnerdishname"><span class="glyphicon glyphicon-cutlery"></span>Name</label>
              <input type="text" class="form-control" path="dinnerdishname" placeholder="Enter name of dish">
            </div>
            <div class="form-group">
              <label for="dinneringredients"><span class="glyphicon glyphicon-grain"></span>Ingredients</label>
              <input type="text" class="form-control" path="dinneringredients" placeholder="Enter ingredients used to prepare the dish.">
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
              <textarea class="form-control" rows="5" path="dinnerdescription" placeholder="Enter description of the dish."></textarea>    
            </div>
             <div class="form-group">
              <label for="dinnerdishprice"><span class="glyphicon glyphicon-piggy-bank"></span>Price</label>
              <input type="text" class="form-control" path="dinnerprice" placeholder="Enter price of dish in Rupees.">
            </div> 
              <div class="form-group">
              <label for="dinnerdishdate"><span class="glyphicon glyphicon-calendar"></span>Date</label>
              <input type="text" class="form-control" path="dinnerdate" placeholder="Enter date when dish is to be served.">
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
      <td> ${item4.dinnerdishname}</td>
       <td> ${item4.dinneringredients}</td>
       <td> ${item4.dinnertype}</td>
       <td> ${item4.dinnerdescription}</td>
       <td> ${item4.dinnerprice}</td>
      <td>  ${item4.dinnerdate}</td>
      
       </catlina:forEach>
        <td></td>
       <td><a href="<spring:url value='/chef/remove/dinner/${item4.id}.html' />"
          <span class="glyphicon glyphicon-trash snackstriggerRemove"></span>>Remove</a>
        </td>   
      </tr>    
    </tbody>
  </table>
  
  <div class="modal fade" id="dinnerRemove" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Remove Item</h4>
      </div>
      <div class="modal-body">
      Really you wanna do that?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a href="" class="btn btn-danger removeBtn">Remove</a>
      </div>
    </div>
  </div>
</div>
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
    $(".breakfasttriggerRemove").click(function(e){
  	  
  	  e.preventDefault();
  	  $("#breakfastRemove").modal('show');
  	  $("#breakfastRemove .removeBtn").attr("href", $(this).attr("href"));
});
});
</script>
<script>
$(document).ready(function(){
    $("#lunchbutton").click(function(){
        $("#lunchmodal").modal();
    });
    
    $(".lunchtriggerRemove").click(function(e){
  	  
  	  e.preventDefault();
  	  $("#lunchRemove").modal('show');
  	  $("#lunchRemove .removeBtn").attr("href", $(this).attr("href"));
  });
});    
</script>
<script>
$(document).ready(function(){
    $("#snackbutton").click(function(){
        $("#snackmodal").modal();
    });
    $(".snackstriggerRemove").click(function(e){
  	  
  	  e.preventDefault();
  	  $("#snacksRemove").modal('show');
  	  $("#snacksRemove .removeBtn").attr("href", $(this).attr("href"));
  });
});    
</script>   
<script>
$(document).ready(function(){
    $("#dinnerbutton").click(function(){
        $("#dinnermodal").modal();
    });
    $(".dinnertriggerRemove").click(function(e){
  	  
  	  e.preventDefault();
  	  $("#dinnerRemove").modal('show');
  	  $("#dinnerRemove .removeBtn").attr("href", $(this).attr("href"));
  });
});    
</script>
    
<script type="text/javascript">
	var param = "${param.param1}"
	
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