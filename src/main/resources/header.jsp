<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   </head>
   <body>
      <header>
         <nav class="navbar bg-light">
            <div class="container">
               <div class="p-2 flex-grow-1"><a class="nav-link" href="index.jsp">Loja Virtual</a></div>
               <div class="d-flex">
                  <div class="p-2">
                     <c:if test="${usuarioLogado.role.id == 2 || usuarioLogado.role.id == 1}">
                        <a class="nav-link" href="listarProdutos">Listar Produtos</a>
                     </c:if>
                  </div>
                  <div class="p-2">
                     <c:if test="${usuarioLogado.role.id == 1}">
                        <a class="nav-link" href="cadastrar.jsp">Novo Produto</a>
                     </c:if>
                  </div>
                  <div class="p-2">
                     <c:if test="${usuarioLogado == null}">
                        <a class="nav-link" href="login">Entrar</a>
                     </c:if>
                     <c:if test="${usuarioLogado != null}">
                        <a class="nav-link" href="logout">Sair (${usuarioLogado.email})</a>
                     </c:if>
                  </div>
               </div>
            </div>
         </nav>
      </header>