<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
  <div>
    <h1>Pets</h1>
    <table>
        <tr>
            <th>Name</th>
        </tr>
        <c:forEach items="${pets}" var="pet">
            <tr>
                <td>${pet.name}</td>
                <td>
                    <img src="${pet.image}" alt="${pet.name} Image">
                </td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>
