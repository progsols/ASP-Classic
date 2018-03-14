<%
dim conn, rs, fuid, fpass, sqlst
Set conn = Server.CreateObject("ADODB.Connection")
Set rs = Server.CreateObject("ADODB.Recordset")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;"_
&"Data Source="&Server.MapPath("c:\Employee.mdb")
fuid=Request.Form("id")
fpass=Request.Form("pass")
rs.open"select*from tbl_login where uid like "&fuid&"",conn
if rs.eof then
Response.Write("Username not matched")
elseif fpass<>rs("upass") then
Response.Write("Invalid Password")
else
Response.Write("Welcome "&rs("fname")&"You are login")
end if
rs.close
conn.close
%>