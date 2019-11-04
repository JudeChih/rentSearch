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
/******/ 	// identity function for calling harmony imports with the correct context
/******/ 	__webpack_require__.i = function(value) { return value; };
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
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 160);
/******/ })
/************************************************************************/
/******/ ({

/***/ 129:
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

!function (root, factory) {
     true ? !(__WEBPACK_AMD_DEFINE_ARRAY__ = [exports], __WEBPACK_AMD_DEFINE_RESULT__ = function (exports) {
        return exports["default"] = factory();
    }.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__)) : "object" == (typeof module === "undefined" ? "undefined" : _typeof(module)) ? module.exports = factory() : root.pikadayResponsive = factory();
}(this, function () {
    if (!moment) return void console.error("You need to load moment.js in order to use pikaday-responsive.");if (!jQuery) return void console.error("You need to load jQuery in order to use pikaday-responsive.");if (!Pikaday) return void console.error("You need to load pikaday in order to use pikaday-responsive.");var defaultOptions = { format: "YYYY-MM-DD", outputFormat: "YYYY-MM-DD", checkIfNativeDate: function checkIfNativeDate() {
            return Modernizr.inputtypes.date && Modernizr.touchevents && -1 === navigator.appVersion.indexOf("Win");
        }, classes: "", placeholder: "Select a date", pikadayOptions: {}, dayOffset: 0 };return function (el, options) {
        var $container,
            $input,
            $display,
            $el = $(el),
            settings = $.extend({}, defaultOptions, options),
            obj = { pikaday: null, value: null, date: null, element: $el[0] };if (!$el.length || "INPUT" !== $el[0].tagName) return console.error("pikadayResponsive expects an input-field as its first element.", $el[0]), !1;if ($el.attr("type", "hidden"), $el.wrap("<span class='pikaday__container'></span>"), $container = $el.parent(".pikaday__container"), settings.checkIfNativeDate()) $input = $("<input type='date' class='pikaday__invisible' placeholder='" + settings.placeholder + "'/>"), $container.append($input), $display = $("<input type='text' readonly='readonly' class='pikaday__display pikaday__display--native " + settings.classes + "' placeholder='" + settings.placeholder + "' />"), $container.append($display), $input.on("change", function () {
            var val = $(this).val();
            $display.removeClass("is-empty"), val ? (obj.date = moment(val, "YYYY-MM-DD"), obj.value = obj.date.format(settings.outputFormat)) : (obj.date = null, obj.value = null, $display.addClass("is-empty")), 1 * obj.value === parseInt(obj.value, 10) && (obj.value *= 1), $el.val(obj.value), obj.date ? $display.val(obj.date.format(settings.format)) : $display.val(null), $el.trigger("change"), $el.trigger("change-date", [obj]);
        });else {
            $input = $("<input type='text' class='pikaday__display pikaday__display--pikaday " + settings.classes + "' placeholder='" + settings.placeholder + "' />"), $container.append($input);var hasSelected = !1,
                selectTimer = null;
            obj.pikaday = new Pikaday($.extend({}, settings.pikadayOptions, { field: $input[0], format: settings.format })), $input.on("change", function () {
                if (!hasSelected) {
                    hasSelected = !0, selectTimer = window.setTimeout(function () {
                        hasSelected = !1;
                    }, 10);var val = $(this).val();
                    $input.removeClass("is-empty"), val ? (obj.date = moment(val, settings.format), obj.date.add(settings.dayOffset, "day"), obj.value = obj.date.format(settings.outputFormat), $(this).val(obj.date.format(settings.format))) : (obj.date = null, obj.value = null, $input.addClass("is-empty")), 1 * obj.value === parseInt(obj.value, 10) && (obj.value *= 1), $el.val(obj.value), setTimeout(function () {
                        $el.trigger("change"), $el.trigger("change-date", [obj]);
                    }, 1);
                }
            });
        }var setDate = function setDate(date, format) {
            return date ? ("object" == (typeof date === "undefined" ? "undefined" : _typeof(date)) && "function" != typeof date.format && (date = moment(date)), "string" == typeof date && ("undefined" != typeof format && format || (format = settings.outputFormat), date = moment(date, format)), "number" == typeof date && (date = moment(date)), obj.pikaday ? obj.pikaday.setMoment(date) : ($input.val(date.format("YYYY-MM-DD")), $input.trigger("change")), date) : (obj.pikaday ? obj.pikaday.setDate(null) : ($input.val(null), $input.trigger("change")), null);
        };return $el.val() && setDate($el.val()), obj.setDate = setDate, obj;
    };
});

$elements = $(".-js-datePick");
$elements.each(function () {
    pikadayResponsive($(this), {
        format: "MMMM D, YYYY"
    });
});
$(".pikaday__display").prop("readonly", true); // Disables keyboards on touch devices... If this is needed, why are we using pikaday-responsive instead of regular pikaday?

/***/ }),

/***/ 160:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(129);


/***/ })

/******/ });