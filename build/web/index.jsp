<%-- 
    Document   : index.jsp
    Created on : 14/05/2019, 00:33:06
    Author     : Diego
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="Assets/Style.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
</head>
    <body>

        <h1>Quitanda</h1>

        <c:if test="${usuarioLogado != null}">
            
             <a class="nav-link" href="logout"><button> Sair (${usuarioLogado.email})</button></a>
             
                <c:if test="${usuarioLogado != null}">
                <a href="cadastrar.jsp"><button class="button">Novo Produto</button></a><a href="cadastrar.jsp">
                <a href="carrinho.jsp"><button class="button">Carrinho</button></a>
                </c:if>
                    
        </c:if>

        <c:if test="${usuarioLogado == null}">
        
            <a href="login"><button>Entrar</button></a>
       
        </c:if>  



    <a href="listarProdutos"><button>Listar Produtos</button></a>


</body>
</html>