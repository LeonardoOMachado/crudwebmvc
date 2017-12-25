<!DOCTYPE html>

<html>

<head>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/assets/vendor/css/materialize.min.css">
<script type="text/javascript"
	src="/assets/vendor/js/materialize.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>

	<h3>${btnForm } Cliente</h3>
	<br />
	<br />
	<div class="row">
		<form class="col s12" id="cadastrar">
		<div class="row">
			<div class="input-field col s6">
				<i class="material-icons prefix">account_circle</i> <input 
					id="icon_prefix" type="text" class="validate"
					value="${cliente.getNome() }" /> <label for="icon_prefix">First
					Name</label>
			</div>
		</div>
		</form>
	</div>

	<script type="text/javascript">
		document.getElementById("cadastrar").onsubmit = function() {
			var name = document.getElementsByTagName("input")[0].value;
			var id = ${cliente.getId()}
			var dados = id > 0 ? " { 'id' : "+id+ " 'nome' : "+name+"}" : "{ 'nome' : "+name+"}";
			$.ajax({
		        url : "/cliente-api/",
		        type: "POST",
		        data: JSON.stringify(
		            {
		            	"id" : id ,
		            	"nome" : name 
		            }
		        ),
		        contentType: "application/json; charset=utf-8",
		        dataType   : "json",
		        success    : function(){
		        	window.location.href = "/";
		        }
		    });
		}
	</script>
</body>
</html>