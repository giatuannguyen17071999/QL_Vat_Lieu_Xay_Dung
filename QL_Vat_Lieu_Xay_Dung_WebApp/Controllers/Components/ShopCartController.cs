﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace QL_Vat_Lieu_Xay_Dung_WebApp.Controllers.Components
{
    public class ShopCartController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
