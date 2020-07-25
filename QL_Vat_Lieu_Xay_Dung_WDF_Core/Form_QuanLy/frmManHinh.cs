namespace QL_Vat_Lieu_Xay_Dung_WDF_Core.Form_QuanLy
{
    public partial class frmManHinh : DevExpress.XtraEditors.XtraForm
    {
        private static frmManHinh _instance;
        public static frmManHinh Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new frmManHinh();
                return _instance;
            }
        }
        public frmManHinh()
        {
            InitializeComponent();
        }
    }
}