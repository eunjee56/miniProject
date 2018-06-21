<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<tiles:insertAttribute name="layout.header" />
	<title><tiles:getAsString name="layout.title" /></title>
</head>

<body class="w3-light-grey">
    <tiles:insertAttribute name="layout.top" />
    <tiles:insertAttribute name="layout.body" />
  <!-- END BLOG ENTRIES -->
    <tiles:insertAttribute name="layout.right" />
    <tiles:insertAttribute name="layout.footer" />

<script>
// Toggle between hiding and showing blog replies/comments
//document.getElementById("myBtn").click();
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

function likeFunction(x) {
    x.style.fontWeight = "bold";
    x.innerHTML = "✓ Liked";
}
</script>
</body>
</html>