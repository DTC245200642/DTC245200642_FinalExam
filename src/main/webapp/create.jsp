<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Thêm sản phẩm</title></head>
<body>
    <h2>Thêm sản phẩm mới</h2>
    <form action="products?action=create" method="post">
        <label>Tên sản phẩm:</label><br>
        <input type="text" name="name" required><br><br>
        <label>Giá:</label><br>
        <input type="number" step="any" name="price" required><br><br>
        <label>Số lượng:</label><br>
        <input type="number" name="quantity" required><br><br>
        <button type="submit">Lưu</button>
    </form>
    <br><a href="products">Quay lại danh sách</a>
</body>
</html>