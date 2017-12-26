<!DOCTYPE html>

<html>

<head>
<link rel="stylesheet" type="text/css"
	href="/assets/vendor/css/bootstrap.min.css">
<script type="text/javascript" src="/assets/vendor/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
</head>
<body>

	<br>
	<h3>${btnForm }Cliente</h3>
	<br />
	<form id="cadastrar" action="/">
		<input style="width: 100%" type="text" id="nomeInput" value="${cliente.getNome() }"
			placeholder="Nome">
			
		<button class="btn btn-primary btn-sm" type="submit">${btnForm } Cliente</button>
	</form>

	<script type="text/javascript">
		document.getElementById("cadastrar").onsubmit = function() {
			var name = document.getElementById("nomeInput").value;
			var id = ${cliente.getId()}
			$.ajax({
				url : "/cliente-api/",
				type : "POST",
				data : JSON.stringify({
					"id" : id,
					"nome" : name
				}),
				contentType : "application/json; charset=utf-8",
				dataType : "json",
				success : function() {
					window.location.href = "/";
					location.reload;
				}
			});
		}
	</script>
</body>
</html>