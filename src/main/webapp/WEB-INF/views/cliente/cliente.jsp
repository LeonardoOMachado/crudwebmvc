<!DOCTYPE html>
<html>

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/assets/vendor/css/materialize.min.css">
<script type="text/javascript"
	src="/assets/vendor/js/materialize.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
	<h3>Listando Clientes</h3>
	<table class="highlight">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cliente" items="${clientes}">
				<tr>
					<td>${cliente.getId() }</td>
					<td>${cliente.getNome() }</td>
					<td><a href="/editar/${cliente.getId() }">Editar</a></td>
					<td><a onclick="delete_item(${cliente.getId()})" href="/">Deletar</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<script type="text/javascript">
			delete_item = function(data_id) {
				var uri = "/cliente-api/" + data_id;
			   	$.ajax({	
			        url: uri,
			        type: 'DELETE',
			    });
			}
	</script>
</body>
</html>