<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>SpringBoot hw3</title>
    <style>
        h1{
            font-family: "Arial", sans-serif;
        }
        table {
            font-family: "Times New Roman", sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td {
            border: 2px solid #dddddd;
            text-align: left;
            padding: 6px;
        }
        th {
            border: 3px solid #000000;
            text-align: center;
            padding: 8px;
            
        }

        tr:nth-child(even) {
            background-color: #ffe6f2;
            border: 3px solid #dddddd;
        }
    </style>
</head>
<body>

<h1>Inventory Table</h1>

<table>
    <tr>

        <th>Description</th>
        <th>Price(in dollar)</th>
        <th>Color</th>
    </tr>
    <c:forEach var = "listStuff" items = "${Inventorylist}">
        <tr>


            <td>${listStuff.description}</td>
            <td>${listStuff.price}</td>
            <td>${listStuff.color}</td>
            
            

        </tr>
    </c:forEach>
</table>

</body>

</html>
