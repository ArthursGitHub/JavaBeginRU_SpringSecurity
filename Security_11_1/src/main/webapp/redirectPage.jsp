<%@ include file="/WEB-INF/views/include.jsp" %>

<%-- Redirected because we can't set the welcome page to a virtual URL. --%>
<c:redirect url="/welcome"/>

<%-- if you are not authorized - you will redirect to
<form-login login-page="/login.jsp" in Spring-security-context.xml
After login you will see http://localhost:8080/welcome (this is views/welcomePage.jsp really) %-->

<%--
this page need to redirect into hidden from outside folder WEB-INF\views\welcomePage.jsp
Редирект обработается MainController в @RequestMapping(value = "/welcome" }, method = RequestMethod.GET)
--%>