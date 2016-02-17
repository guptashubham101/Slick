
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="../layout/taglib.jsp"%>
	<jsp:include page="header.jsp" />
<!--  <html lang="en">
<head>
<title>Chef SignUp</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.14.0/jquery.validate.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>-->
<br><br><br>
	<div class="container">
		<h1 class="text-center">SignUp</h1>
		<p class="text-center">Fill in the details.</p>
		<ul class="nav nav-tabs navy" id="tabs">
			<li class="active"><a data-toggle="tab" href="#chefsign1">Personal
					Details</a></li>
			<li><a data-toggle="tab" href="#chefsign2">Address Details</a></li>
			<li><a data-toggle="tab" href="#chefsign3">Kitchen Details</a></li>
			<li><a data-toggle="tab" href="#chefsign4">Email Notify</a></li>
		</ul>

		<div class="tab-content">
			<div id="chefsign1" class="tab-pane fade in active">
				<form:form class="form-horizontal" role="form" commandName="chefpersonal">
					<br>
					<div class="form-group">
						<label class="control-label col-sm-2" for="cheffname">First
							Name:</label>
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="cheffname"
								placeholder="Enter Name" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="cheflname">Last
							Name:</label>
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="cheflname"
								placeholder="Enter Surname" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="chefserid">User
							Id:</label>
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="chefserid"
								placeholder="Enter unique name that will be used for Login" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="chefemail">Email:</label>
						<div class="col-sm-10">
							<form:input type="email" class="form-control" path="chefemail"
								placeholder="Enter Email" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="chefcontact">Contact:</label>
						<div class="col-sm-10">
							<form:input type="text" class="form-control" path="chefcontact"
								placeholder="Enter valid phone number" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="chefpwd">Password:</label>
						<div class="col-sm-10">
							<form:input type="password" class="form-control" path="chefpwd"
								placeholder="Enter password" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="chefcpwd">Confirm
							Password:</label>
						<div class="col-sm-10">
							<input type="password" class="form-control" id="chefcpwd"
								placeholder="Re-Enter password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button class="button-default" type="submit">Next</button>

						</div>
					</div>
				</form:form>
			</div>

			<div id="chefsign2" class="tab-pane fade">
				<div>
					<form:form class="form-horizontal" role="form" commandName="chefaddress" action="/Pickle/csignup/address.html">
						<br>
						<div class="form-group">
							<label class="control-label col-sm-2" for="chefadd1">Address
								Line 1:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="chefadd1" path="chefadd1"
									placeholder="Enter house number and street number" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="chefadd2">Address
								Line 2:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="chefadd2" path="chefadd2"
									placeholder="Enter locality" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="chefzipcode">Zip
								Code:</label>
							<div class="col-sm-10">
								<form:input type="number" class="form-control" id="chefzipcode" path="chefzipcode"
									placeholder="Enter postal code" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="chefcity">City:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="chefcity" path="chefcity"
									placeholder="Enter town/city" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="chefzone">Zone:</label>
							<div class="col-lg-10">
								<form:select id="chefzone" path="chefzone" name="chefzone">
									<option value="" selected="selected">(please select
										the zone)</option>
									<option value="CE">Central</option>
									<option value="EA">East</option>
									<option value="ND">New Delhi</option>
									<option value="NO">North</option>
									<option value="NE">North East</option>
									<option value="NW">North West</option>
									<option value="SO">South</option>
									<option value="SE">South West</option>
									<option value="SW">West</option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="cheflandmark">Land
								Mark:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="cheflandmark" path="cheflandmark"
									placeholder="Enter landmark" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button class="button-default" type="submit">Next</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>

			<div id="chefsign3" class="tab-pane fade">
				<div>
					<br>
					<div class="checkbox">
						<label><input type="checkbox" value="" id="check1">Are
							the delivery and cooking address same?</label>
					</div>
					<form:form class="form-horizontal" role="form" commandName="chefkitchen" action="/Pickle/csignup/kitchen.html">
						<br>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitadd1">Address
								Line 1:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="kitadd1"  path="kitadd1"
									placeholder="Enter house number and street number" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitadd2">Address
								Line 2:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="kitadd2" path="kitadd2"
									placeholder="Enter locality" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitzipcode">Zip
								Code:</label>
							<div class="col-sm-10">
								<form:input type="number" class="form-control" id="kitzipcode" path="kitzipcode"
									placeholder="Enter postal code" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitcity">City:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="kitcity" path="kitcity"
									placeholder="Enter town/city" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitzone">Zone:</label>
							<div class="col-lg-10">
								<form:select id="kitzone" path="kitzone" name="kitzone">
									<option value="" selected="selected">(please select
										the zone)</option>
									<option value="CE">Central</option>
									<option value="EA">East</option>
									<option value="ND">New Delhi</option>
									<option value="NO">North</option>
									<option value="NE">North East</option>
									<option value="NW">North West</option>
									<option value="SO">South</option>
									<option value="SE">South West</option>
									<option value="SW">West</option>
								</form:select>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="kitlandmark">Land
								Mark:</label>
							<div class="col-sm-10">
								<form:input type="text" class="form-control" id="kitlandmark" path="kitlandmark"
									placeholder="Enter landmark" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button class="button-default" type="submit">Next</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>

			<div id="chefsign4" class="tab-pane fade">
				<br>
				<div class="row">
					<div class="col-sm-4 text-right">
						<style>
.logo {
	font-size: 50px;
}
</style>
						<span class="glyphicon glyphicon-envelope logo"> </span>
					</div>
					<div class="col-sm-4">
						<p>A Confirmation mail has been sent to your Email ID. Kindly
							check your Email ID.</p>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>

<script type="text/javascript">
	var param = "${param.param1}"
	if (param == "secondtab") {
		$('#tabs a[href="#chefsign2"]').tab('show')
	}
	if (param == "thirdtab") {
		$('#tabs a[href="#chefsign3"]').tab('show')
	}
	if (param == "fourthtab") {
		$('#tabs a[href="#chefsign4"]').tab('show')
	}
	$('.navy li').not('.active').find('a').removeAttr("data-toggle");
	$(document).ready(function() {
		$("#check1").click(function() {
			var chefadd1 = "${address.chefadd1}";
			var chefadd2= "${address.chefadd2}";
			var chefzipcode="${address.chefzipcode}";
			var chefcity= "${address.chefcity}";
			var chefzone= "${address.chefzone}";
			var cheflandmark= "${address.cheflandmark}";
			  $("#kitadd1").val(chefadd1);
			  $("#kitadd2").val(chefadd2);
			  $("#kitcity").val(chefcity);
			  $("#kitzone").val(chefzone);
			  $("#kitzipcode").val(chefzipcode);
			  $("#kitlandmark").val(cheflandmark);
			  //document.write(chefadd1);
		});
	});
</script>

</html>
