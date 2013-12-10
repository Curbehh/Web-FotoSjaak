<?php
	class SessionClass
	{
		//Fields
		private $id;
		private $email;
		private $userrole;
		private $logged_in;
		
		/* Constructor van een php-class heeft aldtijd dezelfde naam:
		 * __construct(). Let op dubbele underscore. Onthoud dat
		 * iedere php-method altijd het woord function gebruikt
		 */
		 
		 public function __construct()
		 {
		 	
		 }
		 
		 // Maak een method die het id, email, userrole en logged_in opslaat in session variabele.
		 
		 public function login($loginClassObject)
		 {
		 	$this->id = $_SESSION['id'] = $loginClassObject->get_id();
			$this->email = $_SESSION['email'] = $loginClassObject->get_email();
			$this->userrole = $_SESSION['userrole'] = $loginClassObject->get_userrole();
			$loggin_in = true;
		 }
		 
		 public function logout()
		 {
		 	session_destroy();
		 }
	}
	
	$session = new SessionClass();
	
?>

