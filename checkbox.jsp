<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPTE html>
<html>
<head>
<meta charset="UTF-8" />
<title>チェックボックス</title>
</head>
<body>
<h4>○○組　□□□番　神戸　電子</h4>
<p>チェックボックス受信結果</p>
<p>あなたの好きな果物は、
<%
    request.setCharacterEncoding("UTF-8");
    String[] fruits = request.getParameterValues("fruit");
    if(fruits == null) {
        out.print("ないの");
    } else {
        for(int i = 0; i < fruits.length; i++) {
            out.print(fruits[i]);
            if(i < (fruits.length - 1)) {
                out.print("と");
            }
        }
    }
%>
ですね。</p>
</body>
</html>
