<?php

	//check of allebij velden zijn ingevoerd.
	if (!empty($_POST['email']) && !empty($_POST['password']))
	{
		include('./connect_db.php');
		$query = "SELECT * FROM `users` WHERE `email` = '".$_POST['email']."' AND `password` = '".$_POST['password']."'";
		$result = mysql_query($query, $db);
		if (mysql_num_rows($result) > 0)
	{		
		$record = mysql_fetch_array($result);
		$_SESSION['id'] = $record['id'];
		$_SESSION['userrole'] = $record['userrole'];
		
		switch($record['userrole'])
		{
			case 'root':
				header("location:index.php?content=root_homepage");
			break;
			case 'admin':
				header("location:index.php?content=admin_homepage");
			break;
			case 'customer':
				header("location:index.php?content=customer_homepage");
			break;
		}
	}
	else
	{
		echo 'U heeft beide of een van beide velden niet correct ingevuld. U wordt doorgestuurd naar de inlogpagina';
		header("refresh:4;url=index.php?content=login_form");
	}
	}
	else
	{
		echo 'U heeft beide of een van de velden niet ingevuld. U wordt doorgestuurd naar de inlogpagina';
		header("refresh:4url=index.php?content=login_form");
	}


?>