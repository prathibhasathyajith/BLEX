$(function() {
	$('#search_journey').on('click', function() {
		// window.open(".html", "_self");
		var formData = {
			fromStCode : $('#fromStID').val(),
			toStCode : $('#toStID').val(),
			departureDate : $('#datepicker1').val()
		}
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			// url :
			// "http://35.167.159.130:9968/events/save",
//			url : "http://localhost:8080/MTRWebWS/home/trains",
			url : "http://testapps.mobitel.lk/MTRWebWS/home/trains",
			data : JSON.stringify(formData),
			success : function(result) {
				console.log(result);

			},
			error : function(e) {
				console.log('| error | ' + e);
			}
		});
	})
})
