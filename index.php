<?php

/*
film database connection
*/
require("DBFilms . php"); 


/*
	Init vars
*/
$action = $_REQUEST["action"]; 
$name = $_REQUEST["name"]; 
$dbfilm = new DBFilm(); 


/*
	This is a router/controller

	Examples:
	index . php?action = film & name = Pulp & 20Fiction
	index . php?action = numactor & name = Pulp & 20Fiction
	index . php */
switch ($action) {
	case "film":
		$the_film = $dbfilm->getFilm($name); 
echo " <p> Toutes les infos du film $name: </p> "; 
	var_dump($the_film); 
	break; 

	case "numactor":
		$number = $dbfilm->numActor($name); 
	echo  " <p> Nombre d\’acteurs pour le film $name:$number </p> "; 
	break; 

	default:
		$all_films = $dbfilm->getAllFilms(); 
		echo " <p> Liste des films: </p> "; 
	var_dump($the_film); 
	break; 
}