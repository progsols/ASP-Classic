<%
dim conn, rec, rno, name, adrs
Set conn = Server.CreateObject("ADODB.Connection")
Set rec = Server.CreateObject("ADODB.Recordset")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;"_
&"Data Source="&Server.MapPath("c:\college.mdb")
rno=Request.Form("rollno")
name=Request.Form("name")
adrs=Request.Form("address")
conn.Execute("insert into tbl_std values("&rno&","&name&","&adrs")")
Response.Write("Record Saved")
conn.close
%>