<%-- 
    Document   : navigation
    Created on : 15.06.2019, 13:10:12
    Author     : ANTMOS
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@tag import="ru.avalon.blog.services.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<fmt:setBundle basename="resources.labels"/>

<nav>
    <ul>
        <li>
            <a href="${pageContext.servletContext.contextPath}">
                <fmt:message key="label.blog"/>
            </a>
        </li>
        <li>
            <a href="${pageContext.servletContext.contextPath}/author.jsp">
                <fmt:message key="label.author"/>
            </a>
        </li>
        <li>
            <a href="${pageContext.servletContext.contextPath}/contacts.jsp">
                <fmt:message key="label.contacts"/>
            </a>
        </li>
        <li>
            <a href="${pageContext.servletContext.contextPath}/reviews.jsp">
                <fmt:message key="label.reviews"/>
            </a>
        </li>
        <li class="pull-right">
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    <a href="${pageContext.servletContext.contextPath}/login" >
                        <fmt:message key="label.sign-in.title"/>
                    </a>
                </c:when>  
                <c:otherwise>
                    <a href="${pageContext.servletContext.contextPath}/logout" >
                        <fmt:message key="label.sign-out"/>
                    </a> 
                </c:otherwise> 
            </c:choose>
        </li>
    </ul>
</nav>
            