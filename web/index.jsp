<%@page import="com.fpmislata.prueba.Negocio.TipoEntidadBancaria"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%
     EntidadBancaria entidadBancaria7 = new EntidadBancaria(124, "87543276", "New Haven", "23671263", TipoEntidadBancaria.BANCO);  //Creamos el objeto
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    //EntidadBancaria entidadBancaria = entidadBancariaDAO.read(3);
    List<EntidadBancaria> entidades = entidadBancariaDAO.findAll();
    List<EntidadBancaria> entidades2 = entidadBancariaDAO.findByCodigo("28739876");
    //entidadBancariaDAO.insert(entidadBancaria7);
    //entidadBancariaDAO.delete(124);
    //String nombre = request.getParameter("nombre");
    /* out.println(entidadBancaria.getIdEntidadBancaria());
     out.println(entidadBancaria.getCodigoEntidad());
     out.println(entidadBancaria.getNombre());
     out.println(entidadBancaria.getCif());
     out.println(entidadBancaria.getTipoEntidadBancaria());
     */
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prueba de creaccion de entidades</title>
    </head>
    <body>
        <h1>Say Hello To My Little Friend</h1>
        <h2>Why So Serious?</h2>
        <table>
            <tr>
                <td> <%out.println("<a href='Viewforinsert.jsp'>nuevo</a>");%></td>
               
                 
            </tr>
            
            <tr>
                <td>
                    <%
                        for (EntidadBancaria Datos : entidades) {
                            out.println("<tr>");
                            out.println("<td>");
                            out.println(Datos.getIdEntidadBancaria());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getCodigoEntidad());
                             out.println("</td>");
                             out.println("<td>");
                            out.println(Datos.getNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getCif());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getTipoEntidadBancaria());
                            out.println("</td>");
                            out.println("<td>");
                            out.println("<a href='borrar.jsp?idEntidadBancaria=" + Datos.getIdEntidadBancaria()  + "'>borrar</a>");
                            out.println("</td>");
                             out.println("<td>");
                            out.println("<a href='Viewforupdate.jsp?idEntidadBancaria=" + Datos.getIdEntidadBancaria()  + "'>Actualizar</a>");
                            out.println("</td>");
                            out.println("</tr>");
                            
                        }
                    %>
                </td>
                
            </tr>

            <tr>
                <td>
                    <%
                        for (EntidadBancaria Datos : entidades2) {
                            out.println("<tr>");
                            out.println("<td>");
                            out.println(Datos.getIdEntidadBancaria());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getCodigoEntidad());
                             out.println("</td>");
                             out.println("<td>");
                            out.println(Datos.getNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getCif());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(Datos.getTipoEntidadBancaria());
                            out.println("</td>");
                            out.println("</tr>");
                        }
                    %>
                </td>
            </tr>

        </table>
    </body>
</html>
