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
using System.ComponentModel.DataAnnotations;
using DevExpress.XtraBars;

namespace QL_Vat_Lieu_Xay_Dung_WinFormApp
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
