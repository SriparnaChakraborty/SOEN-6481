<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>

	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>

	<h3>Home Page</h3>

	<li>This is demo of USER STORY 5 - Buying a monthly or yearly Pass
	</li>
	<li>No other link works other than following pass options</li>
	<li>This application only shows the correct work flow , exceptions and validations has not been done</li>
	<br>
	<br>
	<b>Choose your Option</b>
	<ul>
		<li><a href="${pageContext.request.contextPath}/payment"> Yearly
				Pass - 750 $</a></li>
		
		<li><a href="${pageContext.request.contextPath}/payment"> Monthly
				Pass - 72 $</a></li>
	</ul>

	<jsp:include page="_footer.jsp"></jsp:include>

</body>
</html>