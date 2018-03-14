<html>
<head>
</head>
<body>
<%
dim conn
set conn = Server.CreateObject("ADODB.connection")
set rec = Server.CreateObject("ADOB.Recordset")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;"_
& "Data Source =" & Server.MapPath("college.mdb")
rec.Open "student", conn
if rec.EOF Then
	Response.Write("No Record Found")
%>
	<table border=2>
	<caption> Student's Information </caption>
	<tr>
		<th> Roll No. </th>
		<th> Student Name </th>
		<th> Father Name </th>
		<th> Address </th>
		<th> Class </th>
		<th> Phone Number </th>
	</tr>
	<%	while NOT Rec.EOF %>
	<tr>
		<td><% Response.Write(Rec("RNo"))%></td>
		<td><% Response.Write(Rec("Name"))%></td>
		<td><% Response.Write(Rec("FName"))%></td>
		<td><% Response.Write(Rec("Address"))%></td>
		<td><% Response.Write(Rec("Class"))%></td>
		<td><% Response.Write(Rec("CellNo"))%></td>
	</tr>
	<%
	Rec.MoveNext
	Wend
	%>
	</table>
	<% End if %>
</body>
</html>