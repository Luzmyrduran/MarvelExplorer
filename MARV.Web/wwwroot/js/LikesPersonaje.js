$(document).ready(function () {

    $(document).on("click", ".characterLike", function (ev) {
        ev.preventDefault();

        var url = $("#url-quitar-like").val();
        var $this = $(this);
        var id = $this.data("idcharacter");

        $.ajax({
            type: "post",
            url: url,
            dataType: "json",
            data: {
                idCharacter: id
            },
            success: function (data) {
                $this.addClass("characterNoLike");
                $this.removeClass("characterLike");
            },
            error: function (err) {
                alert("Ocurrio un error");
            }
        });

    });

    $(document).on("click", ".characterNoLike", function (ev) {
        ev.preventDefault();

        var url = $("#url-dar-like").val();
        var $this = $(this);
        var id = $this.data("idcharacter");

        $.ajax({
            type: "post",
            url: url,
            dataType: "json",
            data: {
                idCharacter: id
            },
            success: function (data) {
                $this.addClass("characterLike");
                $this.removeClass("characterNoLike");
            },
            error: function (err) {
                alert("Ocurrio un error");
            }
        });

    });

});