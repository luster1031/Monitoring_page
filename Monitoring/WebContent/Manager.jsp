<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%@ page import = "process_test.test" %>
	<%
	test ttt = new test();
	String[][] list = ttt.partlist();
	%>
	
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	������
	<input type = "button" id = "button1" onclick = "all_table();" value="��� �������� ��">
	<table border = "1" width = "250">
		<tr>
			<td>��ǰ ��</td>
			<td>������ ��õ</td>
			<td>���� ��ü �Ͻ�</td>
			<td>�ΰ� ���� ���� �Ⱓ</td>
		</tr>
		<%
			for(int i = 1; i<list.length; i++){
				for(int j = 0; j<list[i].length -2; j++){
					if(j == 2){%>
					<td><%= list[i][j+1]%></td>
					<%}else if(j == 3){%>
					<td><%= list[i][j-1]%></td>
					<%}else{%>
					<td><%= list[i][j]%></td>
					<%}%>
				<%}%>
			<tr>
			<%}%>
		</tr>
	</table>

</body>
</html>