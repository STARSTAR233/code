<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>购物页面</title>
</head>
<body>
<form action="" method="post" name="form">
    <div align="center">水果：<br />
    <div align="center">
    <input type="checkbox" name="sec" value="apple"  />apple<br />

    <input type="checkbox" name="sec" value="Banana" />Banana<br />
    <input type="checkbox" name="sec" value="pear" />pear<br />
    <input type="checkbox" name="sec" value="peach" />peach<br />
    <input type="submit" name="gouwu" value="购物">
        </div>
    <br />
    <br />
    <a href="count.jsp">欢迎查看购物车！</a>
        <%
	request.setCharacterEncoding("UTF-8");
	String sec[] = request.getParameterValues("sec");
	if (sec!=null && sec.length!= 0) {
	for (int i=0;i<sec.length;i++) {
		session.setAttribute(sec[i],sec[i]);
	}
	}
			%>
</body>
</html>