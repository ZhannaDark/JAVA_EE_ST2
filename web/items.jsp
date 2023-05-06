<%@ page import="java.util.ArrayList" %>
<%@ page import="main.javaee.mini.shop.Items" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="shapka.jsp"%>
<div class="container mt-3 w-75">
        <p class="text-center px-2" style="font-weight: bold; font-size: 23px">Welcome to <%=shopName%></p>
        <p class="text-center px-2" style="line-height: 0.1em">Electronic devices with high quality and service</p>
    <div class="row mt-3" style="margin-left: 100px; margin-right: 100px">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");
            if(items !=null){
                for(Items it : items){
        %>
        <div class="row-6">
            <div class="card m-3" style="width: 13rem; height: 13rem">
                <h7 class="card-header text-center"><%=it.getName()%></h7>
                <div class="card-body text-center">
                    <p class="card-text text-success" style="font-size: 1.5rem">$<%=it.getPrice()%></p>
                    <p class="card-subtitle" style="font-size: 10px; margin-left: 35px; margin-right: 35px"><%=it.getDescription()%></p>
                    <a href="signup.jsp" class="btn btn-success mt-3 w-100" style="height: 30px; font-size: small">Buy now</a>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
</body>
</html>