<?php session_start(); ?>
<!DOCTYPE html>
<html>
	<head>
		<title>
			Jumbo Website
		</title>
		<link rel = 'stylesheet' type = 'text/css' href = './css/style.css' />
	</head>
	
		<body>
			<div id='container'>
				<div id='banner'>
				</div>
				
				<div id='content'>
					<div id='link'>
						<?php include ("link.php"); ?>
					</div>
						<?php include ("navigation.php"); ?>
				</div>
				
				<div id='footer'>
					Contact | Disclaimer | Copyright | Tools | Privacy | Advertisement
				
				</div>
			</div>
		</body>		
		
</html>