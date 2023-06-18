<%-- 
    Document   : index
    Created on : 16 jun. 2023, 19:08:29
    Author     : Alexiis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Finca Cafetelera</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
       
       
    </head>
    <body>
        <div class="container">
            
            <div class="row tex-center">
                
                <h3>Inicio De Sesion</h3>
                
            </div>
            
            <div class="row">
                <div class="col">
                        
                </div>
                <div class="col-6">
                    <form action="" method="post">
                        <div class="row mb-2">
                            
                            
                            <label form="nombreUsuario">Usuario: </label>
                            <input type="text" name="nombreUsuario" pattern=".{6,30}" required>
                           </div> 
                        
                        
                        <div class="row mb-2">
                    <label form="contrasenaUsuario">Contrasena: </label>
                    <input type="password" name="contrasena" pattern=".{8,15}" required>
                        
                </div>
                <div class="row mb-2">
                    <input type="submit" value="ingresar" class="btn btn-primary rounded-pill">
                </div>
                    </form>
                        
                </div>
                <div class="col">
                        
                </div>
                
            </div>
            <p class="tex-center">¡Resgistrece si aun no tiene una cuenta de Usuario! <a href="registroU.jsp">Registrar</a></p>
        </div>
    </body>
</html>
