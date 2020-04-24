<%@ page import="FogUtil.Initializer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/header.inc"%>
<%@page import="java.text.DecimalFormat" %>
<%
    if (request.getServletContext().getAttribute("width") == null) {
        request.getServletContext().setAttribute("width", Initializer.getWidthsList());
    }
    if (request.getServletContext().getAttribute("length") == null) {
        request.getServletContext().setAttribute("length", Initializer.getLengthsList());
    }
    if (request.getServletContext().getAttribute("height") == null) {
        request.getServletContext().setAttribute("height", Initializer.getHeightsList());
    }
    if (request.getServletContext().getAttribute("roofMaterial") == null) {
        request.getServletContext().setAttribute("roofMaterial", Initializer.getSlantedRoofMaterialType());
    }
    if (request.getServletContext().getAttribute("flatRoof") == null) {
        request.getServletContext().setAttribute("flatRoof", false);
    }

%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome page</title>
</head>
<body>

<br>
<br>

<h3>Design carport med rejsning</h3>

    <a href="FrontController?target=redirect&destination=index">Eller gå til carport med fladt tag</a>

<br>
<br>

<div class="container-fluid">
    <div id="navbar-two">
        <div class="row">

            <div class="form-group">
                <form action="FrontController" method="POST">
                    <input type="hidden" name="target" value="AddDimensionsCommand">
                    <label for="exampleFormControlSelect1">Vælg bredde:</label>
                    <select class="form-control" name="width" id="exampleFormControlSelect1" style="width: 350px">
                        <c:forEach var="width" items="${applicationScope.width}">
                            <option value="${width}">${width} mm.</option>
                        </c:forEach>
                    </select>

                    <div class="form-group">
                        <label for="exampleFormControlSelect2">Vælg længde:</label>
                        <select class="form-control" name="length" id="exampleFormControlSelect2" style="width: 350px">
                            <c:forEach var="length" items="${applicationScope.length}">
                                <option value="${length}">${length} mm.</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect3">Vælg længde:</label>
                        <select class="form-control" name="height" id="exampleFormControlSelect3" style="width: 350px">
                            <c:forEach var="height" items="${applicationScope.height}">
                                <option value="${height}">${height} mm.</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect4">Vælg materiale til tag:</label>
                        <select class="form-control" name="roofMaterial" id="exampleFormControlSelect4" style="width: 350px">
                            <c:forEach var="roofMaterial" items="${applicationScope.roofMaterial}">
                                <option value="${roofMaterial}">${roofMaterial}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <br>

                    <div class="text-center">
                        <button type="submit" class="btn btn-primary">Beregn materialeliste</button>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        * {box-sizing: border-box;}
        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type=submit]:hover {
            background-color: #45a049;
        }
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>

    <!--
    <body>
    <h3>Kontakt detaljer</h3>
    <div class="container">
        <form action="/action_page.php">
            <label for="fornavn">Fornavn</label>
            <input type="text" id="fornavn" name="firstname" placeholder="Dit fornavn">
            <label for="efternavn">Efternavn</label>
            <input type="text" id="efternavn" name="lastname" placeholder="Dit efternavn">
            <label for="vej">Vejnavn</label>
            <input type="text" id="vej" name="street" placeholder="Vejnavn">
            <label for="husnummer">Husnummer</label>
            <input type="text" id="husnummer" name="streetno" placeholder="Husnummer">
            <label for="postnr">Postnummer</label>
            <input type="text" id="postnr" name="postnr" placeholder="Postnr">
            <label for="tlfnr">Telefon nr</label>
            <input type="text" id="tlfnr" name="tlfnr" placeholder="Tlfnr">
            <label for="mail">Email</label>
            <input type="email" id="mail" name="mail" placeholder="Email">
            </select>
            <label for="Kommentar">Bemærkninger</label>
            <textarea id="Kommentar" name="Kommentar" placeholder="Din kommentar" style="height:200px"></textarea>
            <input type="submit" value="Send">
        </form>

        -->
</div>
</body>

<%@include file="includes/footer.inc"%>
