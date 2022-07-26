<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
<link rel="stylesheet" href="./css/bootstrap.min.css"/>
<style>
#frm{
background-color: #F5F5DC;
width:500px;
margin:auto;
margin-top:100px;

}

marquee{
margin-top:10px;
}
body{
background:#F0F8FF;
}

</style>
</head>
<body class="container-fluid">
<marquee><h1 class="text-primary">Inscrivez-vous Ici</h1></marquee>
<form action="Monservlet" method="post" class="form card" id="frm">
<h1 class="bg-danger text-white card-header">Formulaire d'Inscription</h1>
<table class="table table-hover"></table>
<label for="nom">Nom:</label>
<input type="text" name="nom" id="nom" required ><br>
<label for="prenom">Prenom:</label>
<input type="text" name="prenom" id="prenom" required ><br>
<label for="pseudo">Pseudo:</label>
<input type="text" name="pseudo" id="pseudo" required ><br>
<label for="password">Mot de Passe:</label>
<input type="text" name="password" id="password" required ><br>
<label for="repeat">Repeter le Mot de Passe:</label>
<input type="text" name="repeat" id="repeat" required ><br>
<label for="repeat"> E-Mail:</label>
<input type="text" name="email" id="email" required ><br>

<input type="submit" class="btn btn-outline-success" value="Envoyer"><br>
<input type="reset" class="btn btn-outline-danger" value="Annuler">


</form>

</body>


</html>