using System;
using System.Collections.Generic;
using System.Text;
using QL_Vat_Lieu_Xay_Dung_Services.ViewModels.Common;

namespace QL_Vat_Lieu_Xay_Dung_Services.Interfaces
{
    public interface ISlideService
    {
        List<SlideViewModel> GetSlides(string groupAlias);
    }
}
