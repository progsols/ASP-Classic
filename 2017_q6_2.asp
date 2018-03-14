<%
cc= Request("code")
dim conn
set conn = Server.CreateObject("ADODB.connection")
set rec = Server.CreateObject("ADOB.Recordset")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;"_
& "Data Source =" & Server.MapPath("student.mdb")
rec.Open "Select * from Address Where code = '"&cc&"'", conn
if rec.EOF Then
	Response.Write("No Record Found")
	else
		Response.Write("<u>Record Found</u>"&"<br>")
		Response.Write("Data of Record is:"&"<br>")
		Response.Write("Code:"&Rec(code)"<br>")
		Response.Write("Name:"&Rec(name)"<br>")
		Response.Write("Age:"&Rec(age)"<br>")
		Response.Write("City:"&Rec(city)"<br>")
	end if
%>
