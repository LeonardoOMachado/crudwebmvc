<!DOCTYPE html>
<html>

<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
	
  <nav>
    <div class="nav-wrapper">
      <a href="/" class="brand-logo">Pagina Inicial</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="/cadastro" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons">add</i></a></li>
        <li><a href="badges.html">Components</a></li>
        <li><a href="collapsible.html">JavaScript</a></li>
      </ul>
    </div>
  </nav>
    <c:import url="${url}" />
</body>
</html>