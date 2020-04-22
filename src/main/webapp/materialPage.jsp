<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="includes/header.inc"%>
<head>
    <title>Materialeliste</title>
</head>

<div class="row">
    <div class="col-sm">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">Kategori</th>
                <th scope="col">Navn</th>
                <th scope="col">Beskrivelse</th>
                <th scope="col">Antal</th>
                <th scope="col">Længde</th>
                <th scope="col">Pris</th>


            </tr>
            </thead>
            <tbody>
            <c:forEach var="material" items="${requestScope.materialList}">
                <td>${material.category}</td>
                <td>${material.name}</td>
                <td>${material.description}</td>
                <td>${material.quantity}</td>
                <td>${material.length}</td>
                <td>${material.price}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@include file="includes/footer.inc"%>