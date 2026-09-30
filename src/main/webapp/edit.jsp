<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Sửa sản phẩm</title></head>
<body>
    <h2>Cập nhật thông tin sản phẩm</h2>
    <form action="products?action=edit" method="post">
        <input type="hidden" name="id" value="${product.id}">
        <label>Tên sản phẩm:</label><br>
        <input type="text" name="name" value="${product.name}" required><br><br>
        <label>Giá:</label><br>
        <input type="number" step="any" name="price" value="${product.price}" required><br><br>
        <label>Số lượng:</label><br>
        <input type="number" name="quantity" value="${product.quantity}" required><br><br>
        <button type="submit">Cập nhật</button>
    </form>
    <br><a href="products">Quay lại danh sách</a>
</body>
</html>