<%-- 
    Document   : login.jsp
    Created on : 20/05/2019, 00:55:06
    Author     : Diego
--%>

<!DOCTYPE html>
    <html>
    <head>
    
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    </head>
    <body>

        <br>
    
        <form method="POST" action="login">
            <input type="text" placeholder="Email" name="email" required><br>
            <input type="password" placeholder="Senha" name="senha" required><br>
            
                ${msgErro}
         
            
            <input type="submit" value="Entrar">
        </form>                


</body>
</html>
