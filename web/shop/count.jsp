<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%@ page import="java.util.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>�鿴���ﳵ��Ʒҳ��</title>
</head>
<body>
<div align="center">
<h3>�����ǽ��˹�̨����ȷ��������Ϣ��</h3>
<br />
<%

    String id=(String) session.getAttribute("id");
    out.println("�����˻���" + id);
    Enumeration enumsec= session.getAttributeNames();
    out.println("<br>���ﳵ�е���Ʒ�嵥��<br>");
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

<div align="center"><a href="food.jsp"> ˮ����</a></div>
</body>
</html>
