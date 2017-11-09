<%@ include file="/WEB-INF/views/include.jsp" %>
<%@ page pageEncoding="UTF-8" %>

  <head>
    <title>Exit User</title>
  </head>

    <h1>Exit User</h1>

    <c:if test="${not empty param.login_error}">
      <span style="color: red; ">
        Your 'Exit User' attempt was not successful, try again.<br/><br/>
        Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
      </span>
    </c:if>

      <table>
        <tr><td>Current User:</td><td>

<%
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null) { %>

        <%= auth.getPrincipal().toString() %>

 <% } %>
         </td></tr>
      </table>

<a href="<c:url value="/login.jsp"/>">Login</a>

  </body>
</html>
