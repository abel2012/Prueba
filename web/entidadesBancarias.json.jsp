<%@page import="java.util.List"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.fpmislata.prueba.Negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%

    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
    String nombre  = request.getParameter("nombre");
    List<EntidadBancaria> entidadesBancarias = entidadBancariaDAO.findByNombre(nombre);

    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadesBancarias);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);

%>