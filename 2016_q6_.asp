<html>
<head>
</head>
<body>
<%
dim conn
set conn = Server.CreateObject("ADODB.connection")
set rec = Server.CreateObject("ADOB.Recordset")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;"_
& "Data Source =" & Server.MapPath("Employee.mdb")
rec.Open "Select * from Emp Where salary >= '20000'", conn
if rec.EOF Then
	Response.Write("No Record Found")
%>
	<table border=2>
	<caption> Employee's Information </caption>
	<tr>
		<th> Employee Number </th>
		<th> Employee Name </th>
		<th> Employee Salary </th>
	</tr>
	<%	while NOT Rec.EOF %>
	<tr>
		<td><% Response.Write(Rec("EmployeeNo"))%></td>
		<td><% Response.Write(Rec("Name"))%></td>
		<td><% Response.Write(Rec("Salary"))%></td>
	</tr>
	<%
	Rec.MoveNext
	Wend
	%>
	</table>
	<% End if %>
</body>
</html>