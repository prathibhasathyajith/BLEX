/**
 * 
 */
$(document)
		.ready(
				function() {
					$('#fromSt').val("");
					$('#toSt').val("");
					$('#datepicker1').val("");
					$('#datepicker2').val("");
					$('#usr').val("");

					$('#fromSt')
							.keyup(
									function(e) {
										if ($(this).val().length >= 1) {
											var fromStation = $(this).val();
											$('#from_st_list>li')
													.each(
															function() {
																var text = $(
																		this)
																		.text()
																		.toLowerCase();
																(text
																		.indexOf(fromStation) >= 0) ? $(
																		this)
																		.show()
																		: $(
																				this)
																				.hide();
															});
										}
									});

					$('#toSt')
							.keyup(
									function(e) {
										if ($(this).val().length >= 1) {
											var toStation = $(this).val();
											$('#to_st_list>li')
													.each(
															function() {
																var text = $(
																		this)
																		.text()
																		.toLowerCase();
																(text
																		.indexOf(toStation) >= 0) ? $(
																		this)
																		.show()
																		: $(
																				this)
																				.hide();
															});
										}
									});

					$("#from_st_list").on("click", "li", function(event) {
						var s_val = $(this).text();
						 $('#fromSt').val(s_val);
						var a_id = $(this).attr('id');
						$('#fromStID').val(a_id);
//						var value = $('#from_st_list li').attr('value');
						
						
						console.log('|s_val|' + s_val);
						console.log('|a_id|' + a_id);
//						console.log('|value|' + value);
						
						if (a_id == "CF1") {
							$('#toSt').val("Kandy");
							$('#toStID').val("KD");
						} else {
							$('#toSt').val("Colombo Fort");
							$('#toStID').val("CF");
						}
					});

					$("#to_st_list").on("click", "li", function(event) {
						$('#toSt').val($(this).text());
						$('#toStID').val($(this).attr('id'));
					});

					// loadFromStations();
					// loadToStations();
					function loadFromStations() {

						$
								.ajax({
									type : "GET",
									url : "http://testapps.mobitel.lk/MTRWebWS/home/",
									// url :
									// "http://localhost:8080/MTRWebWS/home/",

									success : function(data) {
										globalVal = data;
										for ( var i in data.obj) {
											var country_name = data.obj[i].stationName;
											var country_code = data.obj[i].stationID;

											var str = '<a href="#" class="dropdown-item" style="white-space: inherit;">'
													+ country_name + '</a>';
											var $li = $('<li/> ', {
												html : str
											});
											// var theId = issueTypeCode;
											$li.attr("class", "dropdown-item");
											$li.attr("id", country_code);

											$('#from_st_list').append($li);

										}

									},
									error : function(e) {
										console.log(e);
										// alert('Slow or no internet
										// connection. Please check your
										// internet connection before
										// preceed.');
									}
								});
					}

					function loadToStations() {
						$
								.ajax({
									type : "GET",
									// url :
									// "http://localhost:8080/MTRWebWS/home/",
									url : "http://testapps.mobitel.lk/MTRWebWS/home/",
									success : function(data) {
										globalVal2 = data;
										for ( var i in data.obj) {
											var country_name = data.obj[i].stationName;
											var country_code = data.obj[i].stationID;
											// alert(data[1].name);

											var str = '<a href="#" class="dropdown-item" style="white-space: inherit;">'
													+ country_name + '</a>';
											var $li = $('<li/> ', {
												html : str
											});
											// var theId = issueTypeCode;
											$li.attr("class", "dropdown-item");
											$li.attr("id", country_code);

											$('#to_st_list').append($li);

										}

									},
									error : function(e) {
										// alert('Slow or no internet
										// connection. Please check your
										// internet connection before
										// preceed.');
									}
								});
					}
				});