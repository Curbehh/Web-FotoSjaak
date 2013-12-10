<uL>
	<li>
		<a href="index.php?content=homepage">Home</a>
	</li>
	<li>
		<a href="index.php?content=test">Test</a>
	</li>
	
	
	<?php if (isset($_SESSION['userrole']))
	{
		echo "<li>
			  <a href='index.php?content=logout'>uitloggen</a>
			  </li>";
		switch ($_SESSION['userrole'])
		{
			case 'customer';
				echo "<li>
						<a href='index.php?content=downloadpage'>downloads</a>
					  </li>";
				echo	  
					  "<li>
						<a href='index.php?content=customer_homepage'>user home</a>
					  </li>";
				echo	  
					  "<li>
						<a href='index.php?content=faqpage'>FAQ</a>
					  </li>";
		
			break;
			case 'admin';
				
			break;
			case 'root';
				
			break;
				  "<li>
						<a href='index.php?content=administrator_homepage'>admin page</a>
					  </li>";
			case 'administrator';
				
			break;
			
			case 'developer';
					  "<li>
						<a href='index.php?content=developer_homepage'>dev page</a>
					  </li>";
			break;
			
			}			
		}
		else
		{
		echo "<li>
			  <a href='index.php?content=login_form'>inloggen</a>
			  </li>
			  <li>
			  <a href='index.php?content=register_form'>registratie</a>
			  </li>";
		}	
	?>
</uL>