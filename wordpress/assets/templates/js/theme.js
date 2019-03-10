/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 1);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/assets/js/theme.js":
/***/ (function(module, exports) {

var callback = function callback() {
    document.querySelector('.nav-button').addEventListener("click", function () {
        document.querySelector('body').classList.toggle('nav-open');
    });

    // let jumbotron = document.getElementById('');
};

if (document.readyState === "complete" || document.readyState !== "loading" && !document.documentElement.doScroll) {
    callback();
} else {
    document.addEventListener("DOMContentLoaded", callback);
}

function menu() {
    var $menu = $('.navbar-nav'),
        $item = $('.nav-item'),
        w = $(window).width(),
        //window width
    h = $(window).height(); //window height

    $(window).on('mousemove', function (e) {
        var offsetX = 0.5 - e.pageX / w,
            //cursor position X
        offsetY = 0.5 - e.pageY / h,
            //cursor position Y
        dy = e.pageY - h / 2,
            //@h/2 = center of poster
        dx = e.pageX - w / 2,
            //@w/2 = center of poster
        theta = Math.atan2(dy, dx),
            //angle between cursor and center of poster in RAD
        angle = theta * 180 / Math.PI - 90,
            //convert rad in degrees
        offsetPoster = $menu.data('offset'),
            transformPoster = 'translate3d(0, ' + -offsetX * offsetPoster + 'px, 0) rotateX(' + -offsetY * offsetPoster + 'deg) rotateY(' + offsetX * (offsetPoster * 2) + 'deg)'; //poster transform

        //get angle between 0-360
        if (angle < 0) {
            angle = angle + 360;
        }

        //poster transform
        $menu.css('transform', transformPoster);

        //parallax for each layer
        $item.each(function () {
            var $this = $(this),
                offsetLayer = $this.data('offset') || 0,
                transformLayer = 'translate3d(' + offsetX * offsetLayer + 'px, ' + offsetY * offsetLayer + 'px, 20px)';

            $this.css('transform', transformLayer);
        });
    });
}

/***/ }),

/***/ 1:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__("./resources/assets/js/theme.js");


/***/ })

/******/ });