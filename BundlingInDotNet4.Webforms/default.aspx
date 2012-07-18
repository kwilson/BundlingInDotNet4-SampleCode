<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BundlingInDotNet4.Webforms._default" %>
<%@ Import Namespace="System.Web.Optimization" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <title>Bundling in .NET4 - Webforms</title>
    <link href="<%= BundleTable.Bundles.ResolveBundleUrl("~/css") %>" rel="stylesheet"/>
    <script src="<%= BundleTable.Bundles.ResolveBundleUrl("~/js") %>"></script>
    <script>
        window.onload = function () {
            library.speakToMe("Kevin");
        };
    </script>
</head>
<body>
    <div id="pageholder">
        <h1>Bundling in .NET4 - Webforms</h1>
        <p>Compiled CSS is created here: <a href="<%= BundleTable.Bundles.ResolveBundleUrl("~/css") %>">~/css</a></p>
        <p>Compiled CSS is created here: <a href="<%= BundleTable.Bundles.ResolveBundleUrl("~/js") %>">~/js</a></p>
    </div>
</body>
</html>
