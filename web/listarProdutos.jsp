<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="Assets/header.jsp" />

<h1>Lista de Produtos</h1>
<hr>

<table class="table table-dark">
    <tr>
        <th scope="col">ID</th>
        <th scope="col">DESCRI��O</th>
        <th scope="col">PRE�O</th>
    <c:if test="${usuarioLogado != null}">
        <th scope="col">OP��ES</th>
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
<jsp:include page="Assets/footer.jsp" />
