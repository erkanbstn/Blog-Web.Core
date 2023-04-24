﻿using BusinessLayer.Concrete;
using DataAccessLayer.EntityFramework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreBlogProject.Controllers
{
    public class Comment : Controller
    {
        CommentManager cm = new CommentManager(new EFCommentDal());
        public IActionResult Index()
        {
            return View();
        }
       
    }
}
