<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link href="Assets/Style.css" rel="stylesheet" type="text/css"/>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/examples/cover/cover.css">
   </head>
   <body>
      <div class="container">
      <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
      <header class="masthead mb-auto">
         <h3 class="masthead-brand"><a href="index.jsp">Loja Virtual</a></h3>
         <nav class="nav nav-masthead justify-content-center">
            <c:if test="${usuarioLogado.role.id == 2 || usuarioLogado.role.id == 1}">
               <a class="nav-link" href="listarProdutos">Listar Produtos</a>
            </c:if>
            <c:if test="${usuarioLogado.role.id == 1}">
               <a class="nav-link" href="cadastrar.jsp">Novo Produto</a>
            </c:if>
            <div class="inner">
               <c:if test="${usuarioLogado == null}">
                  <a class="nav-link" href="login">Entrar</a>
               </c:if>
               <c:if test="${usuarioLogado != null}">
                  <a class="nav-link" href="logout">Sair (${usuarioLogado.email})</a>
               </c:if>
            </div>
         </nav>
      </header>