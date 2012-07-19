<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BundlingInDotNet4.Webforms._default" %>
<%@ Import Namespace="System.Web.Optimization" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <title>Bundling in .NET4 - Webforms</title>
    <%= Styles.Render("~/css") %>
    <%= Scripts.Render("~/js") %>
    <script>
        window.onload = function () {
            library.speakToMe("Kevin", "placeholder");
        };
    </script>
</head>
<body>
    <div id="pageholder">
        <h1>Bundling in .NET4 - Webforms</h1>
        <p>JavaScript test: <span id="placeholder">No JS running.</span></p>

        <p>Compiled CSS is rendered as: <a href="<%= Styles.Url("~/css") %>">~/css</a></p>
        <textarea><%= Styles.Render("~/css") %></textarea>

        <p>Compiled CSS is created here: <a href="<%= Scripts.Url("~/js") %>">~/js</a></p>
        <textarea><%= Scripts.Render("~/js") %></textarea>

        <p>These linked files are always minified and compressed. The actual references within the
            HTML are dependent on whether debugging is enabled in web.config:</p>
        <p>enabled = no change<br />disabled = bundle + minify</p>
    </div>
</body>
</html>
