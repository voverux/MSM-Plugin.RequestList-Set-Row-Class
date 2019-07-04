<%@ WebHandler Language="C#" Class="RequestListSetRowClassHandler" %>

using System;
using System.IO;
using System.Xml;
using System.Net;
using System.Web;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Xml.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;
using MarvalSoftware;
using MarvalSoftware.ServiceDesk.Facade;
using MarvalSoftware.UI.WebUI.ServiceDesk.RFP.Plugins;


/// <summary>
/// Request Dynamic Form Plugin Handler
/// </summary>
public class RequestListSetRowClassHandler : PluginHandler
{
    public override bool IsReusable { get { return false; } }
    private string pluginConfig { get { return this.GlobalSettings["Plugin Configuration"]; } }

    /// <summary>
    /// Main Request Handler
    /// </summary>
    public override void HandleRequest(HttpContext context)
    {
		context.Response.Write(pluginConfig);
    }
}
