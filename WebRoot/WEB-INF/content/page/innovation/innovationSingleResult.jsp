<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<base target="main" />
<link rel="stylesheet" type="text/css" href="../../css/frontmiddle.css" />
</head>

<body>
	<table  cellspacing="0" cellpadding="0" class="tablewk" align="center">
		<tr>
			<td >
				<br />
				<table cellpadding="0" cellspacing="0" width="95%" style="height: 30px" align="center">
					<tr>
						<td class=" titlebold">创新提案单条录入结果</td>
					</tr>
				</table>
				<table cellpadding="0" cellspacing="0" width="95%"  align="center">
					<tr>
						<td class="line"></td>
					</tr>
				</table>
				<br />
				<table cellpadding="0" cellspacing="0" width="95%"  align="center" class="tableserch">
					<tr>
						<td align="center" >
							信息添加成功！


						</td>
					</tr>
					<tr>
						<td align="center" >
							<input type="button" name="goContinueButton" value="继续录入" onclick="location.href='innovationSingle.html'" class="btn_5">
							<input type="button" name="goSearchButton" value="转至查询" onclick="location.href='innovationSearch.html'" class="btn_5">
						</td>
					</tr>
				</table>
				<br />
				<br />
			</td>
		</tr>
	</table>
</body>
</html>