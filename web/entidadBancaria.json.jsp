<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.fpmislata.prueba.Negocio.TipoEntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Negocio.EntidadBancaria"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAOImplJDBC"%>
<%@page import="com.fpmislata.prueba.Datos.EntidadBancariaDAO"%>
<%
    EntidadBancaria entidadBancaria8 = new EntidadBancaria(34, "87542356", "New Vegas", "66623589", TipoEntidadBancaria.BANCO);  //Creamos el objeto
    ObjectMapper objectMapper = new ObjectMapper();
    String json = objectMapper.writeValueAsString(entidadBancaria8);
    response.setContentType("application/json; charset=UTF-8");
    out.print(json);
    EntidadBancariaDAO entidadBancariaDAO = new EntidadBancariaDAOImplJDBC();
   //int idEntidadBancaria = Integer.parseInt(request.getParameter("idEntidadBancaria"));
    EntidadBancaria entidadBancaria = entidadBancariaDAO.read(34); 
    
%>