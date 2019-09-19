<%@ page import="java.util.ArrayList" %>
<%@ page import="customer.Customers" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 9/19/2019
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>List customers</title>
    <meta charset="UTF-8">
</head>
<body>
    <%
        Customers person1 = new Customers("Văn Toàn","1995-12-23","Hải Dương","vantoan.jpg");
        Customers person2 = new Customers("Quang hải","1996-13-24","Hà Nội","quanghai.jpg");
        Customers person3 = new Customers("Công Phượng","1995-5-24","Nghệ An","congphuong.jpg");
        Customers person4 = new Customers("Văn Hậu","1997-12-5","Nam Định","vanhau.jpg");
        ArrayList<Customers> list = new ArrayList<>();
        list.add(person1);
        list.add(person2);
        list.add(person3);
        list.add(person4);
        pageContext.setAttribute("list",list);
    %>
    <table border="1">
        <tr>
            <th>Tên</th>
            <th> Ngày Sinh</th>
            <th>Địa chỉ</th>
            <th>Hình ảnh</th>
        </tr>
        <c:forEach var="customer" items="#{list}">
         <tr>.
             <td><h1><c:out value="${customer.name}"/></h1></td>
             <td><h1><c:out value="${customer.birthday}"/></h1></td>
             <td><h1><c:out value="${customer.address}"/></h1></td>
             <td><img width="150px" height="150px" id = "img" src="Image/<c:out value="${customer.image}"/>"></td>

         </tr>
        </c:forEach>
    </table>
<table>

</table>

</body>
</html>
