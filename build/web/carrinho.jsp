<%-- 
    Document   : carrinho.jsp
    Created on : 20/05/2019, 00:55:06
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
</head>
    <body>
        <table>
            <tr>
            <td> <strong> NOME </strong> </td>
            <td> <strong> PREÇO </strong> </td>
            </tr>
        <c:forEach items="${carrinho.produtos}" var="produto" varStatus="status">
        <tr>
            <td> ${produto.descricao} </td>
            <td> ${produto.preco} </td>
            <td><a href="removerDoCarrinho?id=${produto.id}"><button type="submit"> Excluir</button></a></td>
            
        </tr>
        </c:forEach>
        </table>

<a href="index.jsp"><button type="submit">Voltar</button></a>


</body>
</html>
