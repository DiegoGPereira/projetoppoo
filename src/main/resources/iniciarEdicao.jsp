<jsp:include page="header.jsp" />
<main role="main" class="inner cover">
   <form method="POST" action="editarProduto">
      <h1>Edição de Produto</h1>
      <hr>
      <label for="id"><b>ID</b></label>
      <input type="text" class="form-control" placeholder="ID" value="${produto.id}" name="id" readonly>
      <label for="descricao"><b>Descrição</b></label>
      <input type="text" class="form-control" placeholder="Coloque a Descrição" value="${produto.descricao}" name="descricao" required>
      <label for="preco"><b>Preço</b></label>
      <input type="text" class="form-control" placeholder="Digite o Pre�o" value="${produto.preco}" name="preco" required>
      <br><br>
      <button type="submit" class="btn btn-info">Confirmar</button>
      <a href="listarProdutosAdmin"><button type="submit" class="btn btn-secondary">Voltar</button></a>
   </form>
</main>
<jsp:include page="footer.jsp" />