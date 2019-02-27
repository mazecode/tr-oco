'use strict'


import Home from './classes/Home'

let home = new Home()

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

// async function onYouTubeIframeAPIReadys() {
//   // await home.youtube()
// console.log(window['YT'])

//   await home.initYoutube('player0', '3KtJ2yZWErQ', null, (playerDiv, options) => {
//     return new YT.Player(playerDiv.id, options)
//   })
//   await home.initYoutube('player1', 'gPEW0gZK6Ho', null, (playerDiv, options) => {
//     return new YT.Player(playerDiv.id, options)
//   })
// }

// onYouTubeIframeAPIReadys()

TypeRocket.httpCallbacks.push(response => {
    if (response.status === 200) {
        const form = document.getElementById("form_contact")
        if (form) {
            form.reset()
        }
    }
})

