/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
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
/******/ 	// identity function for calling harmory imports with the correct context
/******/ 	__webpack_require__.i = function(value) { return value; };
/******/
/******/ 	// define getter function for harmory exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		Object.defineProperty(exports, name, {
/******/ 			configurable: false,
/******/ 			enumerable: true,
/******/ 			get: getter
/******/ 		});
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
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports) {

eval("jQuery(document).ready(function ($) {\n\n    $('.woocommerce-review-link').on('click', function (e) {\n        e.preventDefault();\n\n        var anchorToScroll = $('.woocommerce-tabs');\n        var scrollToPoint = $(anchorToScroll).offset().top;\n\n        $('body').animate({\n            scrollTop: (scrollToPoint - 60)\n        });\n    });\n\n\n    // $(\".owl-carousel\").owlCarousel({\n    //     items: 4,\n    //     loop: true\n    // });\n\n    // var owl = $('.owl-carousel');\n    // $('.custom-carousel .carousel-control-prev, #accreditations .carousel-control-prev').on('click', function (e) {\n    //     e.preventDefault();\n    //     owl.trigger('prev.owl.carousel');\n    // });\n\n    // $('.custom-carousel .carousel-control-next, #accreditations .carousel-control-next').on('click', function (e) {\n    //     e.preventDefault();\n    //     owl.trigger('next.owl.carousel');\n    // });\n\n});\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiMC5qcyIsInNvdXJjZXMiOlsid2VicGFjazovLy93b3JkcHJlc3MvYXNzZXRzL3RlbXBsYXRlcy9qcy9hZG1pbi5qcz80NTUxIl0sInNvdXJjZXNDb250ZW50IjpbImpRdWVyeShkb2N1bWVudCkucmVhZHkoZnVuY3Rpb24gKCQpIHtcblxuICAgICQoJy53b29jb21tZXJjZS1yZXZpZXctbGluaycpLm9uKCdjbGljaycsIGZ1bmN0aW9uIChlKSB7XG4gICAgICAgIGUucHJldmVudERlZmF1bHQoKTtcblxuICAgICAgICB2YXIgYW5jaG9yVG9TY3JvbGwgPSAkKCcud29vY29tbWVyY2UtdGFicycpO1xuICAgICAgICB2YXIgc2Nyb2xsVG9Qb2ludCA9ICQoYW5jaG9yVG9TY3JvbGwpLm9mZnNldCgpLnRvcDtcblxuICAgICAgICAkKCdib2R5JykuYW5pbWF0ZSh7XG4gICAgICAgICAgICBzY3JvbGxUb3A6IChzY3JvbGxUb1BvaW50IC0gNjApXG4gICAgICAgIH0pO1xuICAgIH0pO1xuXG5cbiAgICAvLyAkKFwiLm93bC1jYXJvdXNlbFwiKS5vd2xDYXJvdXNlbCh7XG4gICAgLy8gICAgIGl0ZW1zOiA0LFxuICAgIC8vICAgICBsb29wOiB0cnVlXG4gICAgLy8gfSk7XG5cbiAgICAvLyB2YXIgb3dsID0gJCgnLm93bC1jYXJvdXNlbCcpO1xuICAgIC8vICQoJy5jdXN0b20tY2Fyb3VzZWwgLmNhcm91c2VsLWNvbnRyb2wtcHJldiwgI2FjY3JlZGl0YXRpb25zIC5jYXJvdXNlbC1jb250cm9sLXByZXYnKS5vbignY2xpY2snLCBmdW5jdGlvbiAoZSkge1xuICAgIC8vICAgICBlLnByZXZlbnREZWZhdWx0KCk7XG4gICAgLy8gICAgIG93bC50cmlnZ2VyKCdwcmV2Lm93bC5jYXJvdXNlbCcpO1xuICAgIC8vIH0pO1xuXG4gICAgLy8gJCgnLmN1c3RvbS1jYXJvdXNlbCAuY2Fyb3VzZWwtY29udHJvbC1uZXh0LCAjYWNjcmVkaXRhdGlvbnMgLmNhcm91c2VsLWNvbnRyb2wtbmV4dCcpLm9uKCdjbGljaycsIGZ1bmN0aW9uIChlKSB7XG4gICAgLy8gICAgIGUucHJldmVudERlZmF1bHQoKTtcbiAgICAvLyAgICAgb3dsLnRyaWdnZXIoJ25leHQub3dsLmNhcm91c2VsJyk7XG4gICAgLy8gfSk7XG5cbn0pO1xuXG5cblxuLy8gV0VCUEFDSyBGT09URVIgLy9cbi8vIHdvcmRwcmVzcy9hc3NldHMvdGVtcGxhdGVzL2pzL2FkbWluLmpzIl0sIm1hcHBpbmdzIjoiQUFBQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBO0FBQ0E7QUFDQTtBQUNBOzs7Ozs7Ozs7Ozs7Ozs7OztBQWlCQTsiLCJzb3VyY2VSb290IjoiIn0=");

/***/ }
/******/ ]);