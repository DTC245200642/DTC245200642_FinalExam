<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Quản lý sản phẩm</title>
</head>
<body>
    <h2>Danh sách sản phẩm</h2>
    <a href="products?action=create">Thêm sản phẩm mới</a>
    <br><br>
    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="p" items="${listProducts}">
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.price}</td>
                <td>${p.quantity}</td>
                <td>
                    <a href="products?action=edit&id=${p.id}">Sửa</a> | 
                    <a href="products?action=delete&id=${p.id}" onclick="return confirm('Bạn có chắc chắn muốn xóa không?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>