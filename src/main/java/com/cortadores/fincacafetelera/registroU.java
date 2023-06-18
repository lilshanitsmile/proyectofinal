/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.cortadores.fincacafetelera;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.MongoException;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCollection;
import com.mongodb.BasicDBObject;
import com.mongodb.client.FindIterable;
import com.mongodb.client.result.InsertOneResult;


/**
 *
 * @author Alexiis
 */
@WebServlet(name = "registroU", urlPatterns = {"/registroU"})
public class registroU extends HttpServlet {

    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter salida = response.getWriter();
        
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("password");
        String confiContrasena = request.getParameter("passwordC");
        String puesto = request.getParameter("puestolaboral");
        
        String url = "mongodb://localhost:27017";
        
        
    

       try(MongoClient cliente = MongoClients.create(url)){
            
            MongoDatabase BasedeDatos = cliente.getDatabase("finca");
             
               MongoCollection<Document> usuarios = BasedeDatos.getCollection("usuario");
                BasicDBObject consulta = new BasicDBObject("usuario",usuario);
                FindIterable<Document> iterable = usuarios.find(consulta);
                
                if(iterable.cursor().hasNext()){
                    //si se ecnontro usuario registrado dentro del formulario
                    
                    String usuarioDB = iterable.first().get(usuario).toString();
                    
                    if(usuario.equals(usuarioDB)){
                    //definitivamente el usuario ya existe
                    salida.print("El usuario ingresado ya existe <br>");
                    salida.print("<a href='registroU.jsp'>Regresar</a>");
                    
                    }
                    
                }    
                    
                else{
                    //El usuario ingresado en el formulario no existe
                    if(contrasena.equals(confiContrasena)){
                        //puedo ingresar al usuario
                        
                         try{
                       InsertOneResult resultado =  usuarios.insertOne(new Document()
                               .append("_id", new ObjectId())
                               .append("nombreUsuario", usuario)
                               .append("contrasena", contrasena)
                               .append("puestoLaboral", puesto)
                               
                               
                       );
                       salida.print("El usuario ingresado fue registrado exitosamente <br>");
                    salida.print("<a href='index.jsp'>Iniciar Sesion</a>");
                    
                    
                    }
                    
                    catch(MongoException error){
                        System.err.println("no se a podido ingresar debido al error: "+error);
                    }
                    }
                    
                    else{
                        //las contraseñas no coiciden.
                            salida.print("Las contrasenas no coinciden <br>");
                    salida.print("<a href='registroU.jsp'>Regresar al acceso</a>");
                    }
                    }
                        
                    }
                     
                   
                
            }
    }
    



