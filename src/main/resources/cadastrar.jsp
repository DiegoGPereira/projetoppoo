<jsp:include page="header.jsp" />
<main role="main" class="inner cover">
   <body>
      <h1>Cadastro de Produto</h1>
      <hr>
      <form method="POST" action="cadastrarProduto">
         <label for="descricao"><b>Descrição</b></label>
         <input type="text" class="form-control" placeholder="Coloque a Descriço" name="descricao" required>
         <br>
         <label for="preco"><b>Preço</b></label>
         <input type="text" class="form-control" placeholder="Digite o Preço" name="preco" required>
         <br><br>
         <button type="submit" class="btn btn-success">Cadastrar</button>
         <a href="header.jsp"><button type="button" class="btn btn-secondary">Voltar</button></a>
      </form>
   </body>
</main>
<jsp:include page="footer.jsp" />