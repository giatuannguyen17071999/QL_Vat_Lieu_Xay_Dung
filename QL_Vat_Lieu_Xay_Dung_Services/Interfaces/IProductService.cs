﻿using System;
using System.Collections.Generic;
using QL_Vat_Lieu_Xay_Dung_Services.ViewModels.Common;
using QL_Vat_Lieu_Xay_Dung_Services.ViewModels.Product;
using QL_Vat_Lieu_Xay_Dung_Utilities.Dtos;

namespace QL_Vat_Lieu_Xay_Dung_Services.Interfaces
{
    public interface IProductService : IDisposable
    {
        List<ProductViewModel> GetAll();
        ProductViewModel Add(ProductViewModel product);
        void Update(ProductViewModel product);
        void Delete(int id);
        ProductViewModel GetById(int id);
        void Save();
        void AddQuantity(int productId, List<ProductQuantityViewModel> quantities);

        List<ProductQuantityViewModel> GetQuantities(int productId);

        void AddImages(int productId, string[] images);

        List<ProductImageViewModel> GetImages(int productId);

        List<ProductViewModel> GetAllSearch(int? categoryId, string keyword);
        PagedResult<ProductViewModel> GetAllPaging(int? categoryId, string keyword, int page, int pageSize,string sort = null);
        List<ProductViewModel> GetHotProducts(int top);
        List<ProductViewModel> GetTopSellProducts(int top);
        List<ProductViewModel> GetRelatedProducts(int id, int top);
        List<ProductViewModel> GetUpsellProducts(int top);
        List<TagViewModel> GetProductTags(int productId);
        bool CheckAvailability(int productId, int size);
    }
}