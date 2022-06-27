<jsp:include page="header.jsp" />
<main role="main" class="inner cover">
   <form method="POST" action="login">
      <div class="form-group">
         <label for="inputEmail">Email</label>
         <input id="inputemail" type="email" class="form-control" placeholder="Email" name="email" required><br>
      </div>
      <div class="form-group">
         <label for="inputpass">Senha</label>
         <input id="inputpass" type="password" class="form-control" placeholder="Senha" name="senha" required><br>
      </div>
      <br>
      <input type="submit" class="btn btn-primary" value="Entrar">
      <br>
      ${msgErro}
   </form>
</main>
<jsp:include page="footer.jsp" />