using DevExpress.XtraEditors;

namespace QL_Vat_Lieu_Xay_Dung_WDF_Core.Form_QuanLy
{
    public partial class frmNhomQuyen : XtraForm
    {

        private static frmNhomQuyen _instance;
        public static frmNhomQuyen Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new frmNhomQuyen();
                return _instance;
            }
        }
        public frmNhomQuyen()
        {
            InitializeComponent();
        }


    }
}
