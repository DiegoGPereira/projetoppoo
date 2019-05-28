<jsp:include page="Assets/header.jsp" />

<main role="main" class="inner cover">


<form method="POST" action="login">
            
            <div class="form-group">
                <label for="inputEmail">Endere&ccedil;o de Email</label>
                <input id="inputemail" type="email" class="form-control" placeholder="Email" name="email" required><br>
            </div>
            <div class="form-group">
                <label for="inputpass">Senha</label>
                <input id="inputpass" type="password" class="form-control" placeholder="Senha" name="senha" required><br>
            </div>
            
            ${msgErro}
         
            <input type="submit" class="btn btn-primary" value="Entrar">
</form>

</main>

<jsp:include page="Assets/footer.jsp" />