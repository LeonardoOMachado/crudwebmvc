<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="/assets/vendor/css/bootstrap.min.css">
<script type="text/javascript" src="/assets/vendor/js/bootstrap.min.js"></script>

</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="margin:24px 0;">
  <a class="navbar-brand" href="javascript:void(0)">Logo</a>
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navb">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navb">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="/">Clientes</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/cadastro">Cadastro</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" action="/nome" method="get">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" name="nome">
      <button class="btn btn-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>


	<c:import url="${url}" />
</body>
</html>


