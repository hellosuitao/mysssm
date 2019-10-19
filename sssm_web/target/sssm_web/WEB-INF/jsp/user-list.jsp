<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>user-list</title>
    <link  href="${pageContext.request.contextPath}/css/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script  src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script  src="${pageContext.request.contextPath}/css/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div>
    <ul class="nav nav-pills">
        <li role="presentation"><a href="${pageContext.request.contextPath}/user/addUser.do">添加用户</a></li>
        <li role="presentation"><a href="#">删除</a></li>
        <li role="presentation"><a href="#">开启</a></li>
        <li role="presentation"><a href="#">屏蔽</a></li>
        <li role="presentation"><a href="#">刷新</a></li>
    </ul>
</div>
<table class="table table-hover">
    <tr>
        <td>id</td>
        <td>用户名</td>
        <td>邮箱</td>
        <td>联系方式</td>
        <td>状态</td>
        <td class="text-center">操作</td>

    </tr>
    <c:forEach items="${userList}" var="userInfo">
        <tr>
            <td>${userInfo.id}</td>
            <td>${userInfo.username}</td>
            <td>${userInfo.email}</td>
            <td>${userInfo.phoneNum}</td>
            <td>${userInfo.statusStr}</td>
            <td class="text-center">
                <a href="${pageContext.request.contextPath}/user/findById.do?id=${userInfo.id}">详情</a>
                <a href="${pageContext.request.contextPath}/user/findByIdAndAddRole.do?id=${userInfo.id}">添加角色</a>
            </td>

        </tr>
    </c:forEach>

</table>

</body>
</html>
