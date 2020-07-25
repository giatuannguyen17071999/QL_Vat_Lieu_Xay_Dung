using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using QL_Vat_Lieu_Xay_Dung_Services.Interfaces;

namespace QL_Vat_Lieu_Xay_Dung_WDF_Core
{
    public partial class frmHangHoa : DevExpress.XtraEditors.XtraForm
    {
        // Khai Báo Dependency Injection
        private readonly IProductService _productService;
        // Tiêm Vào Hàm Khởi Tạo
        public frmHangHoa(IProductService productService)
        {
            // Khởi Tạo Control
            InitializeComponent();
            // Nên Tiêm Ở Dưới Đây
            _productService = productService;
        }

        private void frmHangHoa_Load(object sender, EventArgs e)
        {
            datagv_HangHoa.DataSource = _productService.GetAll();
        }
    }
}