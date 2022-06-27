<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<main>
   <div class="container">
   <form method="POST" action="editarProduto">
      <h1>Edição de Produto</h1>
      <hr>
      <label for="id"><b>ID</b></label>
      <input type="text" class="form-control" placeholder="ID" value="${produto.id}" name="id" readonly>
      <label for="descricao"><b>Descrição</b></label>
      <input type="text" class="form-control" placeholder="Informe a Descrição" value="${produto.descricao}" name="descricao" required>
      <label for="preco"><b>Preço</b></label>
      <input type="text" class="form-control" placeholder="Informe o Preço" value="${produto.preco}" name="preco" required>
      <br><br>
      <button type="submit" class="btn btn-success">Confirmar</button>
      <a href="listarProdutos"><button type="submit" class="btn btn-secondary">Voltar</button></a>
   </form>
   <div>
</main>
<jsp:include page="footer.jsp" />