#pragma checksum "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "885aa48270bb664a0783d8568a2f844f5659be33"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Shared_Components_WriterNavProfile_Default), @"mvc.1.0.view", @"/Views/Shared/Components/WriterNavProfile/Default.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\_ViewImports.cshtml"
using CoreBlogProject;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\_ViewImports.cshtml"
using CoreBlogProject.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\_ViewImports.cshtml"
using EntityLayer.Concrete;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"885aa48270bb664a0783d8568a2f844f5659be33", @"/Views/Shared/Components/WriterNavProfile/Default.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4a65457edb0ff3a81d814624bbb8b46c30392bb9", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Shared_Components_WriterNavProfile_Default : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Writer>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml"
 foreach (var yazar in Model)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <li class=\"nav-item nav-profile\">\r\n        <a href=\"#\" class=\"nav-link\">\r\n            <div class=\"nav-profile-image\">\r\n                <img");
            BeginWriteAttribute("src", " src=\"", 198, "\"", 237, 2);
            WriteAttributeValue("", 204, "/Weblog/images/", 204, 15, true);
#nullable restore
#line 7 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml"
WriteAttributeValue("", 219, yazar.WriterImage, 219, 18, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" alt=\"profile\">\r\n                <span class=\"login-status online\"></span>\r\n            </div>\r\n            <div class=\"nav-profile-text d-flex flex-column\">\r\n                <span class=\"font-weight-bold mb-2\">");
#nullable restore
#line 11 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml"
                                               Write(yazar.WriterName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n                <span class=\"text-secondary text-small\">");
#nullable restore
#line 12 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml"
                                                   Write(yazar.WriterAbout);

#line default
#line hidden
#nullable disable
            WriteLiteral("</span>\r\n            </div>\r\n            <i class=\"mdi mdi-bookmark-check text-success nav-profile-badge\"></i>\r\n        </a>\r\n    </li>\r\n");
#nullable restore
#line 17 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Views\Shared\Components\WriterNavProfile\Default.cshtml"
}

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Writer>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591