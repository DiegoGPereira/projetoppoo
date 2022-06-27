<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<main>
   <div class="container">
      <h1>Cadastro de Produto</h1>
      <hr>
      <form method="POST" action="cadastrarProduto">
         <label for="descricao"><b>Descrição</b></label>
         <input type="text" class="form-control" placeholder="Informe a Descrição" name="descricao" required>
         <br>
         <label for="preco"><b>Preço</b></label>
         <input type="text" class="form-control" placeholder="Informe o Preço" name="preco" required>
         <br><br>
         <button type="submit" class="btn btn-success">Cadastrar</button>
         <a href="index.jsp"><button type="button" class="btn btn-secondary">Voltar</button></a>
      </form>
   </div>
</main>
<jsp:include page="footer.jsp" />