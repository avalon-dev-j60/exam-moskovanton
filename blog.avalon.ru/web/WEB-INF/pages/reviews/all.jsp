<%-- 
    Document   : all
    Created on : 09.07.2019, 14:52:11
    Author     : ANTMOS
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common/" %>

<fmt:setBundle basename="resources.labels"/>

<common:layout title="Reviews">
    <c:set var="context" value="${pageContext.servletContext.contextPath}"/>
    <h1 class="blue">
    <fmt:message key="label.reviews"/>
    </h1>
    <c:if test="${not empty sessionScope.user}">
        <div>
        <a href="${context}/reviews/create" class="button blue">
            <fmt:message key="label.rewiews.create"/>
        </a>
        </div>
    </c:if>
    <c:choose>
        <c:when test="${empty items}">
            <center>
                <h3>
                   <fmt:message key="label.reviews.empty"/> 
                </h3>
            </center>
            
        </c:when>
        <c:otherwise>
            <c:forEach items="${items}" var="item">
                <div class="row one half padded">
                    <h3 class="bold, green">${item.title}</h3>
                    <h5 class="box">${item.content}</h5>
                    <h10 class="grey pull-right">${item.createdAt}</h10>
                </div>
            </c:forEach>
            
        </c:otherwise>
        
        
    </c:choose>
    
</common:layout>
