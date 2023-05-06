<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>User Information</title>
  <%@ include file="head.jsp" %>
</head>
<body>
<%@ include file="shapka.jsp" %>
<div class="container mt-3 w-75">
    <p class="text-center px-2" style="font-weight: bold; font-size: 23px">Hello <%=(String)request.getAttribute("user")%></p>
    <p class="text-center px-2" style="line-height: 0.1em">This is your profile page</p>
</div>
</body>
</html>