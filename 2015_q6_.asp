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
rec.Open "Select * from Emp Where salary >= '10000'", conn
if rec.EOF Then
	Response.Write("No Record Found")
%>
	<select>
	<%	while NOT Rec.EOF %>
		<option><% Response.Write(Rec("Name"))%></option>	
	<%
	Rec.MoveNext
	Wend
	%>
	</select>
	<% End if %>
</body>
</html>