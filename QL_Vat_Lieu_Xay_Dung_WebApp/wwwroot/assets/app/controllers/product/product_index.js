﻿var product_ajax = function() {
    var quantitiesManagement = new QuantitiesManagementAjax();
    var imagesManagement = new ImagesManagementAjax();
    this.initialize = function() {
        loadCategory();
        loadData();
        registerEvents();
        registerCKEditor();
        quantitiesManagement.initialize();
        imagesManagement.initialize();
    }

    function registerCKEditor() {
        CKEDITOR.replace("txtContent", {});
        //Fix: cannot click on element ck in modal
        $.fn.modal.Constructor.prototype.enforceFocus = function () {
            $(document)
                .off("focusin.bs.modal") // guard against infinite focus loop
                .on("focusin.bs.modal", $.proxy(function (e) {
                    if (
                        this.$element[0] !== e.target && !this.$element.has(e.target).length
                            // CKEditor compatibility fix start.
                            && !$(e.target).closest(".cke_dialog, .cke").length
                        // CKEditor compatibility fix end.
                    ) {
                        this.$element.trigger("focus");
                    }
                }, this));
        };
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////
    function registerEvents() {
        //Init validation
        $("#frmMaintainance").validate({
            errorClass: "red",
            ignore: [],
            lang: "vi",
            rules: {
                txtNameM: { required: true },
                ddlCategoryIdM: { required: true },
                txtPriceM: {
                    required: true,
                    number: true
                }
            }
        });
        $("#ddlShowPage").on("change", function() {
                app.configs.pageSize = $(this).val();
                app.configs.pageIndex = 1;
                loadData(true);
            });
        $("#btnSearch").click(function (e) {
            e.preventDefault();
            loadData();

        });
        $("#txtKeyword").keypress(function (e) {
            if (e.which === 13) {
                e.preventDefault();
                loadData();
            }
        });
        $("#btnCreate").on("click", function () {
            resetFormMaintainance();
            initTreeDropDownCategory();
            $("#modal-add-edit").modal("show");

        });
        $("body").on("click", ".btn-edit", function (e) {
            e.preventDefault();
            var that = $(this).data("id");
            $.ajax({
                type: "GET",
                url: "/Admin/Product/GetById",
                data: { id: that },
                dataType: "json",
                beforeSend: function () {
                    app.startLoading();
                },
                success: function (response) {
                    var data = response;
                    $("#hidIdM").val(data.Id);
                    $("#txtNameM").val(data.Name);
                    initTreeDropDownCategory(data.CategoryId);
                    $("#txtDescM").val(data.Description);
                    $("#txtUnitM").val(data.Unit);
                    $("#txtPriceM").val(data.Price);
                    $("#txtOriginalPriceM").val(data.OriginalPrice);
                    $("#txtPromotionPriceM").val(data.PromotionPrice);
                    $("#txtImage").val(data.ThumbnailImage);
                    $("#hidDateCreated").val(data.DateCreated);
                    $("#txtTagM").val(data.Tags);
                    $("#txtMetakeywordM").val(data.SeoKeywords);
                    $("#txtMetaDescriptionM").val(data.SeoDescription);
                    $("#txtSeoPageTitleM").val(data.SeoPageTitle);
                    $("#txtSeoAliasM").val(data.SeoAlias);


                    CKEDITOR.instances["txtContent"].setData(data.Content);
                    $("#ckStatusM").prop("checked", data.Status === 1);
                    $("#ckHotM").prop("checked", data.HotFlag);
                    $("#ckShowHomeM").prop("checked", data.HomeFlag);
                    $("#modal-add-edit").modal("show");
                    app.stopLoading();

                },
                error: function () {
                    app.notify("Có lỗi xảy ra", "error");
                    app.stopLoading();
                }
            });
        });
        $("body").on("click", ".btn-delete", function (e) {
            e.preventDefault();
            var that = $(this).data("id");
            app.confirm("Are you sure to delete?", function () {
                $.ajax({
                    type: "POST",
                    url: "/Admin/Product/Delete",
                    data: { id: that },
                    dataType: "json",
                    beforeSend: function () {
                        app.startLoading();
                    },
                    success: function () {
                        app.notify("Xóa Thành Công", "success");
                        app.stopLoading();
                        loadData();
                    },
                    error: function () {
                        app.notify("Có lỗi trong quá trình xóa", "error");
                        app.stopLoading();
                    }
                });
            });
        });
        $("#btnSave").on("click", function (e) {
              if ($("#frmMaintainance").valid()) {
                e.preventDefault();
                var id = $("#hidIdM").val();
                var name = $("#txtNameM").val();
                var categoryId = $("#ddlCategoryIdM").combotree("getValue");
                var description = $("#txtDescM").val();
                var unit = $("#txtUnitM").val();
                var price = $("#txtPriceM").val();
                var originalPrice = $("#txtOriginalPriceM").val();
                var promotionPrice = $("#txtPromotionPriceM").val();
                var dateCreated = $("#hidDateCreated").val();
                var image = $("#txtImage").val();
                var tags = $("#txtTagM").val();
                var seoKeyword = $("#txtMetakeywordM").val();
                var seoMetaDescription = $("#txtMetaDescriptionM").val();
                var seoPageTitle = $("#txtSeoPageTitleM").val();
                var seoAlias = $("#txtSeoAliasM").val();

                var content = CKEDITOR.instances["txtContent"].getData();


                var status = $("#ckStatusM").prop("checked") === true ? 1 : 0;
                var hot = $("#ckHotM").prop("checked");
                var showHome = $("#ckShowHomeM").prop("checked");

                $.ajax({
                    type: "POST",
                    url: "/Admin/Product/SaveEntity",
                    data: {
                        Id: id,
                        Name: name,
                        CategoryId: categoryId,
                        Image: image,
                        Price: price,
                        OriginalPrice: originalPrice,
                        PromotionPrice: promotionPrice,
                        Description: description,
                        Content: content,
                        HomeFlag: showHome,
                        HotFlag: hot,
                        Tags: tags,
                        Unit: unit,
                        DateCreated: dateCreated,
                        Status: status,
                        SeoPageTitle: seoPageTitle,
                        SeoAlias: seoAlias,
                        SeoKeywords: seoKeyword,
                        SeoDescription: seoMetaDescription
                    },
                    dataType: "json",
                    beforeSend: function () {
                        app.startLoading();
                    },
                    success: function () {
                        app.notify("Cập nhật sản phẩm thành công", "success");
                        $("#modal-add-edit").modal("hide");
                        resetFormMaintainance();

                        app.stopLoading();
                        loadData(true);
                    },
                    error: function () {
                        app.notify("Có lỗi trong quá trình lưu sản phẩm", "error");
                        app.stopLoading();
                    }
                });
                return false;
            }

              return false;
          });
        $("#btnSelectImg").on("click", function () {
            $("#fileInputImage").click();
        });
        $("#fileInputImage").on("change", function () {
            var fileUpload = $(this).get(0);
            var files = fileUpload.files;
            var data = new FormData();
            for (var i = 0; i < files.length; i++) {
                data.append(files[i].name, files[i]);
            }
            $.ajax({
                type: "POST",
                url: "/Admin/UploadImageFile/UploadImage",
                contentType: false,
                processData: false,
                data: data,
                success: function (path) {
                    $("#txtImage").val(path);
                    app.notify("Tải ảnh lên thành công", "success");

                },
                error: function () {
                    app.notify("Có lỗi trong quá trình tải ảnh!", "error");
                }
            });
        });
    }
    ////////////////////////////////////////////////////////////////////////////////////////////////////





    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    function initTreeDropDownCategory(selectedId) {
        $.ajax({
            url: "/Admin/ProductCategory/GetAll",
            type: "GET",
            dataType: "json",
            async: false,
            success: function (response) {
                var data = [];
                $.each(response, function (i, item) {
                    data.push({
                        id: item.Id,
                        text: item.Name,
                        parentId: item.ParentId,
                        sortOrder: item.SortOrder
                    });
                });
                var arr = app.unflattern(data);
                $("#ddlCategoryIdM").combotree({
                    data: arr
                });
                if (selectedId != undefined) {
                    $("#ddlCategoryIdM").combotree("setValue", selectedId);
                }
            }
        });
    }
    function resetFormMaintainance() {
        $("#hidIdM").val(0);
        $("#txtNameM").val("");
        initTreeDropDownCategory("");
        var today = new Date();
        var date = today.getFullYear()+"-"+(today.getMonth()+1)+"-"+today.getDate();
        $("#hidDateCreated").val(date);
        $("#txtDescM").val("");
        $("#txtUnitM").val("");

        $("#txtPriceM").val("0");
        $("#txtOriginalPriceM").val("");
        $("#txtPromotionPriceM").val("");

        $("#image").val("");

        $("#txtTagM").val("");
        $("#txtMetakeywordM").val("");
        $("#txtMetaDescriptionM").val("");
        $("#txtSeoPageTitleM").val("");
        $("#txtSeoAliasM").val("");

        CKEDITOR.instances["txtContent"].setData("");
        $("#ckStatusM").prop("checked", true);
        $("#ckHotM").prop("checked", false);
        $("#ckShowHomeM").prop("checked", false);

    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////



    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    function loadCategory() {
        $.ajax({
            type: "GET",
            url: "/Admin/ProductCategory/GetAll",
            dataType: "json",
            success: function (response) {
                var tmp = "<option value = ''>=== Select Category ===</option>";
                $.each(response,
                    function(i, item) {
                        tmp += "<option value='" + item.Id + "'>" + item.Name + "</option>";
                    });
                $("#ddlCategorySearch").html(tmp);
            },
            error: function(response) {
                console.log(response);
                app.notify("Không thể tải danh mục", "error");
            }
        });
    }
    function loadData(isPageChanged) {
        var template = $("#table-template").html();
        var tmp = "";
        $.ajax({
            type: "GET",
            data:{
                categoryId: $("ddlCategorySearch").val(),
                keyword:$("#txtKeyword").val(),
                page: app.configs.pageIndex,
                pageSize:app.configs.pageSize
            },
            url: "/Admin/Product/GetAllPaging",
            dataType: "json",
            success: function (response) {
                console.log(response);

                $.each(response.ResultList,
                    function(i, item) {
                        console.log("lay data"+item);
                        tmp += Mustache.render(template,
                            {
                                Id: item.Id,
                                Name: item.Name,
                                Image: item.Image == null ? '<img src="img.jpg" width=25' : '<img src="' + item.Image + '" width=25 />',
                                CategoryName: item.ProductCategory.Name,
                                Price: app.formatNumber(item.Price, 0),
                                CreatedDate: app.dateFormatJson(item.DateCreated),
                                Status: app.getStatus(item.Status)
                            });
                        $("#lblTotalRecords").text(response.RowCount);
                        if (tmp !== "") {
                            $("#tbl-content").html(tmp);
                        }
                        wrapPaging(response.RowCount,function(){
                            loadData();
                        },isPageChanged);
                    });
            },
            error: function(response) {
                console.log(response);
                app.notify("Không thể tải dữ liệu", "error");
            }
        });
    }
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    function wrapPaging(recordCount, callBack, changePageSize) {
        var totalsize = Math.ceil(recordCount / app.configs.pageSize);
        //Unbind pagination if it existed or click change pagesize
        if ($("#paginationUL a").length === 0 || changePageSize === true) {
            $("#paginationUL").empty();
            $("#paginationUL").removeData("twbs-pagination");
            $("#paginationUL").unbind("page");
        }
        //Bind Pagination Event
        $("#paginationUL").twbsPagination({
            totalPages: totalsize,
            visiblePages: 7,
            first: "Đầu",
            prev: "Trước",
            next: "Tiếp",
            last: "Cuối",
            onPageClick: function (event, p) {
                app.configs.pageIndex = p;
                setTimeout(callBack(), 200);
            }
        });
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

}