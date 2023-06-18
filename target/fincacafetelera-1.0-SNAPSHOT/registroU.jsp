<%-- 
    Document   : registroC
    Created on : 16 jun. 2023, 20:05:36
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
                
                <h3>Registro De Usuario</h3>
                
            </div>
            
            <div class="row">
                <div class="col">
                        
                </div>
                <div class="col-6">
                    <form action="registroU" method="post">
                      
                        <div class="row mb-2">
                            
                            <div class="form-floating mb-3">
  <input type="text" name = "usuario" class="form-control" id="floatingInput" pattern=".{6,30}" required>
  <label for="floatingInput">Nombre De Usuario</label>
</div>
                            
                            
                           
                           </div> 
                        
                        
                        <div class="row mb-2">
                            
                            <div class="form-floating">
  <input type="password" name = "password" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">Password</label>
</div>
                            
                   
                        
                </div>
                         <div class="row mb-2">
                             
                                                <div class="form-floating">
  <input type="passwordC" name="passwordC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">Confirmacion Password</label>
</div>
      
                             
                
                </div>
                        <div class="row mb-2">
                        
                    <select class="form-select" name = "puestolaboral" aria-label="puesto laboral">
  <option selected>Puesto Laboral</option>
  <option value="capataz">Capataz</option>
  <option value="portero">Portero</option>
  <option value="cortador">Cortador</option>
</select>
                        
                 </div>           
                    
                    
                        
                
                        <div class="mb-2">
                            <input type="checkbox" name="terminos" required>
                            <label form="terminos">Aceptos los terminos y servicios</label>
                        </div>
                        
  
                        
                <div class="row mb-2">
                    <input type="submit" value="Registrar" class="btn btn-primary rounded-pill">
                </div>
                    </form>
                        
                </div>
                <div class="col">
                        
                </div>
                
            </div>
            
        </div>
    </body>
</html>
