﻿using System;
using System.Collections.Generic;
using System.Text;

namespace QL_Vat_Lieu_Xay_Dung_Utilities.Dtos
{
    public abstract class PagedResultBase
    {
        public int CurrentPage { get; set; }

        public int PageCount
        {
            get
            {
                var pageCount = (double) RowCount / PageSize;
                return (int)Math.Ceiling(pageCount);
            }
            set => PageCount = value;
        }

        public int PageSize { get; set; }
        public int RowCount { get; set; }

        public int FirstRowOnPage => (CurrentPage - 1) * PageSize + 1;
        public int LastRowOnPage => Math.Min(CurrentPage * PageSize, RowCount);
    }
}
