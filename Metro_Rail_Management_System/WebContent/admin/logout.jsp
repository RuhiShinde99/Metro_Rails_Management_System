<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.removeAttribute("email");
    response.sendRedirect("index.jsp");
%>
