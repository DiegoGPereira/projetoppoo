<jsp:include page="Assets/header.jsp" />

<h1>Cadastro de Produto</h1>
<hr>
<form method="POST" action="cadastrarProduto">
    <div class="form-group">
        <label for="descricao">Descri��o</label>
        <input type="text" class="form-control" name="descricao" required>
    </div>
    <div class="form-group">
        <label for="preco">Pre�o</label>
        <input type="text" class="form-control col-5" name="preco" required>
    </div>

    <br><br>
    <button class="btn btn-primary" type="submit">Cadastrar</button>
    <a class="btn btn-danger" href="index.jsp">Voltar</a>
</form>



<jsp:include page="Assets/footer.jsp" />