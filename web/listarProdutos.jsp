<%@page import="java.util.List"%>
<%@page import="Modelo.Produto" %>
<%@page import="Controle.ProdutoControle" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- 
    Document   : listarProdutos
    Created on : 21/05/2019, 21:28:24
    Author     : Diego
--%>

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
            <th>ID</th>
            <th>DESCRICAO</th>
            <th>PRECO</th>
            <c:if test="${usuarioLogado != null}">
            <th>OPCOES</th>
            </c:if> 
        </tr>
        
        <c:forEach items="${produto}" var="p">

            <tr>
                <td>${p.id}</td>
                <td>${p.descricao}</td>
                <td>${p.preco}</td>
                <c:if test="${usuarioLogado != null}">
                    
                <td>
                    <a href="iniciarEdicaoProduto?id=${p.id}"><button class="button">Editar</button></a>
                    <a href="excluirProduto?id=${p.id}"><button class="button">Excluir</button></a>
                    <a href="adicionarNoCarrinho?id=${p.id}"><button class="button">Adicionar ao Carrinho</button></a> 
                </td>
                </c:if>  
            </tr> 

        </c:forEach>
    </table>
    </body>
</html>
