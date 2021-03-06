<%-- 
    Document   : detail
    Created on : Dec 18, 2018, 2:37:58 PM
    Author     : MedEM
--%>
<%@page import="java.util.Iterator"%>
<%@page import="bean.Client"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
            <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
            <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        </head>
        <body>

            <div class="container">
                <!--Header-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">Framework Demo</a>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="Main">Liste des tables</a>
                            </li>                        
                        </ul>
                    </div>
                </nav>
                <div class="row justify-content-center my-2">
                    <div class="col-8">
                        <!--Content-->

                        <div class="card ">
                            <div class="card-header">Detail</div>
                            <div class="card-body">
                                <div class="container" >
                                    <% Map<String, String> columns = (Map<String, String>) session.getAttribute("columns"); %>
                                    <% for (Map.Entry<String, String> entry : columns.entrySet()) {
                                        String key = entry.getKey();
                                        String val = entry.getValue();%>
                                    <div class="row">
                                        <div class="col " style="text-align: right"><%= key %> :</div>
                                        <div class="col-1"></div>
                                        <div class="col">: <%= val %> </div>
                                    </div>
                                    <hr>
                                    <% } %>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </body>
    </html>
</f:view>
