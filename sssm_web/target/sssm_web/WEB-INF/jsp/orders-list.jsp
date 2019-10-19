<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>orders-list</title>
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
        <td>订单编号</td>
        <td>产品名称</td>
        <td>产品价格</td>
        <td>下单时间</td>
        <td>下单状态</td>
        <td class="text-center">操作</td>

    </tr>
    <c:forEach items="${pageInfo.list}" var="orders">
        <tr>
            <td>${orders.id}</td>
            <td>${orders.orderNum}</td>
            <td>${orders.product.productName}</td>
            <td>${orders.product.productPrice}</td>
            <td>${orders.orderTimeStr}</td>
            <td>${orders.orderStatusStr}</td>
            <td class="text-center">
                <button type="button" class="btn btn-default">订单</button>
                <button type="button" class="btn btn-default"
                        onclick="location.href='${pageContext.request.contextPath}/orders/findById.do?id=${orders.id}'">详情</button>
                <button type="button" class="btn btn-default">编辑</button>
            </td>
        </tr>
    </c:forEach>
</table>
<div class="dropdown" style="float: left">
    每页显示
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        条数据
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
        <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=2">2</a></li>
        <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=3">3</a></li>
        <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=5">5</a></li>
        <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=10">10</a></li>
    </ul>
</div>
<div class="text-right" style="margin-right: 50px">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=1&size=${pageInfo.pageSize}">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a></li>
            <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a></li>
            </c:forEach>
            <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a></li>
            <li><a href="${pageContext.request.contextPath}/orders/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}">尾页</a></li>
        </ul>
    </nav>
</div>

</body>
</html>
