<%-- 
    Document   : registroC
    Created on : 18 jun. 2023, 10:05:08
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
                
                <h3>Registro De Cortadores</h3>
                
            </div>
            
            <div class="row">
                <div class="col">
                        
                </div>
                <div class="col-6">
                    <form action="registroU" method="post">
                      
                        <div class="row mb-2">
                            
                            <div class="form-floating mb-3">
 <input type="date" id="hora" name="fecha" class="form-control" id="floatingInput" required>
  <label for="floatingInput">Fecha de Ingreso</label>
</div>
                            
                            
                           
                           </div> 
                        
                        
                        <div class="row mb-2">
                            
                            <div class="form-floating">
  <input type="text" name = "nombreC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">Nombre</label>
</div>
                            
                   
                        
                </div>
                         <div class="row mb-2">
                             
                                                <div class="form-floating">
                      <div class="form-floating">
  <input type="text" name = "apellidoC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">Apellido</label>
</div>
        
      
                             
                
                </div>
                        <div class="row mb-2">
                        
                                       <div class="form-floating">
  <input type="text" name = "DuiC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">N° De DUI</label>
</div>
                            
                            
                            <div class="row mb-2">
                        
                                       <div class="form-floating">
  <input type="text" name = "DirreccionC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">Direccion</label>
</div>
                  
                    
                    <div class="row mb-2">
                        
                                       <div class="form-floating">
  <input type="text" name = "IsssC" class="form-control" id="floatingPassword" required>
  <label for="floatingPassword">N° De ISSS</label>
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

