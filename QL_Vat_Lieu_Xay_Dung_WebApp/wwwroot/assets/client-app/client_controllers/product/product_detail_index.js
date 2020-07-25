var product_detail_ajax = function () {
    this.initialize = function () {
        registerEvents();
    }

    function registerEvents() {
        $("#btnAddToCart").on("click", function (e) {
            e.preventDefault();
            var id = parseInt($(this).data("id"));
            var sizeId = parseInt($("#ddlSizeId").val());
            $.ajax({
                url: "/ShopCart/AddToCart",
                type: "post",
                dataType: "json",
                data: {
                    productId: id,
                    quantity: parseInt($("#txtQuantity").val()),
                    size: sizeId
                },
                success: function () {
                    alert(1);
                }
            });
        });
    }
}