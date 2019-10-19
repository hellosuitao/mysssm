<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>product-add</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <script  src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
    <script  src="${pageContext.request.contextPath}/css/bootstrap-3.3.7/js/bootstrap.min.js"></script>

    <%--<script  src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>--%>

</head>
<body>
<form action="${pageContext.request.contextPath}/product/addProduct1.do" method="post">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="产品编号" name="productNum">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="产品名称" name="productName">
    </div>
    <div class="form-group">
        <%--<input type="text" placeholder="出发时间" name="departureTime"
               οnclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/></br>--%>
        <input type="date" class="form-control" placeholder="出发时间" name="departureTime">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="出发城市" name="cityName">
    </div>
    <div class="form-group">
        <input type="text" class="form-control" placeholder="产品价格" name="productPrice">
    </div>
    <div class="form-group">
        <select class="form-control" name="productStatus">
            <option value="0" selected="selected">关闭</option>
            <option value="1">开启</option>
        </select>
    </div>
    <div class="form-group">
        <textarea class="form-control" rows="3" placeholder="产品信息" name="productDesc"></textarea>
    </div>
    <div class="box-tools text-center">
        <button type="submit" class="btn btn-default">保存</button>
        <button type="submit" class="btn btn-default" onclick="history.back(-1);">返回</button>
    </div>

</form>
</body>
</html>
