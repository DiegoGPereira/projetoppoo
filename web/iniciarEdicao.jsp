<%-- 
    Document   : iniciarEdicao.jsp
    Created on : 20/05/2019, 00:55:06
    Author     : Diego
--%>
<html>
<head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
</head>

<body>

<form method="POST" action="editarProduto">
    <h1>Edição de Produto</h1>
    
    <hr>
    
    
    <label for="id"><b>ID</b></label>
    <input type="text" placeholder="ID" value="${produto.id}" name="id" readonly>
    
    <label for="descricao"><b>Descrição</b></label>
    <input type="text" placeholder="Coloque a Descrição" value="${produto.descricao}" name="descricao" required>

    <label for="preco"><b>Preço</b></label>
    <input type="text" placeholder="Digite o Preço" value="${produto.preco}" name="preco" required>
    <br><br>
    <button type="submit">Atualizar</button>
  </div>

</form>
<a href="listarProdutos"><button type="submit">Voltar</button></a>

<body>
</html>