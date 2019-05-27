<%-- 
    Document   : cadastrar.jsp
    Created on : 17/05/2019, 12:23:06
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
    <h1>Cadastro</h1>
    <hr>
    <form method="POST" action="cadastrarProduto">
    <label for="descricao"><b>Descrição</b></label>
    <input type="text" placeholder="Coloque a Descrição" name="descricao" required>
    <label for="preco"><b>Preço</b></label>
    <input type="text" placeholder="Digite o Preço" name="preco" required>
    <br><br>
    <button type="submit">Cadastrar</button>
    </form>
    <a href="index.jsp"><button type="submit" >Voltar</button></a>

</body>
</html>