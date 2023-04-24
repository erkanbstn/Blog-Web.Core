#pragma checksum "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "0437833a07824a0488037db632d49eefd24b9952"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Admin_Views_Blog_Index), @"mvc.1.0.view", @"/Areas/Admin/Views/Blog/Index.cshtml")]
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
#line 1 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
using EntityLayer.Concrete;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"0437833a07824a0488037db632d49eefd24b9952", @"/Areas/Admin/Views/Blog/Index.cshtml")]
    #nullable restore
    public class Areas_Admin_Views_Blog_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<List<Blog>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
  
    ViewData["Title"] = "Index";
    Layout = "~/Areas/Admin/Views/Shared/_AdminLayout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""widget style1 navy-bg"">
    <div class=""row"">
        <div class=""col-4"">
            <i class=""fa fa-cloud fa-5x""></i>
        </div>
        <div class=""col-8 text-right"">
            <span> Bugünün Sıcaklığı </span>
            <h2 class=""font-bold"">");
#nullable restore
#line 14 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
                             Write(ViewBag.sicaklik);

#line default
#line hidden
#nullable disable
            WriteLiteral(@" 'K</h2>
        </div>
    </div>
</div>

<h1>Bloglar</h1>
<br />
<table class=""table table-hover"">
    <tr>
        <th>
            Blog Adı
        </th>
        <th>
            Tarih
        </th>
        <th>
            Sil
        </th>
        <th>
            Düzenle
        </th>
    </tr>
");
#nullable restore
#line 36 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
     foreach (var blog in Model)
    {

#line default
#line hidden
#nullable disable
            WriteLiteral("        <tr>\r\n            <td>\r\n                ");
#nullable restore
#line 40 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
           Write(blog.BlogTitle);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
#nullable restore
#line 43 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
           Write(Convert.ToDateTime(blog.CreateDate).ToString("dd/MM/yyyy"));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                <a");
            BeginWriteAttribute("href", " href=\"", 1042, "\"", 1092, 2);
            WriteAttributeValue("", 1049, "/Admin/Category/DeleteCategory/", 1049, 31, true);
#nullable restore
#line 46 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
WriteAttributeValue("", 1080, blog.BlogID, 1080, 12, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" onclick=\"return confirm(\'Silmek İstediğinize Emin misiniz?\')\" class=\"btn btn-outline-danger\">Delete</a>\r\n            </td>\r\n            <td>\r\n                <a");
            BeginWriteAttribute("href", " href=\"", 1254, "\"", 1302, 2);
            WriteAttributeValue("", 1261, "/Admin/Category/EditCategory/", 1261, 29, true);
#nullable restore
#line 49 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
WriteAttributeValue("", 1290, blog.BlogID, 1290, 12, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" class=\"btn btn-outline-success\">Edit</a>\r\n            </td>\r\n        </tr>\r\n");
#nullable restore
#line 52 "E:\VisualProjects\Finish\NETCore\NetCoreMVC\MVC\CoreBlogProject\CoreBlogProject\Areas\Admin\Views\Blog\Index.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("</table>\r\n<a href=\"/Admin/Category/AddCategory/\" class=\"btn btn-primary\">Add New Blog</a>\r\n<a href=\"/Admin/Blog/ExcelImport/\" class=\"btn btn-info\">Excel Import</a>\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<List<Blog>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591