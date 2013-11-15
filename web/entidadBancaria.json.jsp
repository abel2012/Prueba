<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.fpmislata.prueba.Negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%
    
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
   //int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(104); 
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadBancaria);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
    
%>