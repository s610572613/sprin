<%@page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
 <% String path = request.getContextPath();%>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/layout2_setup.css" />
<link rel="stylesheet" type="text/css" href="<%=path%>/css/layout2_text.css" />
<title></title>
</head>

<!--[if IE]><style type="text/css"> body {word-wrap: break-word;}</style><![endif]-->

<body>
<div class="page-container">


<div class="header">
 
<div class="header-middle"> 
 

<div class="sitename">
<h1><a href="index.html" title="Go to Start page">19lou.com<span style="font-weight:normal;font-size:50%;">.com.cn</span></a></h1>
<h2>杭州19楼传媒有限公司</h2>
</div>

</div>
 
<div class="header-bottom">
 
<div class="nav2">
 
<ul>
<li><a href="${pageContext.request.contextPath}/index.do">系统首页</a></li>
</ul>
 
<ul>
<li><a href="${pageContext.request.contextPath}/index.do">员工管理<!--[if IE 7]><!--></a><!--<![endif]-->
<!--[if lte IE 6]><table><tr><td><![endif]-->
<ul>
<li><a href="${pageContext.request.contextPath}/index.do">员工管理</a></li>
<li><a href="${pageContext.request.contextPath}/toAdd.do">添加员工</a></li>
</ul>
<!--[if lte IE 6]></td></tr></table></a><![endif]-->
</li>
</ul> 

</div>
</div>


<div class="header-breadcrumbs">
<ul>
<li><a href="#">首页</a></li>
<li><a href="#">员工管理</a></li>
<li>添加员工</li>
</ul>

 
</div>
</div>


<div class="main">
 
<div class="main-navigation">

<div class="round-border-topright"></div>
<h1 class="first">添加员工<br /></h1>
<p>填写员工信息保存到数据库<br /></p>
 


 
</div>
 
<div class="main-content">
 
<h1 class="pagetitle">添加员工</h1>

 

 
<div class="column1-unit">
<div class="contactform">
            <form method="post" action="${pageContext.request.contextPath}/addEmp.do">
              <fieldset><legend>&nbsp;基本信息&nbsp;</legend>
                <p><label for="name" class="left">姓名:</label>
                   <input type="text" name="name" id="name" class="field" value="" tabindex="1" /></p>
                
                <p><label for="sal" class="left">薪水:</label>
                   <input type="text" name="sal" id="sal" class="field" value="" tabindex="1" /></p>
                <p><label for="interest" class="left">兴趣:</label>
                   <input type="text" name="interest" id="interest" class="field" value="" tabindex="1" /></p>
			
                <p><input type="submit" name="submit" id="submit" class="button" value="添加" tabindex="6" /></p>
              </fieldset>
              
            </form>
          </div>
</div> 
 
</div>
</div>
 

<div class="footer">
<p>Copyright &copy; 2012 19lou.com.cn | All Rights Reserved</p>
<p class="credits"></p>
</div> 
</div> 
 
</body>
</html>



