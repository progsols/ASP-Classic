<html>
<head>
<title> To print a series contains 2's power plus 1 in every number.</title>
</head>
<body>
<%
dim a
a=2
for i=1 to 7 step +1
	response.write (a^i+1&",")
	next
%>
</body>
</html>