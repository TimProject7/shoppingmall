<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${check==1}">
	<c:remove var="id" scope="session"/>
</c:if>

<meta http-equiv="Refresh" content="0;url=/shoppingmall/index.do">