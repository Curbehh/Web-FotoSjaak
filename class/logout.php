<?php

//Als je een method wilt gebruiken uit de SessionClass, dan moet je het bestand waar de classdefinitie in staat toevoegen aan dit bestand. Gebruik daarvoor require_once.
require_once("class/SessionClass.php");

//We roepen de method logout() aan uit de SessionClass.
session_destroy();
header("location:index.php?content=homepage");
