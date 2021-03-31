<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  if(session.getAttribute("email")==null){
    String redirectURL = "index.jsp";
    response.sendRedirect(redirectURL);
  }  
%>