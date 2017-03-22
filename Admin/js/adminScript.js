$(document).ready(function () {
    $(".sidebar-toggle").click(function () {
        $(this).hide();

        $("#user-profil").show();

        $("#hide-btn").show();

        $(".container-2").css("width", "85%");


    });

    $("#hide-btn").click(function () {
        $(this).hide();

        $("#user-profil").hide();

        $(".sidebar-toggle").show();

        $(".container-2").css("width", "100%");


    });
});