<%@page import="model.Feedback" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Service</title>

<link rel="stylesheet" href="views/css/bootstrap.min.css">
<script src="components/jquery-3.2.1.min.js"></script>
<script src="components/Feedbacks.js"></script>

</head>
<body>

<div class="container">
		<div class="row">
			<div class="col">

                 <div >
                     <h1><b>Give Your Feedbacks</b></h1>
                </div>

            <div>
				<form id="formFeedback" name="formFeedback" >
					<h2>Name:</h2>
					<input id="Name" name="Name" type="text"
						class="form-control form-control-sm"> <br> 
						
					<h2>Contact Number</h2>
					<input id="ContactNumber" name="ContactNumber" type="text"
						class="form-control form-control-sm"> <br>
						
				    <h2> Email:</h2>
				    <input id="Email" name="Email" type="text"
						class="form-control form-control-sm"> <br> 
						
					<h2> Comment:</h2> 
					<input id="Comment" name="Comment" type="text"
						class="form-control form-control-sm"> <br>
					
					<h2> Overall Experience:</h2> 
					<input id="overallExperience" name="overallExperience"  type="text"
						class="form-control form-control-sm"><br>
					 
						
							
						<br>
						 <input id="btnSave" name="btnSave" type="button" value="Save"
						        class="btn btn-primary"> 
						 <input type="hidden" id="hidIDSave" name="hidIDSave" value="">
				</form>
               </div>
                  <div id="alertSuccess" class="alert alert-success"></div>
                  <div id="alertError" class="alert alert-danger"></div>
                   <br>
                  <div id="divFeedbackGrid">
                
				<%
				    Feedback FBObj = new Feedback();
				    out.print(FBObj.readIFb());
				 %>

               

				      </div>
					</div>
				</div>
            </div>

</body>
</html>