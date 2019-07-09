<%-- 
    Document   : layout
    Created on : 15.06.2019, 12:35:27
    Author     : ANTMOS
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common/"%>

<%@attribute name="title" required="true"%>

<!DOCTYPE html>
<html>
    <head>
        <title>
            ${title}
        </title>
            <link href="${pageContext.servletContext.contextPath}/css/groundwork-setup.css" type="text/css" rel="stylesheet">
            <link href="${pageContext.servletContext.contextPath}/css/layout.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <article class="two thirds centered padded">
            <header>
                <common:navigation/>
            </header>
            <section class="justify gap-bottom gap-top">
                <jsp:doBody/>
            </section>
            
            <footer></footer>
            
        </article>
        
    </body>
</html>  