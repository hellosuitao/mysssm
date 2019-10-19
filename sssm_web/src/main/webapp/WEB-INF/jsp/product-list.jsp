<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>product-list</title>
    <link  href="${pageContext.request.contextPath}/css/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script  src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script  src="${pageContext.request.contextPath}/css/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div>
    <ul class="nav nav-pills">
        <li role="presentation"><a href="${pageContext.request.contextPath}/product/addProduct.do">新建</a></li>
        <li role="presentation"><a href="#">删除</a></li>
        <li role="presentation"><a href="#">开启</a></li>
        <li role="presentation"><a href="#">屏蔽</a></li>
        <li role="presentation"><a href="#">刷新</a></li>
    </ul>
</div>
<table class="table table-hover">
    <tr>
        <td>id</td>
        <td>编号</td>
        <td>产品名称</td>
        <td>出发城市</td>
        <td>出发时间</td>
        <td>产品价格</td>
        <td>产品描述</td>
        <td>状态</td>
        <td>操作</td>

    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.productNum}</td>
            <td>${product.productName}</td>
            <td>${product.cityName}</td>
            <td>${product.departureTimeStr}</td>
            <td>${product.productPrice}</td>
            <td>${product.productDesc}</td>
            <td>${product.productStatusStr}</td>
            <td>订单</td>
            <td>详情</td>
            <td>编辑</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
