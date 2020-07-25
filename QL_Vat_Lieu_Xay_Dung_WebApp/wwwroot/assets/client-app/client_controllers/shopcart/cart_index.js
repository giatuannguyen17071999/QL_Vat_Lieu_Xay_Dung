var ProductAjax = function () {
   var cachedObj = {
        sizes: []
    }
    this.initialize = function () {
    $.when(loadSizes())
    .then(function(){
            loadData();
            });

        registerEvents();
    }

    function registerEvents() {
        $("body").on("click", ".btn-delete", function (e) {
            e.preventDefault();
            var id = $(this).data("id");
            $.ajax({
                url: "/ShopCart/RemoveFromCart",
                type: "post",
                data: {
                    productId: id
                },
                success: function () {
                    client_app.notify("Removing product is successful.", "success");
                    loadHeaderCart();
                    loadData();
                }
            });
        });
        $("body").on("keyup", ".txtQuantity", function (e) {
            e.preventDefault();
            var id = $(this).data("id");
            var q = $(this).val();
            if (q > 0) {
                $.ajax({
                    url: "/ShopCart/UpdateCart",
                    type: "post",
                    data: {
                        productId: id,
                        quantity: q
                    },
                    success: function () {
                        client_app.notify("Update quantity is successful", "success");
                        loadHeaderCart();
                        loadData();
                    }
                });
            } else {
                client_app.notify("Your quantity is invalid", "error");
            }

        });


        $("body").on("change", ".ddlSizeId", function (e) {
            e.preventDefault();
            var id = parseInt($(this).closest("tr").data("id"));
            var sizeId = $(this).val();
            var q = parseInt($(this).closest("tr").find(".txtQuantity").first().val());
            if (q > 0) {
                $.ajax({
                    url: "/ShopCart/UpdateCart",
                    type: "post",
                    data: {
                        productId: id,
                        quantity: q,
                        size:sizeId
                    },
                    success: function () {
                        client_app.notify("Update quantity is successful", "success");
                        loadHeaderCart();
                        loadData();
                    }
                });
            } else {
                client_app.notify("Your quantity is invalid", "error");
            }

        });
        $("#btnClearAll").on("click", function (e) {
            e.preventDefault();
            $.ajax({
                url: "/ShopCart/ClearCart",
                type: "post",
                success: function () {
                    client_app.notify("Clear cart is successful", "success");
                    loadHeaderCart();
                    loadData();
                }
            });
        });
    }
    function loadSizes() {
        return $.ajax({
            type: "GET",
            url: "/ShopCart/GetSizes",
            dataType: "json",
            success: function (response) {
                cachedObj.sizes = response;
            },
            error: function () {
                client_app.notify("Has an error in progress", "error");
            }
        });
    }
    function getSizeOptions(selectedId) {
        var sizes = "<select class='form-control ddlSizeId'> <option value='0'></option>";
        $.each(cachedObj.sizes, function (i, size) {
            if (selectedId === size.Id)
                sizes += '<option value="' + size.Id + '" selected="select">' + size.Name + "</option>";
            else
                sizes += '<option value="' + size.Id + '">' + size.Name + "</option>";
        });
        sizes += "</select>";
        return sizes;
    }
    function loadHeaderCart() {
        $("#headerCart").load("/AjaxContent/HeaderCart");
    }
    function loadData() {
        $.ajax({
            url: "/ShopCart/GetCart",
            type: "GET",
            dataType: "json",
            success: function (response) {
                var template = $("#template-cart").html();
                var render = "";
                var totalAmount = 0;
                $.each(response, function (i, item) {
                    render += Mustache.render(template,
                        {
                            ProductId: item.Product.Id,
                            ProductName: item.Product.Name,
                            Image: item.Product.Image,
                            Price: client_app.formatNumber(item.Price, 0),
                            Quantity: item.Quantity,
                            Sizes:getSizeOptions(item.Size == null? "": item.Size.Id),
                            Amount: client_app.formatNumber(item.Price * item.Quantity, 0),
                            Url: "/" + item.Product.SeoAlias + "-p." + item.Product.Id + ".html"
                        });
                    totalAmount += item.Price * item.Quantity;
                });
                $("#lblTotalAmount").text(client_app.formatNumber(totalAmount, 0));
                if (render !== "")
                    $("#table-cart-content").html(render);
                else
                    $("#table-cart-content").html("You have no product in cart");
            }
        });
        return false;
    }
}