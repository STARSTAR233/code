<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>查看购物车商品页面</title>
</head>
<body>
<div align="center">
<h3>这里是结账柜台，请确认以下信息。</h3>
<br />
<%

    String id=(String) session.getAttribute("id");
    out.println("您的账户：" + id);
    Enumeration enumsec= session.getAttributeNames();
    out.println("<br>购物车中的商品清单：<br>");
    while (enumsec.hasMoreElements()) {
        String ser=(String)enumsec.nextElement();
        String scr=(String)session.getAttribute(ser);
        if (!(scr.equals(id))) {
            out.println(" " + scr + "<br>");
            session.removeAttribute(ser);
        }
    }
%>
    </div>

<div align="center"><a href="food.jsp"> 水果店</a></div>
</body>
</html>
