using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoMapper;
using QL_Vat_Lieu_Xay_Dung_Data.Entities;
using QL_Vat_Lieu_Xay_Dung_Infrastructure.Interfaces;
using QL_Vat_Lieu_Xay_Dung_Services.Interfaces;
using QL_Vat_Lieu_Xay_Dung_Services.ViewModels.Common;

namespace QL_Vat_Lieu_Xay_Dung_Services.Implementation
{
    public class SlideService : ISlideService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IRepository<Slide, int> _slideRepository;
        private readonly IMapper _mapper;

        public SlideService(IRepository<Slide, int> slideRepository, IMapper mapper, IUnitOfWork unitOfWork)
        {
            _slideRepository = slideRepository;
            _mapper = mapper;
            _unitOfWork = unitOfWork;
        }

        public List<SlideViewModel> GetSlides(string groupAlias)
        {
            return _mapper.ProjectTo<SlideViewModel>(
                    _slideRepository.FindAll(x => x.Status && x.GroupAlias == groupAlias))
                .ToList();
        }
    }
}
