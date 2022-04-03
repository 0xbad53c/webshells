# IIS + ASP Handlers
A default IIS installation with ASP comes with certain pre-enabled HTTP handlers for various file extensions in C:\Windows\Microsoft.NET\Framework64\{Framework version}\Config\Web.config:
```
<httpHandlers>
<add path="eurl.axd" verb="*" type="System.Web.HttpNotFoundHandler" validate="True" />
<add path="trace.axd" verb="*" type="System.Web.Handlers.TraceHandler" validate="True" />
<add path="WebResource.axd" verb="GET" type="System.Web.Handlers.AssemblyResourceLoader" validate="True" />
<add verb="*" path="*_AppService.axd" type="System.Web.Script.Services.ScriptHandlerFactory, System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False" />
<add verb="GET,HEAD" path="ScriptResource.axd" type="System.Web.Handlers.ScriptResourceHandler, System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False"/>
<add path="*.aspx" verb="*" type="System.Web.UI.PageHandlerFactory" validate="True" />
<add path="*.ashx" verb="*" type="System.Web.UI.SimpleHandlerFactory" validate="True" />
<add path="*.asmx" verb="*" type="System.Web.Script.Services.ScriptHandlerFactory, System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False" />
<add path="*.rem" verb="*" type="System.Runtime.Remoting.Channels.Http.HttpRemotingHandlerFactory, System.Runtime.Remoting, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" validate="False" />
<add path="*.soap" verb="*" type="System.Runtime.Remoting.Channels.Http.HttpRemotingHandlerFactory, System.Runtime.Remoting, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" validate="False" />
<add path="*.dll.config" verb="GET,HEAD" type="System.Web.StaticFileHandler" validate="True" />
<add path="*.exe.config" verb="GET,HEAD" type="System.Web.StaticFileHandler" validate="True" />
<add path="*.svc" verb="*" type="System.ServiceModel.Activation.HttpHandler, System.ServiceModel.Activation, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False"/>
<add path="*.xoml" verb="*" type="System.ServiceModel.Activation.HttpHandler, System.ServiceModel.Activation, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False"/>
<add path="*.xamlx" verb="*" type="System.Xaml.Hosting.XamlHttpHandlerFactory, System.Xaml.Hosting, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" validate="False"/>
<add path="*" verb="GET,HEAD,POST" type="System.Web.DefaultHttpHandler" validate="True" />
</httpHandlers>
```

Some of these can be abused to execute code on the server-side, such as webshells. 
| Extension     | Webshell sample| Post |
| ------------- | -------------  | -------------  |
| .soap         | [a relative link](soapshell.soap) | https://red.0xbad53c.com/red-team-operations/initial-access/webshells/iis-soap |
