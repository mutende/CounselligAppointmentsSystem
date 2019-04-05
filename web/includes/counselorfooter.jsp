<%-- 
    Document   : counselorfooter.jsp
    Created on : Feb 18, 2019, 4:55:58 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<footer class="text-center footer-copyright py-3 navbar-dark white-text" style="background-color: #808080">
    <% GregorianCalendar currentDate = new GregorianCalendar();
    int year = currentDate.get(Calendar.YEAR);
    %>
        &copy;Copyright <%= year %> <i>CodeBloode Sons Systems. </i>&checkmark;
</footer>
