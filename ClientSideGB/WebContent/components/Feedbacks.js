/**
 * 
 */
$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}

	$("#alertError").hide();

});




// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateFeedbackForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	var type = ($("#hidIDSave").val() == "") ? "POST" : "PUT";
	$.ajax(
		{
			url: "FeedbackAPI",
			type: type,
			data: $("#formFeedback").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onSaveComplete(response.responseText, status);
			}
		});

});



function onSaveComplete(response, status) {

	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divFeedbackGrid").html(resultSet.data);
		}

		else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}

	$("#hidIDSave").val("");
	$("#formFeedback")[0].reset();

}





// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) {
	$("#hidIDSave").val($(this).closest("tr").find('#hidFbIDUpdate').val());
	$("#Name").val($(this).closest("tr").find('td:eq(0)').text());
	$("#ContactNumber").val($(this).closest("tr").find('td:eq(1)').text());
	$("#Email").val($(this).closest("tr").find('td:eq(2)').text());
	$("#Comment").val($(this).closest("tr").find('td:eq(3)').text());
	$("#overallExperience").val($(this).closest("tr").find('td:eq(4)').text());
});



// CLIENT-MODEL================================================================
function validateFeedbackForm() {
	// name
	if ($("#Name").val().trim() == "") {
		return "Insert name.";
	}
	
	//contact number
	if ($("#ContactNumber").val().trim() == "") {
		return "Insert ContactNumber.";
	}
	
	
	// NAME
	if ($("#Email").val().trim() == "") {
		return "Insert email.";
	}

	// Comment-------------------------------
	if ($("#Comment").val().trim() == "") {
		return "Insert Comment.";
	}
	
	// overallExperience------------------------------
	if ($("#overallExperience").val().trim() == "") {
		return "Insert overallExperience.";
	}



	// convert to decimal price
	//$("#itemPrice").val(parseFloat(tmpPrice).toFixed(2));

	return true;
}







///REMOVE============================================
$(document).on("click", ".btnRemove", function(event) {
	$.ajax(
		{
			url: "FeedbackAPI",
			type: "DELETE",
			data: "ID=" + $(this).data("id"),
			dataType: "text",
			complete: function(response, status) {
				onDeleteComplete(response.responseText, status);
			}


		});

});




function onDeleteComplete(response, status) {

	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divFeedbackGrid").html(resultSet.data);
		}

		else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}

	}

	else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	}

	else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();

	}


}