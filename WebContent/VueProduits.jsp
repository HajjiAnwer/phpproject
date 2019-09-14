<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
<link rel="stylesheet" type="text/css" href="css/style.css"/>

<title>Insert title here</title>
<script type="text/javascript">
	function confirmer(url){
		var rep=confirm("etes vous sure de vouloir supprimer?")
		if(rep==true){
			document.location=url;
		}
	}
</script>
</head>
<body>
<div class="container bg-light">
 	<div class="p-3 border border-dark m-3">
 	<form action="controleur.php" method="post">
		<table>
			<tr>
				<td class="h5">Mot_Clé</td>
				<td><input type="text" name="MotCle" value="${model.motCle}" /></td>
				<td><input type="submit"  value="chercher" name="action"/></td>
			</tr>
		</table> 	
 	</form>
 	</div>
 	<div class="p-3 border border-dark p-3 m-3">
 	<form action="controleur.php" method="post">
		<input type="hidden" value="${model.mode}" name="mode">
		<table>
		<c:if test="${model.mode=='ajout'}">
			<tr>
				<td class="h5">REF</td>
				<td><input type="text" name="reference" value="${model.produit.reference }" /></td>
				<td></td>
			</tr>
			</c:if>
			<c:if test="${model.mode=='edit'}">
			<tr>
				<td class="h5">REF</td>
				<td>${model.produit.reference}<input type="hidden" name="reference" value="${model.produit.reference }" /></td>
				<td></td>
			</tr>	
			</c:if>		
			<tr>
				<td class="h5">DES</td>
				<td><input type="text" name="designation" value="${model.produit.designation }" /></td>
				<td></td>
			</tr>
			
			<tr>
				<td class="h5">PRIX</td>
				<td><input type="text" name="prix" value="${model.produit.prix }" /></td>
				<td></td>
			</tr>
			<tr>
				<td class="h5">QUANTITE</td>
				<td><input type="text" name="quantite" value="${model.produit.quantite }" /></td>
				<td></td>
			</tr>
			<tr>
				<td><input type="submit" name="action" value="save" /></td>
			</tr>			
		</table> 	
 	</form>
 	</div>
 	<div class="border border-dark p-3 m-3">
 		${model.errors}
 	</div>
 	<div class="p-3 mb-2 border border-dark">
 		<table class="table p-3">
 			<thead class="m-3">
 				<tr class="table-success">
 					<th scope="col">REF</th> 
 					<th scope="col">DES</th>  
 					<th scope="col">PRIX</th> 
 					<th scope="col">QUATITE</th>
 				</tr>
 			</thead>
 			<tbody>
 				<tr>
 					<c:forEach items="${model.produits}" var="p">
 						<tr class="table-info">
 							<th scope="row">${p.reference}</th>
 							<td>${p.designation}</td>
 							<td>${p.prix}</td>
 				 			<td>${p.quantite}</td>
 				 			<td><a href="javascript:confirmer('controleur.php?action=delete&ref=${p.reference}')">supprimer</td>
 				 			<td><a href="controleur.php?action=edit&ref=${p.reference}">edit</td>
 						</tr>
 					</c:forEach>	
 				</tr>
 			</tbody>
 		</table>
 	</div>
 </div>	
</body>
</html>