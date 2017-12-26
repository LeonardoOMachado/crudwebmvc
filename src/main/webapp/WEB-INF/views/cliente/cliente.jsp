<!DOCTYPE html>
<html>

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="/assets/vendor/css/bootstrap.min.css">
<script type="text/javascript" src="/assets/vendor/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</head>
<body>
	<h3>Listando Clientes</h3>
	<table class="table table-hover">
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