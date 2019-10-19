<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/product/findAll.do">产品管理</a>
<a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=2">订单管理</a>
<a href="${pageContext.request.contextPath}/user/findAll.do">用户管理</a><br>
<a href="${pageContext.request.contextPath}/logout.do">注销</a>
</body>
</html>
