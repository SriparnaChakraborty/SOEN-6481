<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>
	<jsp:include page="_menu.jsp"></jsp:include>
	<h3>Enter your card details</h3>
	<h5>Enter your card details</h5>
	<p style="color: red;">${errorString}</p>


	<form method="POST" action="${pageContext.request.contextPath}/payment">
		<table border="0">
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="Card Number" value="${cardnumber}" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit" /> <a
					href="${pageContext.request.contextPath}/">Cancel</a></td>
			</tr>
		</table>
	</form>



	<jsp:include page="_footer.jsp"></jsp:include>
</body>
</html>