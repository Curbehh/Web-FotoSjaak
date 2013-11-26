<?php 

	require_once 'config/config.php';
	
	class MySqlDatabaseClass
	{
		
		//Fields
		private $db_connection;
		
		//Contructor MySqlDatabaseClass. Constructor herken je in PHP aan de naam. De naam is altijd __construct.
		public function __construct()
		{
			//Velden roep je aan met $this->van_het_veld_zonder_$. Er wordt connectie gemaakt met de mysql-server.
			$this->db_connection = mysql_connect(SERVERNAME, USERNAME, PASSWORD);
			
			//Er wordt hier een database geselecteerd.
			mysql_select_db(DATABASE, $this->db_connection) or die ('MySqlDatabaseClass, database niet geselecteerd');
		}
		
		
		
	
		
	}



?>