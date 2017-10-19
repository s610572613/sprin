<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<%
	String path = request.getContextPath();
%>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/layout2_setup.css" />
<link rel="stylesheet" type="text/css"
	href="<%=path%>/css/layout2_text.css" />
<title></title>
</head>

<!--[if IE]><style type="text/css"> body {word-wrap: break-word;}</style><![endif]-->

<body>
	<div class="page-container">


		<div class="header">

			<div class="header-middle">


				<div class="sitename">
					<h1>
						<a href="index.html" title="Go to Start page">19lou<span
							style="font-weight:normal;font-size:50%;">.com.cn</span>
						</a>
					</h1>
					<h2>杭州19楼传媒有限公司</h2>
				</div>

			</div>

			<div class="header-bottom">

				<div class="nav2">

					<ul>
						<li><a href="${pageContext.request.contextPath}/index.do">系统首页</a>
						</li>
					</ul>

					<ul>
						<li><a href="#">员工管理<!--[if IE 7]><!-->
						</a>
						<!--<![endif]--> <!--[if lte IE 6]><table><tr><td><![endif]-->
							<ul>
								<li><a href="${pageContext.request.contextPath}/index.do">员工管理</a>
								</li>
								<li><a href="${pageContext.request.contextPath}/toAdd.do">添加员工</a>
								</li>
							</ul> <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
					</ul>

				</div>
			</div>


			<div class="header-breadcrumbs">
				<ul>
					<li><a href="#">首页</a>
					</li>
					<li><a href="#">员工管理</a>
					</li>
					<li>员工列表</li>
				</ul>


			</div>
		</div>


		<div class="main">

			<div class="main-navigation">

				<div class="round-border-topright"></div>
				<h1 class="first">
					列表说明<br />
				</h1>
				<p>表格内显示所有员工信息</p>




			</div>

			<div class="main-content">

				<h1 class="pagetitle">员工列表</h1>




				<div class="column1-unit">
					<table>
						<tr>
							<th class="top" scope="col">员工编号<br />
							</th>
							<th class="top" scope="col">姓名</th>
							<th class="top" scope="col">工资<br />
							</th>
							<th class="top" scope="col">入职时间</th>
							<th class="top" scope="col">兴趣</th>
							<th class="top" scope="col">操作</th>
						</tr>
						<c:forEach items="${emps }" var="emp">
							<tr>
								<td scope="row">${emp.id }</td>
								<td>${emp.name }</td>
								<td>${emp.sal }
								</td>
								<td>${emp.hireDate }</td>
								<td>${emp.interest }</td>
								<td><a href="${pageContext.request.contextPath}/toUpdate.do?sid=${emp.id }">修改</a><a href="${pageContext.request.contextPath}/delete.do?sid=${emp.id }">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					<p class="caption">
						<strong>表 1</strong> 员工列表
					</p>
				</div>

			</div>
		</div>


		<div class="footer">
			<p>Copyright &copy; 2010 19楼.com.cn | All Rights Reserved</p>
			<p class="credits"></p>
		</div>
	</div>
	
	
</body>
</html>



