# Artifacts  step by step procedure


Visual studio - new project - class library - name: coreservice115  # name should be unique

Edit class file to add below line

```public string Display(string value) { return "this value has core functionality"; }```

Full file 
```
namespace ClassLibrary1
{
    public class Class1
    {
        public string Display(string value) { return "this value has core functionality"; }
            
    }
}
```
Build the solution once . 


Go to azure Devops artifacts  - create a feed -  feed name should be unique

Connect to feed 


Get the tools 

Download latest nuget  - choose command line 

Copy this nuget.exe in project file 

Right click on nuget.exe and Change properties to unblock and apply 

In VS , Create a new file nuget.config and add the project setup code  from artefact page
```xml
<?xml version="1.0" encoding="utf-8"?>
<configuration>
	<packageSources>
		<clear />
		<add key="corefeed" value="https://pkgs.dev.azure.com/AshokDevOps5/_packaging/corefeed/nuget/v3/index.json" />
	</packageSources>
</configuration>
```

Open powershell where project file there run below commands 

```$env:NUGET_ENABLE_LEGACY_CSPROJ_PACK="true"```

```./nuget.exe pack ./coreservice114.csproj```  

> this will create a pkg coreservice114.1.0.0.nupkg



```./nuget.exe push -Source "corefeed" -Apikey az coreservice114.1.0.0.nupkg```



## to consume a package 

Create a new ASP.net core web app project in VS

Open package manager, click on gear icon 

click on tools , Nuget package manager , pakcge manager settings - click on package sources , 

go to azure artifcats click on connect feed and select visual studio , copy source URL, feed name and paste in VS 

click on tools , Nuget package manager , manage package manager solutions 

on the package source dropdown , select corefeed  if asks  login to account 

on browse tab , search for coreservice114 and install for project


To utilise the pkg, need to modify code files 

Open index.chtml.cs 

```
Public string Message { get; set; }
```

In the onget method 

```
            coreservice coreservice = new coreservice();
            message = coreservice.Display();
```

Complete file

```
using coreservice114;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace testfeed1.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        public string message { get; set; }
        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {
            coreservice coreservice = new coreservice();
            message = coreservice.Display();
        }
    }
}

```



In index.cshtml 


Modify welcome to 

@Model.message

Complete file 
```
@page
@model IndexModel
@{
    ViewData["Title"] = "Home page";
}

<div class="text-center">
    <h1 class="display-4">@Model.message</h1>
    <p>Learn about <a href="https://docs.microsoft.com/aspnet/core">building Web apps with ASP.NET Core</a>.</p>
</div>
```


Run the application to check , you shoud see messgage "this has core functions"



> If you would like to change package version change project file and property version as below and generate new package

```
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net6.0</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
	<Version>1.0.1</Version>
  </PropertyGroup>

</Project>
```
