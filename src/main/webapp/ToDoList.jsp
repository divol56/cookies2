<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Etape1: Créer un formulaire html -->
	<form action= "ToDoList.jsp" method="post">
	<label for="id1"> Saisir un nouvel item :</label>
	<input type="text" name="mon_Item" id="id1" /> 
	<input type="submit" value="Soumettre">
	</form>
	<br>
	<p> L'item saisi est :<%=request.getParameter("mon_Item") %> </p>
	
	<!-- Etape 2: Ajouter un Item a la liste ToDo	 -->
	<%
	List<String > items= (List<String>) session.getAttribute("monToDoList");
	if (items==null)
	{
		items = new ArrayList<String>();
		session.setAttribute("monToDoList", items);
	}
		String itemSaisi = request.getParameter("mon_Item");
		if(itemSaisi!= null)
		{
			items.add(itemSaisi);
		}
	
	%>
	<!-- Etape 3: Afficher tous les items de la ToDoList a partir de l'objet session	 -->
	<hr>
	
	<h2> Item de la ToDoList :</h2>
	
	<ol>
		<%
		for (String item: items)
		{
			out.println("<li>" + item +"</li>");
		}
		%>
	</ol>
<!--ceci est un commentaire rajouté via GitHub -->
</body>
</html>
