using DevExpress.XtraEditors;

namespace QL_Vat_Lieu_Xay_Dung_WDF_Core.Form_QuanLy
{
    public partial class frmPhanQuyen : XtraForm
    {
        
        private static frmPhanQuyen _instance;
        public static frmPhanQuyen Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new frmPhanQuyen();
                return _instance;
            }
        }
        public frmPhanQuyen()
        {
            InitializeComponent();
        }
    }
}
