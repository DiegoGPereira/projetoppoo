<jsp:include page="header.jsp" />
<%@page import="java.util.List"%>
<%@page import="org.example.domain.Produto" %>
<%@page import="org.example.controller.ProdutoControle" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- 
   Document   : listarProdutos
   Created on : 21/05/2019, 21:28:24
   Author     : Diego
   --%>
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
         <td scope="row"><FONT COLOR="ffffff">${p.id}</td>
         <td><FONT COLOR="ffffff">${p.descricao}</td>
         <td><FONT COLOR="ffffff">${p.preco}</td>
         <c:if test="${usuarioLogado.role.id == 1}">
            <td>
               <a href="iniciarEdicaoProduto?id=${p.id}"><button class="btn btn-primary">Editar</button></a>
               <a href="excluirProduto?id=${p.id}"><button class="btn btn-danger">Excluir</button></a>
            </td>
         </c:if>
      </tr>
   </c:forEach>
</table>
<a href="header.jsp"><button type="submit" class="btn btn-secondary" >Voltar</button></a>
<jsp:include page="footer.jsp" />