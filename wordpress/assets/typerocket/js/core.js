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
/******/ 	return __webpack_require__(__webpack_require__.s = 18);
/******/ })
/************************************************************************/
/******/ (Array(18).concat([
/* 18 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(19);


/***/ }),
/* 19 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__tooling_booyah_js__ = __webpack_require__(20);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__tooling_builder_js__ = __webpack_require__(21);



window.Booyah = __WEBPACK_IMPORTED_MODULE_0__tooling_booyah_js__["a" /* default */];
__webpack_require__(22);

__webpack_require__(23);
__webpack_require__(24);
__webpack_require__(25);
__webpack_require__(26);
__webpack_require__(27);
__webpack_require__(28);
__webpack_require__(29);
__webpack_require__(30);
__webpack_require__(31);
__webpack_require__(32);
__webpack_require__(33);
Object(__WEBPACK_IMPORTED_MODULE_1__tooling_builder_js__["a" /* default */])();

/***/ }),
/* 20 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return Booyah; });
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var Booyah = function () {
    function Booyah() {
        _classCallCheck(this, Booyah);

        this.templateTagKeys = [];
        this.templateTagValues = [];
        this.templateArray = [];
        this.templateString = '';
    }

    _createClass(Booyah, [{
        key: 'ready',
        value: function ready() {
            this.templateString = this.templateArray.join('');
            this.replaceTags();
            return this.templateString;
        }
    }, {
        key: 'addTag',
        value: function addTag(key, value) {
            this.templateTagKeys.push(key);
            this.templateTagValues.push(value);
            return this;
        }
    }, {
        key: 'addTemplate',
        value: function addTemplate(string) {
            this.templateArray.push(string);
            return this;
        }
    }, {
        key: 'replaceTags',
        value: function replaceTags() {
            var i = void 0,
                replaceTag = void 0,
                tagCount = void 0,
                withThisValue = void 0;
            tagCount = this.templateTagKeys.length;
            i = 0;
            while (tagCount > i) {
                replaceTag = this.templateTagKeys[i];
                withThisValue = this.templateTagValues[i];
                this.templateString = this.templateString.replace(new RegExp(replaceTag), withThisValue);
                i++;
            }
        }
    }]);

    return Booyah;
}();



/***/ }),
/* 21 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = trBuilder;
function trBuilder() {
    jQuery(document).ready(function ($) {
        var initComponent, tr_builder_toggle;
        tr_builder_toggle = $('#tr_page_type_toggle');
        if (tr_builder_toggle.length > 0) {
            if ($('#tr_page_builder_control').hasClass('builder-active')) {
                $('#builderStandardEditor').hide();
            } else {
                $('#tr_page_builder').hide();
            }
            $(tr_builder_toggle).on('click', 'a', function (e) {
                var checkbox, other, that;
                e.preventDefault();
                that = $(this);
                other = $(that.siblings()[0]);
                checkbox = $('#builderSelectRadio input')[1];
                that.addClass('builder-active button-primary');
                other.removeClass('builder-active button-primary');
                $(that.attr('href')).show();
                $(other.attr('href')).hide();
                if (that.attr('id') === 'tr_page_builder_control') {
                    $(checkbox).attr('checked', 'checked');
                } else {
                    $(checkbox).removeAttr('checked');
                    $('#content-html').click();
                    $('#content-tmce').click();
                }
            });
        }
        if ($('.tr-components').length > 0) {
            initComponent = function initComponent(data, fields) {
                var $items_list, $repeater_fields, $sortables, callbacks, ri;
                callbacks = TypeRocket.repeaterCallbacks;
                ri = 0;
                while (callbacks.length > ri) {
                    if (typeof callbacks[ri] === 'function') {
                        callbacks[ri](data);
                    }
                    ri++;
                }
                if ($.isFunction($.fn.sortable)) {
                    $sortables = fields.find('.tr-gallery-list');
                    $items_list = fields.find('.tr-items-list');
                    $repeater_fields = fields.find('.tr-repeater-fields');
                    if ($sortables.length > 0) {
                        $sortables.sortable();
                    }
                    if ($repeater_fields.length > 0) {
                        $repeater_fields.sortable({
                            connectWith: '.tr-repeater-group',
                            handle: '.repeater-controls'
                        });
                    }
                    if ($items_list.length > 0) {
                        $items_list.sortable({
                            connectWith: '.item',
                            handle: '.move'
                        });
                    }
                }
            };
            $('.typerocket-container').on('click', '.tr-builder-add-button', function (e) {
                var overlay, select;
                e.preventDefault();
                select = $(this).next();
                overlay = $('<div>').addClass('tr-builder-select-overlay').on('click', function () {
                    $(this).remove();
                    return $('.tr-builder-select').fadeOut();
                });
                $('body').append(overlay);
                return select.fadeIn();
            });
            $('.typerocket-container').on('click', '.tr-builder-component-control', function (e) {
                var component, components, frame, id, index;
                e.preventDefault();
                $(this).parent().children().removeClass('active');
                id = $(this).addClass('active').parent().data('id');
                index = $(this).index();
                frame = $('#frame-' + id);
                components = frame.children();
                components.removeClass('active');
                component = components[index];
                return $(component).addClass('active');
            });
            $('.typerocket-container').on('click', '.tr-remove-builder-component', function (e) {
                var component, components, control, frame, id, index;
                e.preventDefault();
                if (confirm('Remove component?')) {
                    control = $(this).parent();
                    control.parent().children().removeClass('active');
                    id = control.parent().data('id');
                    index = $(this).parent().index();
                    frame = $('#frame-' + id);
                    components = frame.children();
                    component = components[index];
                    $(component).remove();
                    return control.remove();
                }
            });
            $('.tr-components').sortable({
                start: function start(e, ui) {
                    return ui.item.startPos = ui.item.index();
                },
                update: function update(e, ui) {
                    var builder, components, frame, id, index, old, select;
                    select = ui.item.parent();
                    id = select.data('id');
                    frame = $('#frame-' + id);
                    components = frame.children().detach();
                    index = ui.item.index();
                    old = ui.item.startPos;
                    builder = components.splice(old, 1);
                    components.splice(index, 0, builder[0]);
                    return frame.append(components);
                }
            });
            $('.typerocket-container').on('click', '.builder-select-option', function (e) {
                var $components, $fields, $select, $that, folder, form_group, group, img, mxid, type, url;
                $that = $(this);
                $that.parent().fadeOut();
                $('.tr-builder-select-overlay').remove();
                if (!$that.hasClass('disabled')) {
                    mxid = $that.data('id');
                    folder = $that.data('folder');
                    group = $that.data('group');
                    img = $that.data('thumbnail');
                    $fields = $('#frame-' + mxid);
                    $components = $('#components-' + mxid);
                    $select = $('ul[data-mxid="' + mxid + '"]');
                    type = $that.data('value');
                    $that.addClass('disabled');
                    url = trHelpers.site_uri + '/tr_builder_api/v1/' + group + '/' + type + '/' + folder;
                    form_group = $select.data('group');
                    $.ajax({
                        url: url,
                        method: 'POST',
                        dataType: 'html',
                        data: {
                            form_group: form_group
                        },
                        success: function success(data) {
                            var $active_components, $active_fields, html, textLabel, options, ri;
                            data = $(data);
                            $active_fields = $fields.children('.active');
                            $active_components = $components.children('.active');
                            $fields.children().removeClass('active');
                            $components.children().removeClass('active');
                            textLabel = $that.text();
                            if (img) {
                                img = '<img src="' + img + '" />';
                            }

                            options = {
                                data: data,
                                textLabel: textLabel,
                                img: img
                            };

                            ri = 0;

                            while (TypeRocket.builderCallbacks.length > ri) {
                                if (typeof TypeRocket.builderCallbacks[ri] === 'function') {
                                    TypeRocket.builderCallbacks[ri](options);
                                }
                                ri++;
                            }

                            html = '<li class="active tr-builder-component-control">' + options.img + '<span class="tr-builder-component-title">' + options.textLabel + '</span><span class="remove tr-remove-builder-component"></span>';

                            if ($active_components.length > 0 && $active_fields.length > 0) {
                                options.data.insertAfter($active_fields).addClass('active');
                                $active_components.after(html);
                            } else {
                                options.data.prependTo($fields).addClass('active');
                                $components.prepend(html);
                            }
                            initComponent(options.data, $fields);
                            $that.removeClass('disabled');
                        },
                        error: function error(jqXHR) {
                            $that.val('Try again - Error ' + jqXHR.status).removeAttr('disabled', 'disabled');
                        }
                    });
                }
            });
        }
    });
}

/***/ }),
/* 22 */
/***/ (function(module, exports) {

;window.TypeRocket = {
  httpCallbacks: [],
  repeaterCallbacks: [],
  lastSubmittedForm: false,
  redactorSettings: {},
  builderCallbacks: []
};

/***/ }),
/* 23 */
/***/ (function(module, exports) {

;window.trUtil = {};
window.trUtil.delay = function () {
    var timer;
    timer = 0;
    return function (callback, ms) {
        clearTimeout(timer);
        timer = setTimeout(callback, ms);
    };
}();

/***/ }),
/* 24 */
/***/ (function(module, exports) {

jQuery(document).ready(function ($) {
    var $trContainer, add_color_picker, add_date_picker, add_editor, add_sorting, editorHeight, repeaterClone, tr_max;
    editorHeight = function editorHeight() {
        $('.wp-editor-wrap').each(function () {
            var editor_iframe;
            editor_iframe = $(this).find('iframe');
            if (editor_iframe.height() < 30) {
                editor_iframe.css({
                    'height': 'auto'
                });
            }
        });
    };
    editorHeight();
    add_sorting = function add_sorting(obj) {
        var $items_list, $repeater_fields, $gallerySort;
        if ($.isFunction($.fn.sortable)) {
            $gallerySort = $(obj).find('.tr-gallery-list');
            $sortableLinks = $(obj).find('.tr-links-selected');
            $items_list = $(obj).find('.tr-items-list');
            $repeater_fields = $(obj).find('.tr-repeater-fields');
            if ($gallerySort.length > 0) {
                $gallerySort.sortable({
                    placeholder: "tr-sortable-placeholder",
                    forcePlaceholderSize: true
                });
            }
            if ($sortableLinks.length > 0) {
                $sortableLinks.sortable({
                    placeholder: "tr-sortable-placeholder",
                    forcePlaceholderSize: true
                });
            }
            if ($repeater_fields.length > 0) {
                $repeater_fields.sortable({
                    connectWith: '.tr-repeater-group',
                    handle: '.repeater-controls',
                    placeholder: "tr-sortable-placeholder",
                    forcePlaceholderSize: true
                });
            }
            if ($items_list.length > 0) {
                $items_list.sortable({
                    connectWith: '.item',
                    handle: '.move',
                    placeholder: "tr-sortable-placeholder",
                    forcePlaceholderSize: true
                });
            }
        }
    };
    add_date_picker = function add_date_picker(obj) {
        if ($.isFunction($.fn.datepicker)) {
            $(obj).find('.date-picker[name]').each(function () {
                var date_format = $(this).data('format');
                var date_format_picker = 'dd/mm/yy';
                if (date_format) {
                    date_format_picker = date_format;
                }

                $(this).datepicker({
                    beforeShow: function beforeShow(input, inst) {
                        $('#ui-datepicker-div').addClass('typerocket-datepicker');
                    },
                    dateFormat: date_format_picker
                });
            });
        }
    };
    add_tabs = function add_tabs(obj) {
        obj.find('.tr-tabbed-top:not(.tr-repeater-group-template .tr-tabbed-top)').each(function () {
            $(this).find('> .tabbed-sections > .tr-tabs > li').each(function (tab_index) {
                var old_uid, new_uid, $a_tag, $tab_panel;
                old_uid = $(this).data('uid');
                new_uid = new Date().getTime() + 'rtabuid';
                $a_tag = $(this).find('a');
                $tab_panel = $($(this).parent().parent().next().children()[tab_index]);
                $(this).attr('id', $(this).attr('id').replace(old_uid, new_uid));
                $a_tag.attr('href', $a_tag.attr('href').replace(old_uid, new_uid));
                $tab_panel.attr('id', $tab_panel.attr('id').replace(old_uid, new_uid));

                $(this).click(function (e) {
                    var $section;
                    $(this).addClass('active').siblings().removeClass('active');
                    $section = $($(this).find('a').attr('href'));
                    $($section).addClass('active').siblings().removeClass('active');
                    editorHeight();
                    e.preventDefault();
                });
            });
        });
    };
    add_color_picker = function add_color_picker(obj) {
        if ($.isFunction($.fn.wpColorPicker)) {
            $(obj).find('.color-picker[name]').each(function () {
                var pal, settings;
                pal = $(this).attr('id') + '_color_palette';
                settings = {
                    palettes: window[pal]
                };
                $(this).wpColorPicker(settings);
            });
        }
    };
    add_editor = function add_editor(obj) {
        var redactorSettings;
        if ($.isFunction($.fn.redactor)) {
            redactorSettings = {
                formatting: ['p', 'h1', 'h2', 'h3', 'h4', 'h5', 'blockquote'],
                buttons: ['formatting', 'bold', 'italic', 'deleted', 'unorderedlist', 'orderedlist', 'outdent', 'indent', 'link', 'alignment', 'horizontalrule', 'html']
            };
            if (!$.isEmptyObject(window.TypeRocket.redactorSettings)) {
                redactorSettings = window.TypeRocket.redactorSettings;
            }
            $(obj).find('.typerocket-editor[name]').each(function () {
                $(this).redactor(redactorSettings);
            });
        }
    };
    $trContainer = $('.typerocket-container');
    add_sorting($trContainer);
    add_date_picker($trContainer);
    add_color_picker($trContainer);
    add_editor($trContainer);
    TypeRocket.repeaterCallbacks.push(add_date_picker);
    TypeRocket.repeaterCallbacks.push(add_color_picker);
    TypeRocket.repeaterCallbacks.push(add_editor);
    TypeRocket.repeaterCallbacks.push(add_tabs);

    /*
    ==========================================================================
    init tinymce on builder/repeater add
    ==========================================================================
    */
    TypeRocket.repeaterCallbacks.push(function ($template) {
        var $tinymce = $template.find('.wp-editor-area');
        $tinymce.each(function () {
            tinyMCE.execCommand('mceAddEditor', false, $(this).attr('id'));
        });
    });

    $trContainer.on('input keyup', '.redactor-editor', function () {
        var $textarea = $(this).siblings('textarea');
        $textarea.trigger('change');
    });
    $trContainer.on('blur keyup change', 'input[maxlength], textarea[maxlength]', function () {
        var $that;
        $that = $(this);

        if ($that.parent().hasClass('redactor-box')) {
            $that = $that.parent();
        }

        $that.next().find('span').text(tr_max.len(this));
    });
    $('.tr-tabs li').each(function () {
        $(this).click(function (e) {
            var section;
            $(this).addClass('active').siblings().removeClass('active');
            section = $(this).find('a').attr('href');
            $(section).addClass('active').siblings().removeClass('active');
            editorHeight();
            e.preventDefault();
        });
    });
    $('.contextual-help-tabs a').click(function () {
        editorHeight();
    });
    repeaterClone = {
        init: function init() {
            var obj;
            obj = this;
            $(document).on('click', '.tr-repeater .controls .add', function () {
                var $fields_div, $group_template, data_name, data_name_filtered, dev_notes, hash, replacement_id, ri;
                $group_template = $($(this).parent().parent().next().clone()).removeClass('tr-repeater-group-template').addClass('tr-repeater-group');
                hash = new Date().getTime();
                replacement_id = $group_template.data('id');
                dev_notes = $group_template.find('.dev .field span');
                data_name = $group_template.find('[data-name]');
                data_input = $group_template.find('[data-input]');
                data_trid = $group_template.find('[data-trid]');
                data_trfor = $group_template.find('[data-trfor]');
                data_name_filtered = $group_template.find('.tr-repeater-group-template [data-name]');
                $(data_name).each(function () {
                    var name;
                    name = obj.nameParse($(this).data('name'), hash, replacement_id);
                    $(this).attr('name', name);
                    $(this).attr('data-name', null);
                });
                $(data_input).each(function () {
                    var name;
                    name = obj.nameParse($(this).data('input'), hash, replacement_id);
                    $(this).attr('data-input', name);
                });
                $(data_trid).each(function () {
                    var name;
                    name = obj.nameParse($(this).data('trid'), hash, replacement_id);
                    $(this).attr('id', name.split('.').join('_'));
                });
                $(data_trfor).each(function () {
                    var name;
                    name = obj.nameParse($(this).data('trfor'), hash, replacement_id);
                    $(this).attr('for', name.split('.').join('_'));
                });
                $(dev_notes).each(function () {
                    var name;
                    name = obj.nameParse($(this).html(), hash, replacement_id);
                    $(this).html(name);
                });
                $(data_name_filtered).each(function () {
                    $(this).attr('data-name', $(this).attr('name'));
                    $(this).attr('name', null);
                });
                add_sorting($group_template);
                ri = 0;
                while (TypeRocket.repeaterCallbacks.length > ri) {
                    if (typeof TypeRocket.repeaterCallbacks[ri] === 'function') {
                        TypeRocket.repeaterCallbacks[ri]($group_template);
                    }
                    ri++;
                }
                $fields_div = $(this).parent().parent().next().next();
                $group_template.prependTo($fields_div).hide().delay(10).slideDown(300).scrollTop('100%');
            });
            $(document).on('click', '.tr-repeater .repeater-controls .remove', function (e) {
                $(this).parent().parent().slideUp(300, function () {
                    $(this).remove();
                });
                e.preventDefault();
            });
            $(document).on('click', '.tr-repeater .repeater-controls .collapse', function (e) {
                var $group;
                $group = $(this).parent().parent();
                if ($group.hasClass('tr-repeater-group-collapsed') || $group.height() === 90) {
                    $group.removeClass('tr-repeater-group-collapsed');
                    $group.addClass('tr-repeater-group-expanded');
                    $group.attr('style', '');
                } else {
                    $group.removeClass('tr-repeater-group-expanded');
                    $group.addClass('tr-repeater-group-collapsed');
                }
                e.preventDefault();
            });
            $(document).on('click', '.tr-repeater .controls .tr_action_collapse', function (e) {
                var $collapse, $groups_group;
                $groups_group = $(this).parent().parent().next().next();
                if ($(this).hasClass('tr-repeater-expanded')) {
                    $(this).val($(this).data('expand'));
                    $(this).addClass('tr-repeater-contacted');
                    $(this).removeClass('tr-repeater-expanded');
                    $groups_group.find('> .tr-repeater-group').animate({
                        height: '90px'
                    }, 200);
                } else {
                    $(this).val($(this).data('contract'));
                    $(this).addClass('tr-repeater-expanded');
                    $(this).removeClass('tr-repeater-contacted');
                    $groups_group.find('> .tr-repeater-group').attr('style', '');
                }
                $collapse = $(this).parent().parent().next().next();
                if ($collapse.hasClass('tr-repeater-collapse')) {
                    $collapse.toggleClass('tr-repeater-collapse');
                    $collapse.find('> .tr-repeater-group').removeClass('tr-repeater-group-collapsed').attr('style', '');
                } else {
                    $collapse.toggleClass('tr-repeater-collapse');
                    $collapse.find('> .tr-repeater-group').removeClass('tr-repeater-group-expanded');
                }
                e.preventDefault();
            });
            $(document).on('click', '.tr-repeater .controls .clear', function (e) {
                if (confirm('Remove all items?')) {
                    $(this).parent().parent().next().next().html('');
                }
                e.preventDefault();
            });
            $(document).on('click', '.tr-repeater .controls .flip', function (e) {
                var items;
                if (confirm('Flip order of all items?')) {
                    items = $(this).parent().parent().next().next();
                    items.children().each(function (i, item) {
                        items.prepend(item);
                    });
                }
                e.preventDefault();
            });
        },
        nameParse: function nameParse(string, hash, id) {
            var liveTemplate, temp;
            liveTemplate = string;
            temp = new Booyah();
            liveTemplate = temp.addTemplate(liveTemplate).addTag('{{ ' + id + ' }}', hash).ready();
            return liveTemplate;
        }
    };
    repeaterClone.init();
    tr_max = {
        len: function len(that) {
            var $that;
            var length;
            $that = $(that);
            length = $that.val().length;
            return parseInt($that.attr('maxlength')) - length;
        }
    };
});

/***/ }),
/* 25 */
/***/ (function(module, exports) {

;jQuery.fn.selectText = function () {
    var doc, element, range, selection;
    doc = document;
    element = this[0];
    range = void 0;
    selection = void 0;
    if (doc.body.createTextRange) {
        range = document.body.createTextRange();
        range.moveToElementText(element);
        range.select();
    } else if (window.getSelection) {
        selection = window.getSelection();
        range = document.createRange();
        range.selectNodeContents(element);
        selection.removeAllRanges();
        selection.addRange(range);
    }
};

jQuery(document).ready(function ($) {
    $('.typerocket-container').on('click', '.field', function () {
        $(this).selectText();
    });
});

/***/ }),
/* 26 */
/***/ (function(module, exports) {

;jQuery.typerocketHttp = {
    get: function get(url, data) {
        this.send('GET', url, data);
    },
    post: function post(url, data) {
        this.send('POST', url, data);
    },
    put: function put(url, data) {
        this.send('PUT', url, data);
    },
    "delete": function _delete(url, data) {
        this.send('DELETE', url, data);
    },
    send: function send(method, url, data, trailing) {
        if (trailing == null) {
            trailing = true;
        }
        if (trailing) {
            url = this.tools.addTrailingSlash(url);
        }
        this.tools.ajax({
            method: method,
            data: data,
            url: url
        });
    },
    tools: {
        stripTrailingSlash: function stripTrailingSlash(str) {
            if (str.substr(-1) === '/') {
                return str.substr(0, str.length - 1);
            }
            return str;
        },
        addTrailingSlash: function addTrailingSlash(str) {
            if (!str.indexOf('.php')) {
                return str.replace(/\/?(\?|#|$)/, '/$1');
            }
            return str;
        },
        ajax: function ajax(obj) {
            var settings, tools;
            tools = this;
            settings = {
                method: 'GET',
                data: {},
                dataType: 'json',
                success: function success(data) {
                    if (data.redirect) {
                        window.location = data.redirect;
                        return;
                    }
                    tools.checkData(data);
                },
                error: function error(hx, _error, message) {
                    alert('Your request had an error. ' + hx.status + ' - ' + message);
                }
            };
            jQuery.extend(settings, obj);
            jQuery.ajax(settings);
        },
        checkData: function checkData(data) {
            var ri, type;
            ri = 0;
            while (TypeRocket.httpCallbacks.length > ri) {
                if (typeof TypeRocket.httpCallbacks[ri] === 'function') {
                    TypeRocket.httpCallbacks[ri](data);
                }
                ri++;
            }
            type = data.message_type;
            if (data.flash === true) {
                jQuery('body').prepend(jQuery('<div class="typerocket-ajax-alert tr-alert-' + type + ' ">' + data.message + '</div>').fadeIn(200).delay(2000).fadeOut(200, function () {
                    jQuery(this).remove();
                }));
            }
        }
    }
};

jQuery(document).ready(function ($) {
    $('form.typerocket-ajax-form').on('submit', function (e) {
        e.preventDefault();
        TypeRocket.lastSubmittedForm = $(this);
        $.typerocketHttp.send('POST', $(this).attr('action'), $(this).serialize());
    });
    return $('.tr-delete-row-rest-button').on('click', function (e) {
        var data, target;
        e.preventDefault();
        if (confirm("Confirm Delete.")) {
            target = $(this).data('target');
            $(target).remove();
            data = {
                _tr_ajax_request: '1',
                _method: 'DELETE'
            };
            return $.typerocketHttp.send('POST', $(this).attr('href'), data, false);
        }
    });
});

/***/ }),
/* 27 */
/***/ (function(module, exports) {

;jQuery(document).ready(function ($) {
    var clear_items;
    clear_items = function clear_items(button, field) {
        if (confirm('Remove all items?')) {
            $(field).val('');
            $(button).parent().next().html('');
        }
        return false;
    };
    $(document).on('click', '.items-list-button', function () {
        var $ul, name;
        $ul = $(this).parent().next();
        name = $ul.attr('name');
        if (name) {
            $ul.data('name', name);
        }
        name = $ul.data('name');
        $ul.prepend($('<li class="item"><a class="move tr-control-icon tr-control-icon-move"></a><a href="#remove" class="remove tr-control-icon tr-control-icon-remove" title="Remove Item"></a><input type="text" name="' + name + '[]" /></li>').hide().delay(10).slideDown(150).scrollTop('100%'));
    });
    $(document).on('click', '.items-list-clear', function () {
        var field;
        field = $(this).parent().prev();
        clear_items($(this), field[0]);
    });
    $(document).on('click', '.tr-items-list .remove', function () {
        $(this).parent().slideUp(150, function () {
            $(this).remove();
        });
    });
});

/***/ }),
/* 28 */
/***/ (function(module, exports) {

;(function ($) {
    $.fn.TypeRocketSearch = function (type, taxonomy, model) {
        var param, search, that;
        if (type == null) {
            type = 'any';
        }
        if (taxonomy == null) {
            taxonomy = '';
        }
        if (model == null) {
            model = '';
        }

        that = this;
        search = encodeURI(this.val().trim());
        param = 'post_type=' + type + '&s=' + search;
        if (taxonomy) {
            param += '&taxonomy=' + taxonomy;
        }
        if (model) {
            param += '&model=' + model;
        }

        jQuery.getJSON(trHelpers.site_uri + '/wp-json/typerocket/v1/search?' + param, function (data) {
            var i, id, item, len, post_status, results, title, link;
            if (data) {
                var linkList = that.next().next().next();
                linkList.html('');
                linkList.append('<div class="tr-link-search-result-title">Results</div>');
                results = [];
                for (i = 0, len = data.length; i < len; i++) {
                    item = data[i];
                    if (item.post_title) {
                        if (item.post_status === 'draft') {
                            post_status = 'draft ';
                        } else {
                            post_status = '';
                        }
                        title = item.post_title + ' (' + post_status + item.post_type + ')';
                        id = item.ID;
                    } else if (item.term_id) {
                        title = item.name;
                        id = item.term_id;
                    } else {
                        title = item.title;
                        id = item.id;
                    }

                    link = jQuery('<a tabindex="0" class="tr-link-search-result" data-id="' + id + '" >' + title + '</a>');
                    link = link.on('click keyup', function (e) {
                        e.preventDefault();
                        var keying = false;
                        var enterKey = false;
                        if (event.keyCode) {
                            keying = true;
                            enterKey = event.keyCode == 13;
                        }

                        if (!keying || enterKey) {
                            var id, title;
                            id = $(this).data('id');
                            title = $(this).text();
                            $(this).parent().prev().html('Selection: <b>' + title + '</b> <a class="tr-link-search-remove-selection" href="#remove-selection">remove</a>');
                            that.next().val(id);
                            that.focus().val('');
                            return $(this).parent().html('');
                        }
                    });
                    linkList.append(link);
                    results.push(link);
                }
                return results;
            }
        });
        return this;
    };

    $('.typerocket-container').on('keyup', '.tr-link-search-input', function () {
        var taxonomy, that, type, model;
        that = $(this);
        type = $(this).data('posttype');
        taxonomy = $(this).data('taxonomy');
        model = $(this).data('model');
        return window.trUtil.delay(function () {
            that.TypeRocketSearch(type, taxonomy, model);
        }, 250);
    });

    $('.typerocket-container').on('click', '.tr-link-search-remove-selection', function (e) {
        var parent;
        e.preventDefault();
        parent = $(this).parent();
        parent.prev().val('');
        parent.prev().prev().focus();
        parent.text('No selection... Search and click on a result');
    });
})(jQuery);

/***/ }),
/* 29 */
/***/ (function(module, exports) {

;(function ($) {
    $.fn.TypeRocketLinks = function (type, taxonomy, model) {
        var param, search, that;
        if (type == null) {
            type = 'any';
        }
        if (taxonomy == null) {
            taxonomy = '';
        }
        if (model == null) {
            model = '';
        }

        that = this;
        search = encodeURI(this.val().trim());
        param = 'post_type=' + type + '&s=' + search;
        if (taxonomy) {
            param += '&taxonomy=' + taxonomy;
        }
        if (model) {
            param += '&model=' + model;
        }

        jQuery.getJSON(trHelpers.site_uri + '/wp-json/typerocket/v1/search?' + param, function (data) {
            var i, id, item, len, post_status, results, title, link;
            if (data) {
                var linkList = that.next();
                var selectedList = that.parent().next();
                var inputName = selectedList.data('input');
                linkList.html('');
                linkList.append('<div class="tr-link-search-result-title">Results</div>');
                results = [];
                for (i = 0, len = data.length; i < len; i++) {
                    item = data[i];
                    if (item.post_title) {
                        if (item.post_status === 'draft') {
                            post_status = 'draft ';
                        } else {
                            post_status = '';
                        }
                        title = item.post_title + ' (' + post_status + item.post_type + ')';
                        id = item.ID;
                    } else if (item.term_id) {
                        title = item.name;
                        id = item.term_id;
                    } else {
                        title = item.title;
                        id = item.id;
                    }

                    link = jQuery('<a tabindex="0" class="tr-link-search-result" data-id="' + id + '" >' + title + '</a>');
                    link = link.on('click keyup', function (e) {
                        e.preventDefault();
                        var keying = false;
                        var enterKey = false;
                        if (event.keyCode) {
                            keying = true;
                            enterKey = event.keyCode == 13;
                        }

                        if (!keying || enterKey) {
                            var id, title;
                            id = $(this).data('id');
                            title = $(this).text();
                            linkItem = jQuery('<li class="tr-link-chosen-item"><input name="' + inputName + '[]" value="' + id + '" type="hidden" />' + title + '<a title="remove" class="tr-control-icon tr-control-icon-remove tr-link-chosen-item-remove"></a></li>');
                            selectedList.append(linkItem);
                            that.focus().val('');
                            return $(this).parent().html('');
                        }
                    });
                    linkList.append(link);
                    results.push(link);
                }
                return results;
            }
        });
        return this;
    };

    $('.typerocket-container').on('click', '.tr-link-chosen-item-remove', function (e) {
        e.preventDefault();
        $(this).parent().remove();
    });

    $('.typerocket-container').on('keyup', '.tr-link-links-input', function () {
        var taxonomy, that, type, model;
        that = $(this);
        type = $(this).data('posttype');
        taxonomy = $(this).data('taxonomy');
        model = $(this).data('model');
        window.trUtil.delay(function () {
            that.TypeRocketLinks(type, taxonomy, model);
        }, 250);
    });
})(jQuery);

/***/ }),
/* 30 */
/***/ (function(module, exports) {

;jQuery(document).ready(function ($) {
    $('.typerocket-container').on('click', '.matrix-button', function (e) {
        var $fields, $select, $that, button_txt, callbacks, folder, form_group, group, mxid, type, url;
        $that = $(this);
        if (!$that.is(':disabled')) {
            mxid = $that.data('id');
            folder = $that.data('folder');
            group = $that.data('group');
            $fields = $('#' + mxid);
            $select = $('select[data-mxid="' + mxid + '"]');
            button_txt = $that.val();
            type = $select.val();
            callbacks = TypeRocket.repeaterCallbacks;
            $that.attr('disabled', 'disabled').val('Adding...');
            url = trHelpers.site_uri + '/tr_matrix_api/v1/' + group + '/' + type + '/' + folder;
            form_group = $select.data('group');
            $.ajax({
                url: url,
                method: 'POST',
                dataType: 'html',
                data: {
                    form_group: form_group
                },
                success: function success(data) {
                    var $items_list, $repeater_fields, $sortables, ri;
                    data = $(data);
                    ri = 0;
                    while (callbacks.length > ri) {
                        if (typeof callbacks[ri] === 'function') {
                            callbacks[ri](data);
                        }
                        ri++;
                    }
                    data.prependTo($fields).hide().delay(10).slideDown(300).scrollTop('100%');
                    if ($.isFunction($.fn.sortable)) {
                        $sortables = $fields.find('.tr-gallery-list');
                        $items_list = $fields.find('.tr-items-list');
                        $repeater_fields = $fields.find('.tr-repeater-fields');
                        if ($sortables.length > 0) {
                            $sortables.sortable();
                        }
                        if ($repeater_fields.length > 0) {
                            $repeater_fields.sortable({
                                connectWith: '.tr-repeater-group',
                                handle: '.repeater-controls'
                            });
                        }
                        if ($items_list.length > 0) {
                            $items_list.sortable({
                                connectWith: '.item',
                                handle: '.move'
                            });
                        }
                    }
                    $that.val(button_txt).removeAttr('disabled', 'disabled');
                },
                error: function error(jqXHR) {
                    $that.val('Try again - Error ' + jqXHR.status).removeAttr('disabled', 'disabled');
                }
            });
        }
    });
});

/***/ }),
/* 31 */
/***/ (function(module, exports) {

;jQuery(document).ready(function ($) {
    var clear_gallery, clear_media, set_file_uploader, set_gallery_uploader, set_image_uploader;
    set_image_uploader = function set_image_uploader(button, field) {
        var btnTitle, temp_frame, title, typeInput;
        title = 'Select an Image';
        btnTitle = 'Use Image';
        typeInput = 'image';
        temp_frame = wp.media({
            title: title,
            button: {
                text: btnTitle
            },
            library: {
                type: typeInput
            },
            multiple: false
        });
        temp_frame.uploader.options.uploader.params.allowed_mime_types = 'image';
        temp_frame.on('select', function () {
            var attachment, url;
            attachment = temp_frame.state().get('selection').first().toJSON();
            url = '';
            if (attachment.sizes.thumbnail) {
                url = attachment.sizes.thumbnail.url;
            } else {
                url = attachment.sizes.full.url;
            }
            $(field).val(attachment.id);
            $(button).parent().next().html('<img src="' + url + '"/>');
        });
        wp.media.frames.image_frame = temp_frame;
        wp.media.frames.image_frame.open();
        return false;
    };
    set_file_uploader = function set_file_uploader(button, field) {
        var btnTitle, temp_frame, title, typeInput, options;
        title = 'Select a File';
        btnTitle = 'Use File';
        typeInput = button.data('type'); // https://codex.wordpress.org/Function_Reference/get_allowed_mime_types
        options = {
            title: title,
            button: {
                text: btnTitle
            },
            library: {
                type: typeInput
            },
            multiple: false
        };
        temp_frame = wp.media(options);
        if (options.library.type) {
            temp_frame.uploader.options.uploader.params.allowed_mime_types = options.library.type;
        }
        temp_frame.on('select', function () {
            var attachment, link;
            attachment = temp_frame.state().get('selection').first().toJSON();
            link = '<a target="_blank" href="' + attachment.url + '">' + attachment.url + '</a>';
            $(field).val(attachment.id);
            $(button).parent().next().html(link);
        });
        wp.media.frames.file_frame = temp_frame;
        wp.media.frames.file_frame.open();
        return false;
    };
    clear_media = function clear_media(button, field) {
        $(field).val('');
        $(button).parent().next().html('');
        return false;
    };
    set_gallery_uploader = function set_gallery_uploader(button, list) {
        var btnTitle, temp_frame, title;
        title = 'Select Images';
        btnTitle = 'Use Images';
        temp_frame = wp.media({
            title: title,
            button: {
                text: btnTitle
            },
            library: {
                type: 'image'
            },
            multiple: 'toggle'
        });
        temp_frame.uploader.options.uploader.params.allowed_mime_types = 'image';
        temp_frame.on('select', function () {
            var attachment, field, i, item, l, use_url;
            attachment = temp_frame.state().get('selection').toJSON();
            l = attachment.length;
            i = 0;
            while (i < l) {
                field = $(button).parent().prev().clone();
                use_url = '';
                if (attachment[i].sizes.thumbnail) {
                    use_url = attachment[i].sizes.thumbnail.url;
                } else {
                    use_url = attachment[i].sizes.full.url;
                }
                item = $('<li class="image-picker-placeholder"><a href="#remove" class="dashicons dashicons-no-alt" title="Remove Image"></a><img src="' + use_url + '"/></li>');
                $(item).append(field.val(attachment[i].id).attr('name', field.attr('name') + '[]'));
                $(list).append(item);
                $(list).find('a').on('click', function (e) {
                    e.preventDefault();
                    $(this).parent().remove();
                });
                i++;
            }
        });
        wp.media.frames.gallery_frame = temp_frame;
        wp.media.frames.gallery_frame.open();
        return false;
    };
    clear_gallery = function clear_gallery(button, field) {
        if (confirm('Remove all images?')) {
            $(field).html('');
        }
        return false;
    };
    $(document).on('click', '.image-picker-button', function () {
        var field;
        field = $(this).parent().prev();
        set_image_uploader($(this), field[0]);
    });
    $(document).on('click', '.file-picker-button', function () {
        var field;
        field = $(this).parent().prev();
        set_file_uploader($(this), field[0]);
    });
    $(document).on('click', '.image-picker-clear, .file-picker-clear', function () {
        var field;
        field = $(this).parent().prev();
        clear_media($(this), field[0]);
    });
    $(document).on('click', '.gallery-picker-button', function () {
        var list;
        list = $(this).parent().next();
        set_gallery_uploader($(this), list[0]);
    });
    $(document).on('click', '.gallery-picker-clear', function () {
        var list;
        list = $(this).parent().next();
        clear_gallery($(this), list[0]);
    });
    $('.tr-gallery-list a').on('click', function (e) {
        e.preventDefault();
        $(this).parent().remove();
    });
});

/***/ }),
/* 32 */
/***/ (function(module, exports) {

;jQuery(document).ready(function ($) {
    var desc, orig_desc, orig_title, val;
    val = '';
    desc = '';
    orig_desc = $('#tr-seo-preview-google-desc-orig').text();
    orig_title = $('#tr-seo-preview-google-title-orig').text();
    $('#tr_title').keyup(function () {
        var title;
        val = $(this).val().substring(0, 59);
        title = $('#tr-seo-preview-google-title');
        title.text(val);
        console.log(orig_desc);
        if (val.length > 0) {
            title.text(val);
        } else {
            title.text(orig_title);
        }
    });
    $('#tr_description').keyup(function () {
        desc = $(this).val().substring(0, 156);
        if (desc.length > 0) {
            $('#tr-seo-preview-google-desc').text(desc);
        } else {
            $('#tr-seo-preview-google-desc').text(orig_desc);
        }
    });
    $('#tr_redirect_lock').click(function (e) {
        $($(this).attr('href')).removeAttr('readonly').focus();
        $(this).fadeOut();
        e.preventDefault();
    });
});

/***/ }),
/* 33 */
/***/ (function(module, exports) {

;(function ($) {
    $(document).on('keyup', '.tr-toggle-box-label', function (e) {
        e.preventDefault();
        if (event.keyCode == 13) {
            $(this).trigger('click');
        }
    });
})(jQuery);

/***/ })
/******/ ]));