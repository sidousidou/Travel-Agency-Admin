<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>Contact V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="Signin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Signin/css/util.css">
	<link rel="stylesheet" type="text/css" href="Signin/css/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="InscriptionServlet" method="post">
				<span class="contact100-form-title">
					Sign In
				</span>

			<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Your Email (e@a.x)">
					<span class="label-input100">First Name *</span>
					<input class="input100" type="text" name="first name" placeholder="Enter Your First Name" required="" >
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Last Name *</span>
					<input class="input100" type="text" name="last name" placeholder="Enter Your Last Name" required="" >
				</div>


				<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Your Email (e@a.x)">
					<span class="label-input100">Phone *</span>
					<input class="input100" type="text" name="phone" placeholder="Enter Your Number Phone " required="" >
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">Age </span>
					<input class="input100" type="text" name="age" placeholder="Enter Your age " required="" >
				</div>

					<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Enter Your Email (e@a.x)">
					<span class="label-input100">Email *</span>
					<input class="input100" type="text" name="email" placeholder="Enter Your Email " required="" >
				</div>

				<div class="wrap-input100 bg1 rs1-wrap-input100">
					<span class="label-input100">PassWord *</span>
					<input class="input100" type="text" name="password" placeholder="Enter Your PassWord" required="" >
				</div>

			
			<div class="wrap-input100 validate-input bg1" data-validate="Please Type Your Address">
					<span class="label-input100">Address </span>
					<input class="input100" type="text" name="Address" placeholder="Enter Your Address" required="" >
				</div>
	<div class="wrap-input100 input100-select bg1">
					<span class="label-input100">You are: *</span>
					<div>
						<select class="js-select2" name="type">
							<option></option>
							<option>Cliente </option>
							
							
						</select>
						<div class="dropDownSelect2"></div>
					</div>
				</div>

			
			

			
			
			
			

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



<!--===============================================================================================-->
	<script src="Signin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Signin/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Signin/vendor/bootstrap/js/popper.js"></script>
	<script src="Signin/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Signin/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="Signin/vendor/daterangepicker/moment.min.js"></script>
	<script src="Signin/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Signin/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Signin/vendor/noui/nouislider.min.js"></script>
	<script>
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 1500, 3900 ],
	        connect: true,
	        range: {
	            'min': 1500,
	            'max': 7500
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]);
	        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
	        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
	    });
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
