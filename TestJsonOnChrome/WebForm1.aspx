<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestJsonOnChrome.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <script type="text/javascript">
        var xmlHttp = new XMLHttpRequest();
        //var url = "http://localhost/TestJsonOnChrome/JSonService.svc/Echo";
        var url = "http://127.0.0.1/TestJsonOnChrome/JSonService.svc/Echo";
        //var url = "http://localhost:8080/Echo";
        var body = '{}'; xmlHttp.open("POST", url, true);
        xmlHttp.setRequestHeader("Content-Type", "application/json");
        xmlHttp.onreadystatechange = function () {
          if (xmlHttp.readyState == 4) {
            alert("Response of Echo: " + xmlHttp.responseText);
          }
        };
        xmlHttp.send(body);
      </script>
    </div>
    </form>
</body>
</html>
