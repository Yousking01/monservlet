<%@page import="java.util.ArrayList"%>
<%@page import="com.yousking.Monservlet.Utuilisateur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
</head>
<body>
<p>Bienvenue<font size="6"> ${nom} ${prenom} </font></p>



<p> Liste des Utilisateur inscrit: </p>
      <%
	      String nom = (String) request.getAttribute("nom");
	      String prenom = (String) request.getAttribute("prenom");
	      String pseudo = (String) request.getAttribute("pseudo");
	      String email = (String) request.getAttribute("email");
	      out.println("Nom: "+nom+", "+"Prenom: "+prenom+", "+"Pseudo: "+pseudo+", "+"Email: "+email);
	      
	      List<Utuilisateur> liste = (ArrayList<Utuilisateur>) session.getAttribute("liste");
	      
	      for(Utuilisateur u : liste){%>
		      <div>
		    	  <% out.println("Nom: "+u.getNom()+", "+"Prenom: "+u.getPrenom()+", "+"Pseudo: "+u.getPseudo()+", "+"Email: "+u.getEmail()+"<br>");%>
		      </div>
	      <%}
      %>

<form action="Monservlet2" method="post">
<button>Déconnecter</button>
</form>
</body>
</html>