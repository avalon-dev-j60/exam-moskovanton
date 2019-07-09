<%-- 
    Document   : create
    Created on : 09.07.2019, 15:22:43
    Author     : ANTMOS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@taglib prefix="common" tagdir="/WEB-INF/tags/common/"%>

<%-- The list of normal or fragment attributes can be specified here: --%>

<fmt:setBundle basename="resources.labels"/>

<common:error/>

<form action="${pageContext.servletContext.contextPath}/reviews/create" method="post">
    
    <div class="row gap-bottom">
        <input type="text" name="title" value="${param.title}" placeholder="<fmt:message key="label.reviews.title"/>">
    </div>

    <div class="row gap-bottom">
        <textarea name="content" placeholder="<fmt:message key="label.content"/>">${param.content}</textarea>
    </div>
    
    <div class="row gap-bottom">
        <button class="pull-right">
            <fmt:message key="label.save"/>
        </button> 
    </div>

</form>
