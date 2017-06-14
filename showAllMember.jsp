<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="mybean.data.ShowByPage"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="show" type="mybean.data.ShowByPage" scope="session" />
<html>
<head>
<%@ include file="head.txt"%>
<style type="text/css">
body{
 background:url("image/dd.jpg")
}</style>
</head>

<body>
	<div align="center">
		<BR>当前显示的内容是：
		<table border="2px">
			<tr>
				<th>会员名</th>
				<th>电话</th>
				<th>email</th>
				<th>简历和交友标准</th>
				<th>用户照片</th>
			</tr>
			<jsp:getProperty name="show" property="presentPageResult" />
		</table>
		<BR>每页最多显示<jsp:getProperty name="show" property="pageSize" />条信息
		<BR>当前显示第<Font color="blue"> <jsp:getProperty name="show"
				property="showPage" />
		</Font>页,共有 <Font color=blue><jsp:getProperty name="show"
				property="pageAllCount" /> </Font>页。 <BR>单击“上一页”或“下一页”按纽查看信息
		<table>
			<tr>
				<td><form action="helpShowMember" method="post">
						<Input type=hidden name="showPage"
							value="<%=show.getShowPage()-1 %>"> <Input type="submit"
							name="g" value="上一页">
					</form></td>
				<td><form action="helpShowMember" method=post>
						<Input type=hidden name="showPage"
							value="<%=show.getShowPage()+1 %>"> <Input type="submit"
							name="g" value="下一页">
					</form></td>
				<td>
					<form action="helpShowMember" method="post">
						输入页码：<Input type=text name="showPage" size="5px"> <Input
							type="submit" name="g" value="提交">
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
