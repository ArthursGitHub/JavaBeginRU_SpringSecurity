<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
<head>
  <title>Access Denied</title>
</head>

<body>
<h1>Sorry, access is denied</h1>
<table>
  <tr><td>Current User:</td><td>

    <%
      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
      if (auth != null) { %>

    <%= auth.getPrincipal().toString() %>

    <% } %>
  </td></tr>
</table>
<form action="<c:url value="/logout"/>" method="post">
  <input type="submit" value="Logoff"/> (also clears any remember-me cookie)
  <security:csrfInput/>
</form>
</body>
</html>
