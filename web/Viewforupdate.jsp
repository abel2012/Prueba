<%-- 
    Document   : nuevo
    Created on : 07-nov-2013, 19:35:09
    Author     : familiape
--%>

<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(idEntidadBancaria);
    
    
    //entidadBancariaDAO.insert(entidadBancaria);




%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="update.jsp" method="post">
            idEntidadBancaria <input type="text" name="idEntidadBancaria" value="<%=entidadBancaria.getIdEntidadBancaria()%>" > <br>
            codigoEntidad: <input type="text" name="codigoEntidad" value="<%=entidadBancaria.getCodigoEntidad()%>"> <br>
            Nombre: <input type="text" name="Nombre" value="<%=entidadBancaria.getNombre()%>" > <br>
            Cif: <input type="text" name="Cif" value="<%=entidadBancaria.getCif()%>" > <br>
            tipoEntidadBancaria: 
            <input type="radio" name="tipo"    value="banco"  />BANCO
            <input type="radio" name="tipo"   value="cajadeahorro" />CAJADEAHORRO
            <input type="radio" name="tipo"  value="cooperativadecredito"  />COOPERATIVASDECREDITO
            <input type="radio" name="tipo"  value="establecimientosfinancierosdecredito" />ESTABLECIMIENTOSFINANCIEROSDECREDITO <br>
            <input type="submit" value="Enviar Formulario">
        </form>


    </body>
</html>

