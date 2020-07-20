using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using QL_Vat_Lieu_Xay_Dung_Services.Interfaces;
using QL_Vat_Lieu_Xay_Dung_WebApp.Models;

namespace QL_Vat_Lieu_Xay_Dung_WebApp.Controllers
{
    public class ProductController : Controller
    {
        private readonly IProductService _productService;
        private readonly IProductCategoryService _productCategoryService;
        private readonly IBillService _billService;
        public ProductController(IProductService productService,
            IProductCategoryService productCategoryService, IBillService billService)
        {
            _productService = productService;
            _productCategoryService = productCategoryService;
            _billService = billService;
        }
        [Route("products.html")]
        public IActionResult Index()
        {
            return View();
        }

        [Route("search.html")]
        public IActionResult Search(int? categoryId, string keyword, int? pageSize, string sortBy, int page = 1)
        {
            var catalog = new SearchViewModel();
            ViewData["BodyClass"] = "shop_grid_page";
            pageSize ??= 3;
            catalog.PageSize = pageSize;
            catalog.SortType = sortBy;
            catalog.Data = _productService.GetAllPaging(null, keyword, page, pageSize.Value);
            catalog.Keyword = keyword;

            return View(catalog);
        }
        [Route("{alias}-c.{id}.html")]
        public IActionResult ProductCatalog(int id, int? pageSize, string sortBy, int page = 1)
        {
            var productCatalog = new ProductCatalogViewModel();
            ViewData["BodyClass"] = "shop_grid_page";
            pageSize ??= 3;

            productCatalog.PageSize = pageSize;
            productCatalog.SortType = sortBy;
            productCatalog.Data = _productService.GetAllPaging(id, string.Empty, page, pageSize.Value);
            productCatalog.ProductCategory = _productCategoryService.GetById(id);

            return View(productCatalog);
        }

        [Route("{alias}-p.{id}.html")]
        public IActionResult ProductDetail(int id)
        {
            ViewData["BodyClass"] = "product-page";
            var model = new ProductDetailViewModel
            {
                Product = _productService.GetById(id),
                RelatedProducts = _productService.GetRelatedProducts(id, 9),
                UpsellProducts = _productService.GetUpsellProducts(6),
                ProductImages = _productService.GetImages(id),
                Tags = _productService.GetProductTags(id),
                Sizes = _billService.GetSizes().Select(x => new SelectListItem()
                {
                    Text = x.Name,
                    Value = x.Id.ToString()
                }).ToList()
        };
            model.ProductCategory = _productCategoryService.GetById(model.Product.CategoryId);
            return View(model);
        }
    }
}
