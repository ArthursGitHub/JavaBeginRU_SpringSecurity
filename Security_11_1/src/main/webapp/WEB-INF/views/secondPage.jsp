<%@ include file="/WEB-INF/views/include.jsp" %>

<html>
<head><title>Index page</title></head>

<body>
<p>This is secondPage page (webapp\WEB-INF\views\secondPage.jsp).
<p>without login you can't see it


    <br> Hello ${pageContext.request.userPrincipal.name}

    <security:authorize access="isRememberMe()">
<p><h3> ${pageContext.request.userPrincipal.name} login with "remember me" cookies</h3>
</security:authorize>

<security:authorize access="isFullyAuthenticated()">
    <p><h3> ${pageContext.request.userPrincipal.name} login with username and password</h3>
</security:authorize>

<form action="<c:url value="/logout"/>" method="post">
    <input type="submit" value="Logoff"/> (also clears any remember-me cookie)
    <security:csrfInput/>
</form>

</body>
</html>
