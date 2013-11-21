<%@page import="java.util.List"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.fpmislata.prueba.Negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%

    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    entidadBancariaDAO.delete(idEntidadBancaria);
    
     ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(null);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);

    

%>