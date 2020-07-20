using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using QL_Vat_Lieu_Xay_Dung_Data.Entities;
using QL_Vat_Lieu_Xay_Dung_Data.Enums;
using QL_Vat_Lieu_Xay_Dung_Utilities.Constants;

namespace QL_Vat_Lieu_Xay_Dung_Data_EF
{
    public class DbInitializer
    {
        private readonly AppDbContext _context;
        private readonly UserManager<AppUser> _userManager;
        private readonly RoleManager<AppRole> _roleManager;

        public DbInitializer(AppDbContext context, UserManager<AppUser> userManager, RoleManager<AppRole> roleManager)
        {
            _context = context;
            _userManager = userManager;
            _roleManager = roleManager;
        }

        public async Task Seed()
        {
            if (!_roleManager.Roles.Any())
            {
                await _roleManager.CreateAsync(new AppRole()
                {
                    Name = "Admin",
                    NormalizedName = "Admin",
                    Description = "Top manager"
                });
                await _roleManager.CreateAsync(new AppRole()
                {
                    Name = "Staff",
                    NormalizedName = "Staff",
                    Description = "Staff"
                });
                await _roleManager.CreateAsync(new AppRole()
                {
                    Name = "Customer",
                    NormalizedName = "Customer",
                    Description = "Customer"
                });
            }
            if (!_userManager.Users.Any())
            {
                await _userManager.CreateAsync(new AppUser()
                {
                    UserName = "admin",
                    FullName = "Administrator",
                    Email = "admin@gmail.com",
                    DateCreated = DateTime.Now,
                    DateModified = DateTime.Now,
                    Status = Status.Active,
                    EmailConfirmed = true
                }, "123456789");
                var user = await _userManager.FindByNameAsync("admin");
                await _userManager.AddToRoleAsync(user, "Admin");
            }
            if (!_context.Functions.Any())
            {
                await _context.Functions.AddRangeAsync(new List<Function>()
                {
                    new Function() {Id = "SYSTEM", Name = "Hệ thống",ParentId = null,SortOrder = 1,Status = Status.Active,URL = "/",IconCss = "fa-desktop"  },
                    new Function() {Id = "ROLE", Name = "Nhóm",ParentId = "SYSTEM",SortOrder = 1,Status = Status.Active,URL = "/admin/role/index",IconCss = "fa-home"  },
                    new Function() {Id = "FUNCTION", Name = "Chức năng",ParentId = "SYSTEM",SortOrder = 2,Status = Status.Active,URL = "/admin/function/index",IconCss = "fa-home"  },
                    new Function() {Id = "USER", Name = "Người dùng",ParentId = "SYSTEM",SortOrder =3,Status = Status.Active,URL = "/admin/user/index",IconCss = "fa-home"  },
                    new Function() {Id = "ACTIVITY", Name = "Nhật ký",ParentId = "SYSTEM",SortOrder = 4,Status = Status.Active,URL = "/admin/activity/index",IconCss = "fa-home"  },
                    new Function() {Id = "ERROR", Name = "Lỗi",ParentId = "SYSTEM",SortOrder = 5,Status = Status.Active,URL = "/admin/error/index",IconCss = "fa-home"  },
                    new Function() {Id = "SETTING", Name = "Cấu hình",ParentId = "SYSTEM",SortOrder = 6,Status = Status.Active,URL = "/admin/setting/index",IconCss = "fa-home"  },
                    new Function() {Id = "PRODUCT",Name = "Sản phẩm",ParentId = null,SortOrder = 2,Status = Status.Active,URL = "/",IconCss = "fa-chevron-down"  },
                    new Function() {Id = "PRODUCT_CATEGORY",Name = "Danh mục",ParentId = "PRODUCT",SortOrder =1,Status = Status.Active,URL = "/admin/productcategory/index",IconCss = "fa-chevron-down"  },
                    new Function() {Id = "PRODUCT_LIST",Name = "Sản phẩm",ParentId = "PRODUCT",SortOrder = 2,Status = Status.Active,URL = "/admin/product/index",IconCss = "fa-chevron-down"  },
                    new Function() {Id = "BILL",Name = "Hóa đơn",ParentId = "PRODUCT",SortOrder = 3,Status = Status.Active,URL = "/admin/bill/index",IconCss = "fa-chevron-down"  },
                    new Function() {Id = "CONTENT",Name = "Nội dung",ParentId = null,SortOrder = 3,Status = Status.Active,URL = "/",IconCss = "fa-table"  },
                    new Function() {Id = "UTILITY",Name = "Tiện ích",ParentId = null,SortOrder = 4,Status = Status.Active,URL = "/",IconCss = "fa-clone"  },
                    new Function() {Id = "FOOTER",Name = "Footer",ParentId = "UTILITY",SortOrder = 1,Status = Status.Active,URL = "/admin/footer/index",IconCss = "fa-clone"  },
                    new Function() {Id = "FEEDBACK",Name = "Phản hồi",ParentId = "UTILITY",SortOrder = 2,Status = Status.Active,URL = "/admin/feedback/index",IconCss = "fa-clone"  },
                    new Function() {Id = "ANNOUNCEMENT",Name = "Thông báo",ParentId = "UTILITY",SortOrder = 3,Status = Status.Active,URL = "/admin/announcement/index",IconCss = "fa-clone"  },
                    new Function() {Id = "CONTACT",Name = "Liên hệ",ParentId = "UTILITY",SortOrder = 4,Status = Status.Active,URL = "/admin/contact/index",IconCss = "fa-clone"  },
                    new Function() {Id = "SLIDE",Name = "Slide",ParentId = "UTILITY",SortOrder = 5,Status = Status.Active,URL = "/admin/slide/index",IconCss = "fa-clone"  },
                    new Function() {Id = "REPORT",Name = "Báo cáo",ParentId = null,SortOrder = 5,Status = Status.Active,URL = "/",IconCss = "fa-bar-chart-o"  },
                    new Function() {Id = "REVENUES",Name = "Báo cáo doanh thu",ParentId = "REPORT",SortOrder = 1,Status = Status.Active,URL = "/admin/report/revenues",IconCss = "fa-bar-chart-o"  },
                    new Function() {Id = "ACCESS",Name = "Báo cáo truy cập",ParentId = "REPORT",SortOrder = 2,Status = Status.Active,URL = "/admin/report/visitor",IconCss = "fa-bar-chart-o"  },
                    new Function() {Id = "READER",Name = "Reader Report",ParentId = "REPORT",SortOrder = 3,Status = Status.Active,URL = "/admin/report/reader",IconCss = "fa-bar-chart-o"  },
                });
            }
            if (!_context.Slides.Any())
            {
                var slides = new List<Slide>()
                {
                    new Slide() {Name="Slide 1",Image="/img_ds/slide-1.jpg",Url="#",DisplayOrder = 1,GroupAlias = "top",Status=Status.Active },
                    new Slide() {Name="Slide 2",Image="/img_ds/slide-2.jpg",Url="#",DisplayOrder = 2,GroupAlias = "top",Status=Status.Active },
                    new Slide() {Name="Slide 3",Image="/img_ds/slide-3.jpg",Url="#",DisplayOrder = 3,GroupAlias = "top",Status=Status.Active },

                    new Slide() {Name="Linax",Image="/img_ds/brand1.png",Url="#",DisplayOrder = 1,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Lavender",Image="/img_ds/brand2.png",Url="#",DisplayOrder = 2,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Việt Thái",Image="/img_ds/brand3.png",Url="#",DisplayOrder = 3,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Rubivina",Image="/img_ds/brand4.png",Url="#",DisplayOrder = 4,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="BOSCH",Image="/img_ds/brand5.png",Url="#",DisplayOrder = 5,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="VITTO",Image="/img_ds/brand6.png",Url="#",DisplayOrder = 6,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Mosaic",Image="/img_ds/brand7.png",Url="#",DisplayOrder = 7,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Blue Bird",Image="/img_ds/brand8.png",Url="#",DisplayOrder = 8,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Gỗ Lưu Hoàng",Image="/img_ds/brand9.png",Url="#",DisplayOrder = 9,GroupAlias = "brand",Status=Status.Active },
                    new Slide() {Name="Đại Gia Long",Image="/img_ds/brand10.png",Url="#",DisplayOrder = 10,GroupAlias = "brand",Status=Status.Active }
                };
                await _context.Slides.AddRangeAsync(slides);
            }
            if (!_context.Sizes.Any())
            {
                var listSize = new List<Size>()
                {
                    new Size() { Name = "25kg"},
                    new Size() { Name = "15cm x 30cm x 100cm"},
                    new Size() { Name = "60cm x 60cm"},
                    new Size() { Name = "40cm x 40cm" },
                    new Size() { Name = "30cm x 60cm"},
                    new Size() { Name = "6cm × 22,5cm" }
                    };
                await _context.Sizes.AddRangeAsync(listSize);
            }
            if (!_context.ProductCategories.Any())
            {
                var listProductCategory = new List<ProductCategory>()
                {
                    new ProductCategory() { Name="Gạch Ốp Lát",SeoAlias="gach-op-lat",ParentId = null,Status=Status.Active,SortOrder=1,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Gạch INAX-155F",DateCreated=DateTime.Now,Image="/img_ds/product-1.jpg",SeoAlias = "gach-inax-155f", Unit = "Viên",Price = 350000,Status = Status.Active,OriginalPrice = 200000},
                            new Product(){Name = "Gạch INAX HAL-25B",DateCreated=DateTime.Now,Image="/img_ds/product-2.jpg",SeoAlias = "gach-inax-25b", Unit = "Viên",Price = 350000,Status = Status.Active,OriginalPrice = 200000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT009",DateCreated=DateTime.Now,Image="/img_ds/product-3.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt009",PromotionPrice = 15000, Unit = "Viên",Price = 420000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT010",DateCreated=DateTime.Now,Image="/img_ds/product-4.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt010",PromotionPrice = 15000, Unit = "Viên",Price = 420000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT011",DateCreated=DateTime.Now,Image="/img_ds/product-5.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt011",PromotionPrice = 15000, Unit = "Viên",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT016",DateCreated=DateTime.Now,Image="/img_ds/product-6.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt016",PromotionPrice = 15000, Unit = "Viên",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT018",DateCreated=DateTime.Now,Image="/img_ds/product-7.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt018",PromotionPrice = 15000, Unit = "Viên",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Gạch tranh mosaic nghệ thuật GT020",DateCreated=DateTime.Now,Image="/img_ds/product-8.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt020",PromotionPrice = 15000, Unit = "Viên",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                        }
                    },
                    new ProductCategory() { Name="Xi Măng",SeoAlias="xi-mang",ParentId = null,Status=Status.Active ,SortOrder=2,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Xi Măng Vicem Hà Tiên Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds/product-9.jpg",SeoAlias = "xi-mang-vicem-ha-tien-da-dung", Unit = "Bao",Price = 85000,Status = Status.Active,OriginalPrice = 50000},
                            new Product(){Name = "Xi Măng Hà Tiên 2 Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds/product-10.jpg",SeoAlias = "xi-mang-ha-tien-2-da-dung", Unit = "Bao",Price = 85000,Status = Status.Active,OriginalPrice = 50000},
                            new Product(){Name = "Xi Măng Hoàng Mai Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds/product-11.jpg",SeoAlias = "xi-mang-hoang-long-da-dung", Unit = "Bao",Price = 85000,Status = Status.Active,OriginalPrice = 50000},
                            new Product(){Name = "Xi Măng Hoàng Long Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds/product-12.jpg",SeoAlias = "xi-mang-hoang-mai-da-dung", Unit = "Bao",Price = 105000,Status = Status.Active,OriginalPrice = 50000},
                            new Product(){Name = "Xi Măng Hoàng Thạch Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds//product-13.jpg",SeoAlias = "xi-mang-hoang-thach-da-dung", Unit = "Bao",Price = 95000,Status = Status.Active,OriginalPrice = 50000},
                            new Product(){Name = "Xi Măng Holcim Đa Dụng",DateCreated=DateTime.Now,Image="/img_ds/product-14.jpg",SeoAlias = "xi-mang-holcim-da-dung", Unit = "Bao",Price = 95000,Status = Status.Active,OriginalPrice = 50000},
                        }},
                    new ProductCategory() { Name="Sàn gỗ",SeoAlias="gian-giao",ParentId = null,Status=Status.Active ,SortOrder=3,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Sàn gỗ Eurohome D893",DateCreated=DateTime.Now,Image="/img_ds/product-15.jpg",SeoAlias = "san-go-eurohome-d893", Unit = "M2",Price = 650000,Status = Status.Active,OriginalPrice = 500000},
                            new Product(){Name = "Sàn gỗ óc chó DongSung",DateCreated=DateTime.Now,Image="/img_ds/product-16.jpg",SeoAlias = "san-go-oc-cho-dongsung", Unit = "M2",Price = 750000,Status = Status.Active,OriginalPrice = 500000},
                            new Product(){Name = "Sàn gỗ tự nhiên Woodtec",DateCreated=DateTime.Now,Image="/img_ds/product-17.jpg",SeoAlias = "san-go-tu-nhien-woodtec",Price = 850000, Unit = "M2",Status = Status.Active,OriginalPrice = 500000},
                            new Product(){Name = "Sàn gỗ Kingfloor 8769",DateCreated=DateTime.Now,Image="/img_ds/product-18.jpg",SeoAlias = "san-go-kingfloor-8769",Price = 950000, Unit = "M2",Status = Status.Active,OriginalPrice = 500000},
                            new Product(){Name = "Sàn gỗ Meister PS300-8044",DateCreated=DateTime.Now,Image="/img_ds/product-19.jpg",SeoAlias = "san-go-meister-ps300-8044", Unit = "M2",Price = 650000,Status = Status.Active,OriginalPrice = 500000},
                        }},
                    new ProductCategory() { Name="Gạch Block",SeoAlias="gach-block",ParentId = null,Status=Status.Active,SortOrder=4,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Gạch cổ xây AB09",DateCreated=DateTime.Now, Image="/img_ds/product-20.jpg",SeoAlias = "gach-co-xay-ab09",Price = 8500, Unit = "Viên",Status = Status.Active,OriginalPrice = 5000},
                            new Product(){Name = "Gạch cổ xây AB01",DateCreated=DateTime.Now,Image="/img_ds/product-21.jpg",SeoAlias = "gach-co-xay-ab01",Price = 8500, Unit = "Viên",Status = Status.Active,OriginalPrice = 5000},
                            new Product(){Name = "Gạch cổ xây AB02",DateCreated=DateTime.Now,Image="/img_ds/product-22.jpg",SeoAlias = "gach-co-xay-ab02",Price = 8500, Unit = "Viên",Status = Status.Active,OriginalPrice = 5000},
                            new Product(){Name = "Gạch Block khuôn bông trang trí V403",DateCreated=DateTime.Now,Image="/img_ds/product-23.jpg",SeoAlias = "gach-block-khuon-bong-trang-tri-v403", Unit = "Viên",Price = 169000,Status = Status.Active,OriginalPrice = 150000},
                            new Product(){Name = "Gạch bánh ú bê tông xi măng",DateCreated=DateTime.Now,Image="/img_ds/product-24.jpg",SeoAlias = "gach-banh-u-be-tong-xi-mang", Unit = "Viên",Price = 22000,Status = Status.Active,OriginalPrice = 12000},
                        }},
                    new ProductCategory() { Name="Đá Bazan",SeoAlias="da-bazan",ParentId = null,Status=Status.Active,SortOrder=5,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Đá Bazan Khò Mặt",DateCreated=DateTime.Now,Image="/img_ds/product-25.jpg",SeoAlias = "da-bazan-kho-mat",Price = 350000,Status = Status.Active,OriginalPrice = 200000, Unit = "Cái"},
                            new Product(){Name = "Đá Đen Bazan Quy Cách Rối",DateCreated=DateTime.Now,Image="/img_ds/product-26.jpg",SeoAlias = "da-den-bazan-quy-cach-roi",Price = 350000, Unit = "Cái",Status = Status.Active,OriginalPrice = 200000},
                            new Product(){Name = "Đá Bóc Bazan Đen",DateCreated=DateTime.Now,Image="/img_ds/product-27.jpg",SeoAlias = "da-boc-bazan-den",Price = 420000, Unit = "Cái",Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Đá Bazan Cubic Băm Mặt",DateCreated=DateTime.Now,Image="/img_ds/product-28.jpg",SeoAlias = "da-bazan-cubic-bam-mat", Unit = "Cái",Price = 420000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Đá Cây Bazan Bo Bồn Hoa",DateCreated=DateTime.Now,Image="/img_ds/product-29.jpg",SeoAlias = "da-cay-bazan-bo-bon-hoa", Unit = "Cây",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Đá Bazan Khò Lửa",DateCreated=DateTime.Now,Image="/img_ds/product-30.jpg",SeoAlias = "da-bazan-kho-lua", Unit = "Cái",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Đá Bazan Đen Băm Mặt",DateCreated=DateTime.Now,Image="/img_ds/product-31.jpg",SeoAlias = "da-bazan-bam-mat", Unit = "Cái",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Đá Bazan Bánh Dầu",DateCreated=DateTime.Now,Image="/img_ds/product-32.jpg",SeoAlias = "gach-tranh-mosaic-nghe-thuat-gt020", Unit = "Cái",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                        }
                    },
                    new ProductCategory() { Name="Cát Sỏi Xây Dựng",SeoAlias="cat-soi-xay-dung",ParentId = null,Status=Status.Active,SortOrder=6,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Cát san lấp nền loại 1 CSL",DateCreated=DateTime.Now,Image="/img_ds/product-33.jpg",SeoAlias = "cat-san-lap-nen-loai-1-csl",Price = 350000,Status = Status.Active,OriginalPrice = 200000, Unit = "Tấn"},
                            new Product(){Name = "Cát Vàng CII E&C",DateCreated=DateTime.Now,Image="/img_ds/product-34.jpg",SeoAlias = "cat-vang-cii-e&c",Price = 350000, Unit = "Tấn",Status = Status.Active,OriginalPrice = 200000},
                            new Product(){Name = "Cát Bê Tông CII E&C Loại 2",DateCreated=DateTime.Now,Image="/img_ds/product-35.jpg",SeoAlias = "cat-be-tong-cii-e&c--loai-2",Price = 420000, Unit = "Tấn",Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Sỏi Hồng tự nhiên (Sỏi sông Hà Nội) MiA-STN-002",DateCreated=DateTime.Now,Image="/img_ds/product-36.jpg",SeoAlias = "soi-hong-tu-nhien-soi-song-ha-noi-mia-stn-002", Unit = "Bao",Price = 420000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Sỏi quay",DateCreated=DateTime.Now,Image="/img_ds/product-37.jpg",SeoAlias = "soi-quay", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Sỏi cuội tự nhiên xanh đen",DateCreated=DateTime.Now,Image="/img_ds/product-38.jpg",SeoAlias = "soi-cuoi-tu-nhien-xanh-den", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Sỏi vàng quay",DateCreated=DateTime.Now,Image="/img_ds/product-39.jpg",SeoAlias = "soi-vang-quay", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Sỏi quay màu vàng MiA-STN-005",DateCreated=DateTime.Now,Image="/img_ds/product-40.jpg",SeoAlias = "soi-quay-mau-vang-mia-stn-005", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                        }
                    },
                    new ProductCategory() { Name="Keo dán gạch đá",SeoAlias="keo-dan-gach-da",ParentId = null,Status=Status.Active,SortOrder=7,
                        Products = new List<Product>()
                        {
                            new Product(){Name = "Keo Ốp Lát CiMax",DateCreated=DateTime.Now,Image="/img_ds/product-41.jpg",SeoAlias = "keo-op-lat-cimax",PromotionPrice = 15000,Price = 350000,Status = Status.Active,OriginalPrice = 200000, Unit = "Bao"},
                            new Product(){Name = "Keo Shilkaler Pro",DateCreated=DateTime.Now,Image="/img_ds/product-42.jpg",SeoAlias = "keo-shilkaler-pro",PromotionPrice = 15000,Price = 350000, Unit = "Bao",Status = Status.Active,OriginalPrice = 200000},
                            new Product(){Name = "Keo dán đá K-Epoxy",DateCreated=DateTime.Now,Image="/img_ds/product-43.jpg",SeoAlias = "keo-dan-da-k-epoxy",Price = 420000, Unit = "Bao",Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Keo dán gạch TAG.TILE A9",DateCreated=DateTime.Now,Image="/img_ds/product-44.jpg",SeoAlias = "keo-dan-gach-tag.tile-a9", Unit = "Bao",Price = 420000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "KEO Chà RON WEBER",DateCreated=DateTime.Now,Image="/img_ds/product-45.jpg",SeoAlias = "keo-cha-ron-weber-2", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Keo dán đá Epoxy Eco Stone Orion RO-9000",DateCreated=DateTime.Now,Image="/img_ds/product-46.jpg",SeoAlias = "keo-dan-da-epoxy-eco-stone-orion-ro-9000", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Keo dán gạch ít gây bụi Weber.tai MAXX",DateCreated=DateTime.Now,Image="/img_ds/product-47.jpg",SeoAlias = "keo-dan-gach-it-gay-bui-weber.tai-maXX", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                            new Product(){Name = "Keo dán gạch Weber.tai GRES",DateCreated=DateTime.Now,Image="/img_ds/product-48.jpg",PromotionPrice = 15000,SeoAlias = "keo-dan-gach-weber.tai-gres", Unit = "Bao",Price = 500000,Status = Status.Active,OriginalPrice = 300000},
                        }
                    }

                };
                await _context.ProductCategories.AddRangeAsync(listProductCategory);
            }

            if (_context.Footers.Count(x => x.Id == CommonConstants.DefaultFooterId) == 0)
            {
                const string content = "Footer";
                await _context.Footers.AddAsync(new Footer()
                {
                    Id = CommonConstants.DefaultFooterId,
                    Content = content
                });
            }
            if (!_context.SystemConfigs.Any(x => x.Id == "HomeTitle"))
            {
                await _context.SystemConfigs.AddAsync(new SystemConfig()
                {
                    Id = "HomeTitle",
                    Name = "Tiêu đề trang chủ",
                    Value1 = "Trang chủ",
                    Status = Status.Active
                });
            }
            if (!_context.SystemConfigs.Any(x => x.Id == "HomeMetaKeyword"))
            {
                await _context.SystemConfigs.AddAsync(new SystemConfig()
                {
                    Id = "HomeMetaKeyword",
                    Name = "Từ khoá trang chủ",
                    Value1 = "Trang chủ",
                    Status = Status.Active
                });
            }
            if (!_context.SystemConfigs.Any(x => x.Id == "HomeMetaDescription"))
            {
                await _context.SystemConfigs.AddAsync(new SystemConfig()
                {
                    Id = "HomeMetaDescription",
                    Name = "Mô tả trang chủ",
                    Value1 = "Trang chủ",
                    Status = Status.Active
                });
            }

            if (!_context.ProductImages.Any())
            {
                var listProductImages = new List<ProductImage>()
                {
                    #region 1 - 10

                    new ProductImage() { ProductId = 1, Path = "/img_ds/product-6.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 1, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 1, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 1, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 2, Path = "/img_ds/product-17.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 2, Path = "/img_ds/product-37.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 2, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 3, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 3, Path = "/img_ds/product-6.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 3, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 4, Path = "/img_ds/product-2.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 4, Path = "/img_ds/product-3.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 4, Path = "/img_ds/product-4.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 5, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 5, Path = "/img_ds/product-32.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 5, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 5, Path = "/img_ds/product-38.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 5, Path = "/img_ds/product-39.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 6, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 6, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 6, Path = "/img_ds/product-10.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 7, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 7, Path = "/img_ds/product-13.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 7, Path = "/img_ds/product-15.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 8, Path = "/img_ds/product-14.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 8, Path = "/img_ds/product-18.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 8, Path = "/img_ds/product-20.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 9, Path = "/img_ds/product-19.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 9, Path = "/img_ds/product-21.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 9, Path = "/img_ds/product-22.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 9, Path = "/img_ds/product-23.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 10, Path = "/img_ds/product-25.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 10, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 10, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 10, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},

                    #endregion

                    #region 11 - 20

                    new ProductImage() { ProductId = 11, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 11, Path = "/img_ds/product-5.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 11, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 11, Path = "/img_ds/product-8.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 12, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 12, Path = "/img_ds/product-35.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 12, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 13, Path = "/img_ds/product-17.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 13, Path = "/img_ds/product-36.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 13, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 14, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 14, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 14, Path = "/img_ds/product-40.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 15, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 15, Path = "/img_ds/product-32.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 15, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 15, Path = "/img_ds/product-38.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 15, Path = "/img_ds/product-39.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 16, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 16, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 16, Path = "/img_ds/product-10.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 17, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 17, Path = "/img_ds/product-13.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 17, Path = "/img_ds/product-15.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 18, Path = "/img_ds/product-14.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 18, Path = "/img_ds/product-19.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 18, Path = "/img_ds/product-20.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 19, Path = "/img_ds/product-29.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 19, Path = "/img_ds/product-21.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 19, Path = "/img_ds/product-22.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 19, Path = "/img_ds/product-23.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 20, Path = "/img_ds/product-25.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 20, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 20, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 20, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},

                    #endregion

                    #region 21 - 30

                    new ProductImage() { ProductId = 21, Path = "/img_ds/product-6.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 21, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 21, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 21, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 22, Path = "/img_ds/product-17.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 22, Path = "/img_ds/product-37.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 22, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 23, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 23, Path = "/img_ds/product-6.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 23, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 24, Path = "/img_ds/product-2.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 24, Path = "/img_ds/product-3.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 24, Path = "/img_ds/product-4.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 25, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 25, Path = "/img_ds/product-32.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 25, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 25, Path = "/img_ds/product-38.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 25, Path = "/img_ds/product-39.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 26, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 26, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 26, Path = "/img_ds/product-10.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 27, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 27, Path = "/img_ds/product-13.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 27, Path = "/img_ds/product-15.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 28, Path = "/img_ds/product-14.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 28, Path = "/img_ds/product-18.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 28, Path = "/img_ds/product-20.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 29, Path = "/img_ds/product-19.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 29, Path = "/img_ds/product-21.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 29, Path = "/img_ds/product-22.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 29, Path = "/img_ds/product-23.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 30, Path = "/img_ds/product-25.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 30, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 30, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 30, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},

                    #endregion

                    #region 31 - 40

                    new ProductImage() { ProductId = 31, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 31, Path = "/img_ds/product-5.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 31, Path = "/img_ds/product-7.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 31, Path = "/img_ds/product-8.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 32, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 32, Path = "/img_ds/product-35.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 32, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 33, Path = "/img_ds/product-17.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 33, Path = "/img_ds/product-36.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 33, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 34, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 34, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 34, Path = "/img_ds/product-40.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 35, Path = "/img_ds/product-34.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 35, Path = "/img_ds/product-32.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 35, Path = "/img_ds/product-31.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 35, Path = "/img_ds/product-38.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 35, Path = "/img_ds/product-39.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 36, Path = "/img_ds/product-1.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 36, Path = "/img_ds/product-9.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 36, Path = "/img_ds/product-10.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 37, Path = "/img_ds/product-12.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 37, Path = "/img_ds/product-13.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 37, Path = "/img_ds/product-15.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 38, Path = "/img_ds/product-14.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 38, Path = "/img_ds/product-19.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 38, Path = "/img_ds/product-20.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 39, Path = "/img_ds/product-29.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 39, Path = "/img_ds/product-21.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 39, Path = "/img_ds/product-22.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 39, Path = "/img_ds/product-23.jpg",Caption = "ProductImages"},


                    new ProductImage() { ProductId = 40, Path = "/img_ds/product-25.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 40, Path = "/img_ds/product-26.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 40, Path = "/img_ds/product-27.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 40, Path = "/img_ds/product-28.jpg",Caption = "ProductImages"},

                    #endregion

                    #region 41 - 48

                    new ProductImage() { ProductId = 41, Path = "/img_ds/product-42.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 41, Path = "/img_ds/product-45.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 41, Path = "/img_ds/product-47.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 41, Path = "/img_ds/product-48.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 42, Path = "/img_ds/product-44.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 42, Path = "/img_ds/product-40.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 42, Path = "/img_ds/product-41.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 43, Path = "/img_ds/product-42.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 43, Path = "/img_ds/product-45.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 43, Path = "/img_ds/product-47.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 44, Path = "/img_ds/product-48.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 44, Path = "/img_ds/product-43.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 44, Path = "/img_ds/product-45.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 45, Path = "/img_ds/product-44.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 45, Path = "/img_ds/product-46.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 45, Path = "/img_ds/product-47.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 45, Path = "/img_ds/product-48.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 45, Path = "/img_ds/product-40.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 46, Path = "/img_ds/product-41.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 46, Path = "/img_ds/product-48.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 46, Path = "/img_ds/product-40.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 47, Path = "/img_ds/product-42.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 47, Path = "/img_ds/product-43.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 47, Path = "/img_ds/product-45.jpg",Caption = "ProductImages"},

                    new ProductImage() { ProductId = 48, Path = "/img_ds/product-44.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 48, Path = "/img_ds/product-45.jpg",Caption = "ProductImages"},
                    new ProductImage() { ProductId = 48, Path = "/img_ds/product-47.jpg",Caption = "ProductImages"}

                    #endregion

                };
                await _context.ProductImages.AddRangeAsync(listProductImages);
            }
            if (!_context.ProductQuantities.Any())
            {
                var listProductQuantities = new List<ProductQuantity>()
                {
                     //Bao
                    #region Bao 25kg

                    new ProductQuantity() { SizeId = 6, ProductId = 9, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 10, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 11, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 12, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 13, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 14, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 41, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 42, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 43, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 44, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 45, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 46, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 47, Quantity = 100},
                    new ProductQuantity() { SizeId = 6, ProductId = 48, Quantity = 100},

                    #endregion

                    #region Bao Size 6cm × 22,5cm

                    new ProductQuantity() { SizeId = 2, ProductId = 36, Quantity = 100},
                    new ProductQuantity() { SizeId = 2, ProductId = 37, Quantity = 100},
                    new ProductQuantity() { SizeId = 2, ProductId = 38, Quantity = 100},
                    new ProductQuantity() { SizeId = 2, ProductId = 39, Quantity = 100},
                    new ProductQuantity() { SizeId = 2, ProductId = 40, Quantity = 100},

                    #endregion

                    //Cay

                    #region Cây 15cm x 30cm x 100cm

                    new ProductQuantity() { SizeId = 1, ProductId = 29, Quantity = 100},

                    #endregion

                     //Còn Lại
                    #region Size 60cm x 60cm

                    new ProductQuantity() { SizeId = 5, ProductId = 1, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 2, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 3, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 4, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 5, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 6, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 7, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 8, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 15, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 16, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 17, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 18, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 19, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 20, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 21, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 22, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 23, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 24, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 25, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 26, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 27, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 28, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 30, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 31, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 32, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 33, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 34, Quantity = 100},
                    new ProductQuantity() { SizeId = 5, ProductId = 35, Quantity = 100},

                    #endregion

                    #region  Size 40cm x 40cm

                    new ProductQuantity() { SizeId = 4, ProductId = 1, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 2, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 3, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 4, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 5, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 6, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 7, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 8, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 15, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 16, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 17, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 18, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 19, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 20, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 21, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 22, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 23, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 24, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 25, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 26, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 27, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 28, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 30, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 31, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 32, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 33, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 34, Quantity = 100},
                    new ProductQuantity() { SizeId = 4, ProductId = 35, Quantity = 100},

                    #endregion

                    #region  Size 30cm x 60cm

                    new ProductQuantity() { SizeId = 3, ProductId = 1, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 2, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 3, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 4, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 5, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 6, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 7, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 8, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 15, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 16, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 17, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 18, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 19, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 20, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 21, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 22, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 23, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 24, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 25, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 26, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 27, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 28, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 30, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 31, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 32, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 33, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 34, Quantity = 100},
                    new ProductQuantity() { SizeId = 3, ProductId = 35, Quantity = 100}

                    #endregion


                };
                await _context.ProductQuantities.AddRangeAsync(listProductQuantities);
            }
            await _context.SaveChangesAsync();
        }

    }
}
