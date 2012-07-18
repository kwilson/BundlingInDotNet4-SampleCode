using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BundlingInDotNet4.Webforms
{
    using System.Web.Optimization;

    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            var cssBundle = new StyleBundle("~/css");
            cssBundle.IncludeDirectory("~/content/css", "*.css");

            // Create the JS bundle
            var jsBundle = new ScriptBundle("~/js");
            jsBundle.IncludeDirectory("~/content/js", "*.js");

            BundleTable.Bundles.Add(cssBundle);
            BundleTable.Bundles.Add(jsBundle);
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}