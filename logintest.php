dit is de login in test</h3><hr>

<?php
 //include de LoginClass
 require_once ('class/LoginClass.php');

 $loginClassObj = new LoginClass();
 
 $query = "SELECT * FROM `login`";
 
 //Method find_by_sql($query) static gemaakt. Dit heeft als gevolg dat we de method kunnen aanroepen zonder eerst een object te heoven maken van de class LoginClass. WE kunnen een method simpel aanroepen door de classnaam gevolgd door de dubbele punt( :: ) double colon.
 $result_array = LoginClass::find_by_sql($query);
 
 echo "<table>
 		<tr>
 		<th>id</th>
 		<th>email</th>
 		<th>wachtwoord</th>
 		<th>gebruikersrol</th>
 		<th>geactiveerd</th>
 		<th>activatiedatum</th>
 		</tr>";
 foreach ( $result_array as $value )
 {
  
  echo "<tr>
  			<td>".$value->get_id()."</td>
 			<td>".$value->get_email()."</td>
 			<td>".$value->get_password()."</td>
			<td>".$value->get_userrole()."</td>
			<td>".$value->get_activated()."</td>
			<td>".$value->get_activationdate()."</td>
			</tr>";
 }		
 echo "</table>";

?>