<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(System.Web.Routing.RouteTable.Routes);

    }

    void RegisterRoutes(System.Web.Routing.RouteCollection routes)
    {
        routes.MapPageRoute("nws-route", "news/{newsId}", "~/news.aspx", false, new System.Web.Routing.RouteValueDictionary { { "newsId", string.Empty } });

        routes.MapPageRoute("proj-route", "projects/{baseId}/{streamId}", "~/projects.aspx", false, new System.Web.Routing.RouteValueDictionary { { "baseId", string.Empty }, { "streamId", string.Empty } });

        routes.MapPageRoute("srv-route", "services", "~/services.aspx");
        routes.MapPageRoute("civil-route", "civil-engineering-services", "~/civil-engineering.aspx");
        routes.MapPageRoute("mech-route", "mechanical-engineering-services", "~/mechanical-engineering.aspx");
        routes.MapPageRoute("arch-route", "architect-services", "~/architect.aspx");
        routes.MapPageRoute("light-route", "lightning-protection-system-design", "~/lpsd.aspx");
        routes.MapPageRoute("geo-route", "geotechnical-engineering-design", "~/geotechnical-engineering.aspx");
        routes.MapPageRoute("info-route", "information-technology", "~/information-technology.aspx");
        routes.MapPageRoute("partner-with-us-route", "partner-with-us", "~/partner-with-us.aspx");
    }
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    protected void Application_BeginRequest(Object sender, EventArgs e)
    {
        //if (!Request.IsSecureConnection)
        //{
        //    string path = string.Format("https{0}", Request.Url.AbsoluteUri.Substring(4));
        //    Response.Redirect(path);
        //}
    }
       
</script>
