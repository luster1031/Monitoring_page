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
	관리자
	<input type = "button" id = "button1" onclick = "all_table();" value="모든 데이터의 값">
	<table border = "1" width = "250">
		<tr>
			<td>부품 명</td>
			<td>제조사 추천</td>
			<td>직전 교체 일시</td>
			<td>인공 지능 예측 기간</td>
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