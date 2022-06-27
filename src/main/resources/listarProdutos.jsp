<jsp:include page="header.jsp" />
<%@page import="org.example.domain.Produto" %>
<%@page import="org.example.controller.ProdutoControle" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container">
   <h1>Lista de Produtos</h1>
   <table class="table">
      <tr>
         <th scope="col">ID</th>
         <th scope="col">DESCRICAO</th>
         <th scope="col">PRECO</th>
         <c:if test="${usuarioLogado.role.id == 1}">
            <th scope="col">OPCOES</th>
         </c:if>
      </tr>
      <c:forEach items="${produto}" var="p">
         <tr>
            <td scope="row">${p.id}</td>
            <td scope="row">${p.descricao}</td>
            <td scope="row">${p.preco}</td>
            <c:if test="${usuarioLogado.role.id == 1}">
               <td scope="row">
                  <a href="iniciarEdicaoProduto?id=${p.id}"><button class="btn btn-primary">Editar</button></a>
                  <a href="excluirProduto?id=${p.id}"><button class="btn btn-danger">Excluir</button></a>
               </td>
            </c:if>
         </tr>
      </c:forEach>
   </table>
   <a href="index.jsp"><button type="submit" class="btn btn-secondary" >Voltar</button></a>
</div>
<jsp:include page="footer.jsp" />