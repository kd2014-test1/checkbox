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
<p>あなたの好きなプログラミング言語は、
<%
    request.setCharacterEncoding("UTF-8");
    String[] langs = request.getParameterValues("lang");
    if(langs == null) {
        out.print("ないのね");
    } else {
        for(int i = 0; i < langs.length; i++) {
            out.print(langs[i]);
            if(i < (langs.length - 1)) {
                out.print("と");
            }
        }
    }
%>
ですね。</p>
</body>
</html>
