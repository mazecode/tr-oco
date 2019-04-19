"use strict"

(() => {
    console.log('body')
    $(".form-inline input").val("")

    $(".input-effect input").focusout(function () {
        if ($(this).val() != "") {
            $(this).addClass("has-content")
        } else {
            $(this).removeClass("has-content")
        }
    })

    $(".tile")
        // tile mouse actions 
        .on("mouseover", function () {
            $(this)
                .children(".video-bg")
                .css({
                    transform: `scale(${$(this).attr("data-scale")})`
                })
        })
        .on("mouseout", function () {
            $(this)
                .children(".video-bg")
                .css({
                    transform: "scale(1)"
                })
        })
        .on("mousemove", function (e) {
            $(this)
                .children(".video-bg")
                .css({
                    "transform-origin": `${((e.pageX - $(this).offset().left) / $(this).width())
                        * 100}% ${((e.pageY - $(this).offset().top) / jQuery(this).height()) * 100}%`,
                })
        })
})();

TypeRocket.httpCallbacks.push(response => {
    if (response.status === 200) {
        const form = document.getElementById("form_contact")
        if (form) {
            form.reset()
        }
    }
});