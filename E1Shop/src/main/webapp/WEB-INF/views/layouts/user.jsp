<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <title><decorator:title default="Master-Layouts"></decorator:title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E1Shop</title>
    <!-- google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,900&display=swap" rel="stylesheet">
    <!-- boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- app css -->
    <link rel="stylesheet" href="<c:url value="/assets/user/css/grid.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="/assets/user/css/app.css"></c:url>">
    
</head>

<body>
	<%@include file = "/WEB-INF/views/layouts/user/header.jsp" %>
    

	<decorator:body/>
	
	<%@include file ="/WEB-INF/views/layouts/user/footer.jsp" %>
    <!-- app js -->
    <script src="<c:url value="/assets/user/js/app.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/index.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/product.js"></c:url>"></script>
    <script src="<c:url value="/assets/user/js/product-detail.js"></c:url>"></script>
    
    <decorator:getProperty property="page.script"></decorator:getProperty>
</body>

</html>

