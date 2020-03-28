<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>SpringBoot hw3</title>
    <style>
        table {
            font-family: "Times New Roman", sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 7px;
        }
        th {
            border: 1px solid #000000;
            text-align: left;
            padding: 7px;
        }

        tr:nth-child(even) {
            background-color: #ffe6f2;
        }
    </style>
</head>
<body>

<h2>Inventory Table</h2>

<table>
    <tr>

        <th>Description</th>
        <th>Price(in dollar)</th>
        <th>Color</th>
    </tr>
    <c:forEach var = "listitem" items = "${Inventorylist}">
        <tr>


            <td>${listitem.description}</td>
            <td>${listitem.price}</td>
            <td>${listitem.color}</td>
            

        </tr>
    </c:forEach>
</table>

</body>

</html>
