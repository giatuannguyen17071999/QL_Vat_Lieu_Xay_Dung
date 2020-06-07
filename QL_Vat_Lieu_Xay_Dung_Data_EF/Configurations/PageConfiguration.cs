using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using QL_Vat_Lieu_Xay_Dung_Data.Entities;
using QL_Vat_Lieu_Xay_Dung_Data_EF.Extensions;

namespace QL_Vat_Lieu_Xay_Dung_Data_EF.Configurations
{
    public class PageConfiguration: DbEntityConfiguration<Page>
    {
        public override void Configure(EntityTypeBuilder<Page> entity)
        {
            entity.HasKey(e => e.Id);
            entity.Property(e => e.Id).HasMaxLength(255).IsRequired();
        }
    }
}
