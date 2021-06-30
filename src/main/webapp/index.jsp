<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Customer" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <%
    List<Customer>customerList=new ArrayList<>();
    customerList.add(new Customer("hiep","19","nam định","https://supperclean.vn/wp-content/uploads/2020/12/112818_tinh_yeu_va_tham_vong_4-768x823.jpg"));
    customerList.add(new Customer("thanh","19","nam định","https://supperclean.vn/wp-content/uploads/2020/12/anh-trai-dep-viet-nam-1.jpg"));
    request.setAttribute("Customer", customerList);
  %>
  <div>danh sach khach hang</div>
  <table width="70%">
    <tr>
    <th>tên</th>
    <th>ngày sinh</th>
    <th>địa chỉ</th>
    <th>hình ảnh</th>
    </tr>
    <c:forEach var="customers" items="${Customer}">
    <tr>
      <th>${customers.name}</th>
      <th>${customers.date}</th>
      <th>${customers.address}</th>
      <th><img src="${customers.img} " height="100"></th>
    </tr>
    </c:forEach>
  </table>
  </body>
</html>
