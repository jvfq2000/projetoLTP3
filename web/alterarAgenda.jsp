<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Agenda - Alterar </title>
        
        <style>
            body{
                background-image:url("img/fundo.jpg");
                        background-attachment:fixed;
                        background-size:100%;
                        background-repeat:no-repeat;
            }
        </style>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("id").trim());
            String titulo = request.getParameter("titulo").trim();
            String descricao = request.getParameter("descricao").trim();
            String data_hora = request.getParameter("data_hora").trim();
            String duracao = request.getParameter("duracao").trim();
            String local = request.getParameter("local").trim();
        %>
        
        <br><br>
      <div class="container shadow-lg p-3 mb-5 bg-white rounded">
        <h1 class="text-center shadow p-3">Dados do Agendamento</h1>
        <br><br>
        
        <form id= "frmCadUsuario" method="post" action="processaAlteracao.jsp" >
            <input type="text" name="id" value="<% out.println(id); %>" style="display: none" >
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="titulo">Título</label>
                    <input type="text" class="form-control" id="titulo" name="titulo" placeholder="" value="<% out.println(titulo); %>" required>
                    <div class="invalid-feedback">
                        Campo obrigatório!
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="descricao">Data e Hora</label>
                    <input type="text" class="form-control" id="data_hora" name="data_hora" placeholder="" value="<% out.println(data_hora); %>" required>
                    <div class="invalid-feedback">
                        Campo obrigatório!
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 mb-3">
                    <label for="descricao">Descrição</label>
                    <input type="text" class="form-control" id="descricao" name="descricao" placeholder="" value="<% out.println(descricao); %>">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="descricao">Local</label>
                    <input type="text" class="form-control" id="local" name="local" placeholder="" value="<% out.println(local); %>">
                </div>
                <div class="col-md-6 mb-3">
                    <label for="descricao">Duração</label>
                    <input type="text" class="form-control" id="duracao" name="duracao" placeholder="" value="<% out.println(duracao); %>">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <input class="shadow btn btn-success col-md-12" type="submit" name="btnSalvar" value="Salvar">
                </div>
                <div class="col-md-6 mb-3">
                    <a class="shadow btn btn-danger col-md-12" href="index.jsp">Cancelar</a>
                </div>
            </div>
        </form>
        <br>
      </div>
    </body>
</html>
