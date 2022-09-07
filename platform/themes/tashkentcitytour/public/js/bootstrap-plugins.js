/*!
 * Bootstrap Select v1.5.0 (https://github.com/biggora/bootstrap-select)
 * Copyright 2013-2014 Silvio Moreto
 * Licensed under MIT (https://github.com/biggora/bootstrap-select/blob/master/LICENSE)
 * Plugin demo http://plugins.upbootstrap.com/bootstrap-select
 */
!function(a){"use strict";a.expr[":"].icontains=function(b,c,d){return a(b).text().toUpperCase().indexOf(d[3].toUpperCase())>=0};var b=".selectpicker",c=function(b,d,e){e&&(e.stopPropagation(),e.preventDefault()),this.$element=a(b),this.$newElement=null,this.$button=null,this.$menu=null,this.options=a.extend({},a.fn.selectpicker.defaults,this.$element.data(),"object"==typeof d&&d),null===this.options.title&&(this.options.title=this.$element.attr("title")),this.val=c.prototype.val,this.render=c.prototype.render,this.refresh=c.prototype.refresh,this.setStyle=c.prototype.setStyle,this.selectAll=c.prototype.selectAll,this.deselectAll=c.prototype.deselectAll,this.init()};c.prototype={constructor:c,init:function(){this.$element.hide(),this.multiple=this.$element.prop("multiple");var b=this.$element.attr("id");if(this.$newElement=this.createView(),this.$element.after(this.$newElement),this.$menu=this.$newElement.find("> .dropdown-menu"),this.$button=this.$newElement.find("> button"),this.$searchbox=this.$newElement.find("input"),void 0!==b){var c=this;this.$button.attr("data-id",b),a('label[for="'+b+'"]').click(function(a){a.preventDefault(),c.$button.focus()})}this.checkDisabled(),this.clickListener(),this.options.liveSearch&&this.liveSearchListener(),this.render(),this.liHeight(),this.setStyle(),this.setWidth(),this.options.container&&this.selectPosition(),this.$menu.data("this",this),this.$newElement.data("this",this)},createDropdown:function(){var b=this.multiple?" show-tick":"",c=this.options.header?'<div class="popover-title"><button type="button" class="close" aria-hidden="true">&times;</button>'+this.options.header+"</div>":"",d=this.options.liveSearch?'<div class="bootstrap-select-searchbox"><input type="text" class="input-block-level form-control" /></div>':"",e='<div class="btn-group bootstrap-select'+b+'">    <button type="button" class="btn dropdown-toggle selectpicker" data-toggle="dropdown">        <span class="filter-option pull-left"></span>&nbsp;     <span class="caret-wrap">   <span class="caret"></span> </span>    </button>    <div class="dropdown-menu open">'+c+d+'        <ul class="dropdown-menu inner selectpicker" role="menu">        </ul>    </div></div>';return a(e)},createView:function(){var a=this.createDropdown(),b=this.createLi();return a.find("ul").append(b),a},reloadLi:function(){this.destroyLi();var a=this.createLi();this.$menu.find("ul").append(a)},destroyLi:function(){this.$menu.find("li").remove()},createLi:function(){var b=this,c=[],d="";return this.$element.find("option").each(function(){var d=a(this),e=d.attr("class")||"",f=d.attr("style")||"",g=d.data("content")?d.data("content"):d.html(),h=void 0!==d.data("subtext")?'<small class="muted text-muted">'+d.data("subtext")+"</small>":"",i=void 0!==d.data("icon")?'<i class="glyphicon '+d.data("icon")+'"></i> ':"";if(""!==i&&(d.is(":disabled")||d.parent().is(":disabled"))&&(i="<span>"+i+"</span>"),d.data("content")||(g=i+'<span class="text">'+g+h+"</span>"),b.options.hideDisabled&&(d.is(":disabled")||d.parent().is(":disabled")))c.push('<a style="min-height: 0; padding: 0"></a>');else if(d.parent().is("optgroup")&&d.data("divider")!==!0)if(0===d.index()){var j=d.parent().attr("label"),k=void 0!==d.parent().data("subtext")?'<small class="muted text-muted">'+d.parent().data("subtext")+"</small>":"",l=d.parent().data("icon")?'<i class="'+d.parent().data("icon")+'"></i> ':"";j=l+'<span class="text">'+j+k+"</span>",c.push(0!==d[0].index?'<div class="div-contain"><div class="divider"></div></div><dt>'+j+"</dt>"+b.createA(g,"opt "+e,f):"<dt>"+j+"</dt>"+b.createA(g,"opt "+e,f))}else c.push(b.createA(g,"opt "+e,f));else c.push(d.data("divider")===!0?'<div class="div-contain"><div class="divider"></div></div>':a(this).data("hidden")===!0?"":b.createA(g,e,f))}),a.each(c,function(a,b){d+="<li rel="+a+">"+b+"</li>"}),this.multiple||0!==this.$element.find("option:selected").length||this.options.title||this.$element.find("option").eq(0).prop("selected",!0).attr("selected","selected"),a(d)},createA:function(a,b,c){return'<a tabindex="0" class="'+b+'" style="'+c+'">'+a+'</a>'},render:function(){var b=this;this.$element.find("option").each(function(c){b.setDisabled(c,a(this).is(":disabled")||a(this).parent().is(":disabled")),b.setSelected(c,a(this).is(":selected"))}),this.tabIndex();var c=this.$element.find("option:selected").map(function(){var c,d=a(this),e=d.data("icon")&&b.options.showIcon?'<i class="glyphicon '+d.data("icon")+'"></i> ':"";return c=b.options.showSubtext&&d.attr("data-subtext")&&!b.multiple?' <small class="muted text-muted">'+d.data("subtext")+"</small>":"",d.data("content")&&b.options.showContent?d.data("content"):void 0!==d.attr("title")?d.attr("title"):e+d.html()+c}).toArray(),d=this.multiple?c.join(", "):c[0];if(this.multiple&&this.options.selectedTextFormat.indexOf("count")>-1){var e=this.options.selectedTextFormat.split(">"),f=this.options.hideDisabled?":not([disabled])":"";(e.length>1&&c.length>e[1]||1===e.length&&c.length>=2)&&(d=this.options.countSelectedText.replace("{0}",c.length).replace("{1}",this.$element.find('option:not([data-divider="true"]):not([data-hidden="true"])'+f).length))}d||(d=void 0!==this.options.title?this.options.title:this.options.noneSelectedText),this.$newElement.find(".filter-option").html(d)},setStyle:function(a,b){this.$element.attr("class")&&this.$newElement.addClass(this.$element.attr("class").replace(/selectpicker|mobile-device/gi,""));var c=a?a:this.options.style;"add"===b?this.$button.addClass(c):"remove"===b?this.$button.removeClass(c):(this.$button.removeClass(this.options.style),this.$button.addClass(c))},liHeight:function(){var a=this.$menu.parent().clone().appendTo("body"),b=a.addClass("open").find("> .dropdown-menu"),c=b.find("li > a").outerHeight(),d=this.options.header?b.find(".popover-title").outerHeight():0,e=this.options.liveSearch?b.find(".bootstrap-select-searchbox").outerHeight():0;a.remove(),this.$newElement.data("liHeight",c).data("headerHeight",d).data("searchHeight",e)},setSize:function(){var b,c,d,e=this,f=this.$menu,g=f.find(".inner"),h=this.$newElement.outerHeight(),i=this.$newElement.data("liHeight"),j=this.$newElement.data("headerHeight"),k=this.$newElement.data("searchHeight"),l=f.find("li .divider").outerHeight(!0),m=parseInt(f.css("padding-top"))+parseInt(f.css("padding-bottom"))+parseInt(f.css("border-top-width"))+parseInt(f.css("border-bottom-width")),n=this.options.hideDisabled?":not(.disabled)":"",o=a(window),p=m+parseInt(f.css("margin-top"))+parseInt(f.css("margin-bottom"))+2,q=function(){c=e.$newElement.offset().top-o.scrollTop(),d=o.height()-c-h};if(q(),this.options.header&&f.css("padding-top",0),"auto"===this.options.size){var r=function(){var a;q(),b=d-p,e.options.dropupAuto&&e.$newElement.toggleClass("dropup",c>d&&b-p<f.height()),e.$newElement.hasClass("dropup")&&(b=c-p),a=f.find("li").length+f.find("dt").length>3?3*i+p-2:0,f.css({"max-height":b+"px",overflow:"hidden","min-height":a+"px"}),g.css({"max-height":b-j-k-m+"px","overflow-y":"auto","min-height":a-m+"px"})};r(),a(window).resize(r),a(window).scroll(r)}else if(this.options.size&&"auto"!==this.options.size&&f.find("li"+n).length>this.options.size){var s=f.find("li"+n+" > *").filter(":not(.div-contain)").slice(0,this.options.size).last().parent().index(),t=f.find("li").slice(0,s+1).find(".div-contain").length;b=i*this.options.size+t*l+m,e.options.dropupAuto&&this.$newElement.toggleClass("dropup",c>d&&b<f.height()),f.css({"max-height":b+j+k+"px",overflow:"hidden"}),g.css({"max-height":b-m+"px","overflow-y":"auto"})}},setWidth:function(){if("auto"===this.options.width){this.$menu.css("min-width","0");var a=this.$newElement.clone().appendTo("body"),b=a.find("> .dropdown-menu").css("width");a.remove(),this.$newElement.css("width",b)}else"fit"===this.options.width?(this.$menu.css("min-width",""),this.$newElement.css("width","").addClass("fit-width")):this.options.width?(this.$menu.css("min-width",""),this.$newElement.css("width",this.options.width)):(this.$menu.css("min-width",""),this.$newElement.css("width",""));this.$newElement.hasClass("fit-width")&&"fit"!==this.options.width&&this.$newElement.removeClass("fit-width")},selectPosition:function(){var b,c,d=this,e="<div />",f=a(e),g=function(a){f.addClass(a.attr("class")).toggleClass("dropup",a.hasClass("dropup")),b=a.offset(),c=a.hasClass("dropup")?0:a[0].offsetHeight,f.css({top:b.top+c,left:b.left,width:a[0].offsetWidth,position:"absolute"})};this.$newElement.on("click",function(){g(a(this)),f.appendTo(d.options.container),f.toggleClass("open",!a(this).hasClass("open")),f.append(d.$menu)}),a(window).resize(function(){g(d.$newElement)}),a(window).on("scroll",function(){g(d.$newElement)}),a("html").on("click",function(b){a(b.target).closest(d.$newElement).length<1&&f.removeClass("open")})},mobile:function(){this.$element.addClass("mobile-device").appendTo(this.$newElement),this.options.container&&this.$menu.hide()},refresh:function(){this.reloadLi(),this.render(),this.setWidth(),this.setStyle(),this.checkDisabled(),this.liHeight()},update:function(){this.reloadLi(),this.setWidth(),this.setStyle(),this.checkDisabled(),this.liHeight()},setSelected:function(a,b){this.$menu.find("li").eq(a).toggleClass("selected",b)},setDisabled:function(a,b){b?this.$menu.find("li").eq(a).addClass("disabled").find("a").attr("href","#").attr("tabindex",-1):this.$menu.find("li").eq(a).removeClass("disabled").find("a").removeAttr("href").attr("tabindex",0)},isDisabled:function(){return this.$element.is(":disabled")},checkDisabled:function(){var a=this;this.isDisabled()?this.$button.addClass("disabled").attr("tabindex",-1):(this.$button.hasClass("disabled")&&this.$button.removeClass("disabled"),-1===this.$button.attr("tabindex")&&(this.$element.data("tabindex")||this.$button.removeAttr("tabindex"))),this.$button.click(function(){return!a.isDisabled()})},tabIndex:function(){this.$element.is("[tabindex]")&&(this.$element.data("tabindex",this.$element.attr("tabindex")),this.$button.attr("tabindex",this.$element.data("tabindex")))},clickListener:function(){var b=this;a("body").on("touchstart.dropdown",".dropdown-menu",function(a){a.stopPropagation()}),this.$newElement.on("click",function(){b.setSize(),b.options.liveSearch||b.multiple||setTimeout(function(){b.$menu.find(".selected a").focus()},10)}),this.$menu.on("click","li a",function(c){var d=a(this).parent().index(),e=b.$element.val(),f=b.$element.prop("selectedIndex");if(b.multiple&&c.stopPropagation(),c.preventDefault(),!b.isDisabled()&&!a(this).parent().hasClass("disabled")){var g=b.$element.find("option"),h=g.eq(d);if(b.multiple){var i=h.prop("selected");h.prop("selected",!i)}else g.prop("selected",!1),h.prop("selected",!0);b.multiple?b.options.liveSearch&&b.$searchbox.focus():b.$button.focus(),(e!==b.$element.val()&&b.multiple||f!==b.$element.prop("selectedIndex")&&!b.multiple)&&b.$element.change()}}),this.$menu.on("click","li.disabled a, li dt, li .div-contain, .popover-title, .popover-title :not(.close)",function(a){a.target===this&&(a.preventDefault(),a.stopPropagation(),b.options.liveSearch?b.$searchbox.focus():b.$button.focus())}),this.$menu.on("click",".popover-title .close",function(){b.$button.focus()}),this.$searchbox.on("click",function(a){a.stopPropagation()}),this.$element.change(function(){b.render()})},liveSearchListener:function(){var b=this,c=a('<li class="no-results"></li>');this.$newElement.on("click.dropdown.data-api",function(){b.$menu.find(".active").removeClass("active"),b.$searchbox.val()&&(b.$searchbox.val(""),b.$menu.find("li").show(),c.remove()),b.multiple||b.$menu.find(".selected").addClass("active"),setTimeout(function(){b.$searchbox.focus()},10)}),this.$searchbox.on("input propertychange",function(){b.$searchbox.val()?(b.$menu.find("li").show().not(":icontains("+b.$searchbox.val()+")").hide(),b.$menu.find("li").filter(":visible:not(.no-results)").length?c.remove():(c.remove(),c.html('No results match "'+b.$searchbox.val()+'"').show(),b.$menu.find("li").last().after(c))):b.$menu.find("li").show(),b.$menu.find("li.active").removeClass("active"),b.$menu.find("li").filter(":visible:not(.divider)").eq(0).addClass("active").find("a").focus(),a(this).focus()}),this.$menu.on("mouseenter","a",function(c){b.$menu.find(".active").removeClass("active"),a(c.currentTarget).parent().not(".disabled").addClass("active")}),this.$menu.on("mouseleave","a",function(){b.$menu.find(".active").removeClass("active")})},val:function(a){return void 0!==a?(this.$element.val(a),this.$element.change(),this.$element):this.$element.val()},selectAll:function(){this.$element.find("option").prop("selected",!0).attr("selected","selected"),this.render()},deselectAll:function(){this.$element.find("option").prop("selected",!1).removeAttr("selected"),this.render()},keydown:function(b){var c,d,e,f,g,h,i,j,k,l,m,n,o={32:" ",48:"0",49:"1",50:"2",51:"3",52:"4",53:"5",54:"6",55:"7",56:"8",57:"9",59:";",65:"a",66:"b",67:"c",68:"d",69:"e",70:"f",71:"g",72:"h",73:"i",74:"j",75:"k",76:"l",77:"m",78:"n",79:"o",80:"p",81:"q",82:"r",83:"s",84:"t",85:"u",86:"v",87:"w",88:"x",89:"y",90:"z",96:"0",97:"1",98:"2",99:"3",100:"4",101:"5",102:"6",103:"7",104:"8",105:"9"};if(c=a(this),e=c.parent(),c.is("input")&&(e=c.parent().parent()),l=e.data("this"),l.options.liveSearch&&(e=c.parent().parent()),l.options.container&&(e=l.$menu),d=a("[role=menu] li:not(.divider) a",e),n=l.$menu.parent().hasClass("open"),l.options.liveSearch&&(/(^9$|27)/.test(b.keyCode)&&n&&0===l.$menu.find(".active").length&&(b.preventDefault(),l.$menu.parent().removeClass("open"),l.$button.focus()),d=a("[role=menu] li:not(.divider):visible",e),c.val()||/(38|40)/.test(b.keyCode)||0===d.filter(".active").length&&(d=l.$newElement.find("li").filter(":icontains("+o[b.keyCode]+")"))),d.length){if(/(38|40)/.test(b.keyCode))n||l.$menu.parent().addClass("open"),f=d.index(d.filter(":focus")),h=d.parent(":not(.disabled):visible").first().index(),i=d.parent(":not(.disabled):visible").last().index(),g=d.eq(f).parent().nextAll(":not(.disabled):visible").eq(0).index(),j=d.eq(f).parent().prevAll(":not(.disabled):visible").eq(0).index(),k=d.eq(g).parent().prevAll(":not(.disabled):visible").eq(0).index(),l.options.liveSearch&&(d.each(function(b){a(this).is(":not(.disabled)")&&a(this).data("index",b)}),f=d.index(d.filter(".active")),h=d.filter(":not(.disabled):visible").first().data("index"),i=d.filter(":not(.disabled):visible").last().data("index"),g=d.eq(f).nextAll(":not(.disabled):visible").eq(0).data("index"),j=d.eq(f).prevAll(":not(.disabled):visible").eq(0).data("index"),k=d.eq(g).prevAll(":not(.disabled):visible").eq(0).data("index")),m=c.data("prevIndex"),38===b.keyCode&&(l.options.liveSearch&&(f-=1),f!==k&&f>j&&(f=j),h>f&&(f=h),f===m&&(f=i)),40===b.keyCode&&(l.options.liveSearch&&(f+=1),-1===f&&(f=0),f!==k&&g>f&&(f=g),f>i&&(f=i),f===m&&(f=h)),c.data("prevIndex",f),l.options.liveSearch?(b.preventDefault(),c.is(".dropdown-toggle")||(d.removeClass("active"),d.eq(f).addClass("active").find("a").focus(),c.focus())):d.eq(f).focus();else if(!c.is("input")){var p=[];d.each(function(){a(this).parent().is(":not(.disabled)")&&a.trim(a(this).text().toLowerCase()).substring(0,1)===o[b.keyCode]&&p.push(a(this).parent().index())});var q=a(document).data("keycount");q++,a(document).data("keycount",q);var r=a.trim(a(":focus").text().toLowerCase()).substring(0,1);r!==o[b.keyCode]?(q=1,a(document).data("keycount",q)):q>=p.length&&a(document).data("keycount",0),d.eq(p[q-1]).focus()}/(13|32|^9$)/.test(b.keyCode)&&n&&(/(32)/.test(b.keyCode)||b.preventDefault(),l.options.liveSearch?/(32)/.test(b.keyCode)||(l.$menu.find(".active a").click(),c.focus()):a(":focus").click(),a(document).data("keycount",0)),(/(^9$|27)/.test(b.keyCode)&&n&&(l.multiple||l.options.liveSearch)||/(27)/.test(b.keyCode)&&!n)&&(l.$menu.parent().removeClass("open"),l.$button.focus())}},hide:function(){this.$newElement.hide()},show:function(){this.$newElement.show()},destroy:function(){this.$newElement.remove(),this.$element.remove()}};var d=a.fn.selectpicker;a.fn.selectpicker=function(b,d){var e,f=arguments,g=this.each(function(){if(a(this).is("select")){var g=a(this),h=g.data("selectpicker"),i="object"==typeof b&&b;if(h){if(i)for(var j in i)h.options[j]=i[j]}else g.data("selectpicker",h=new c(this,i,d));if("string"==typeof b){var k=b;h[k]instanceof Function?([].shift.apply(f),e=h[k].apply(h,f)):e=h.options[k]}}});return void 0!==e?e:g},a.fn.selectpicker.defaults={style:"btn-default",size:"auto",title:null,selectedTextFormat:"values",noneSelectedText:"Nothing selected",countSelectedText:"{0} of {1} selected",width:!1,container:!1,hideDisabled:!1,showSubtext:!1,showIcon:!0,showContent:!0,dropupAuto:!0,header:!1,liveSearch:!1},a.fn.selectpicker.noConflict=function(){return a.fn.selectpicker=d,this},a(document).data("keycount",0).on("keydown",".bootstrap-select [data-toggle=dropdown], .bootstrap-select [role=menu], .bootstrap-select-searchbox input",c.prototype.keydown),a(document).on("ready",function(){a(b).each(function(){a(this).selectpicker()})})}(window.jQuery);

/*
 * Fuel UX Radio
 * https://github.com/ExactTarget/fuelux
 *
 * Copyright (c) 2014 ExactTarget
 * Licensed under the BSD New license.
 */

// -- BEGIN UMD WRAPPER PREFACE --

// For more information on UMD visit:
// https://github.com/umdjs/umd/blob/master/jqueryPlugin.js

(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// if AMD loader is available, register as an anonymous module.
		define(['jquery'], factory);
	} else {
		// OR use browser globals if AMD is not present
		factory(jQuery);
	}
}(function ($) {
	// -- END UMD WRAPPER PREFACE --

	// -- BEGIN MODULE CODE HERE --

	var old = $.fn.radio;

	// RADIO CONSTRUCTOR AND PROTOTYPE

	var Radio = function (element, options) {
		this.options = $.extend({}, $.fn.radio.defaults, options);

		if(element.tagName.toLowerCase() !== 'label') {
			//console.log('initialize radio on the label that wraps the radio');
			return;
		}

		// cache elements
		this.$label = $(element);
		this.$radio = this.$label.find('input[type="radio"]');
		this.groupName = this.$radio.attr('name'); // don't cache group itself since items can be added programmatically

		// determine if a toggle container is specified
		var containerSelector = this.$radio.attr('data-toggle');
		this.$toggleContainer = $(containerSelector);

		// handle internal events
		this.$radio.on('change', $.proxy(this.itemchecked, this));

		// set default state
		this.setInitialState();
	};

	Radio.prototype = {

		constructor: Radio,

		setInitialState: function() {
			var $radio = this.$radio;
			var $lbl = this.$label;

			// get current state of input
			var checked = $radio.prop('checked');
			var disabled = $radio.prop('disabled');

			// sync label class with input state
			this.setCheckedState($radio, checked);
			this.setDisabledState($radio, disabled);
		},

		resetGroup: function() {
			var $radios = $('input[name="' + this.groupName + '"]');
			$radios.each(function(index, item) {
				var $radio = $(item);
				var $lbl = $radio.parent();
				var containerSelector = $radio.attr('data-toggle');
				var $containerToggle = $(containerSelector);


				$lbl.removeClass('checked');
				$containerToggle.addClass('hidden');
			});
		},

		setCheckedState: function(element, checked) {
			var $radio = element;
			var $lbl = $radio.parent();
			var containerSelector = $radio.attr('data-toggle');
			var $containerToggle = $(containerSelector);

			if(checked) {
				// reset all items in group
				this.resetGroup();

				$radio.prop('checked', true);
				$lbl.addClass('checked');
				$containerToggle.removeClass('hide hidden');
				$lbl.trigger('checked.fu.radio');
			}
			else {
				$radio.prop('checked', false);
				$lbl.removeClass('checked');
				$containerToggle.addClass('hidden');
				$lbl.trigger('unchecked.fu.radio');
			}

			$lbl.trigger('changed.fu.radio', checked);
		},

		setDisabledState: function(element, disabled) {
			var $radio = element;
			var $lbl = this.$label;

			if(disabled) {
				this.$radio.prop('disabled', true);
				$lbl.addClass('disabled');
				$lbl.trigger('disabled.fu.radio');
			}
			else {
				this.$radio.prop('disabled', false);
				$lbl.removeClass('disabled');
				$lbl.trigger('enabled.fu.radio');
			}
		},

		itemchecked: function (evt) {
			var $radio = $(evt.target);
			this.setCheckedState($radio, true);
		},

		check: function () {
			this.setCheckedState(this.$radio, true);
		},

		uncheck: function () {
			this.setCheckedState(this.$radio, false);
		},

		isChecked: function () {
			var checked = this.$radio.prop('checked');
			return checked;
		},

		enable: function () {
			this.setDisabledState(this.$radio, false);
		},

		disable: function () {
			this.setDisabledState(this.$radio, true);
		},

		destroy: function () {
			this.$label.remove();
			// remove any external bindings
			// [none]
			// empty elements to return to original markup
			// [none]
			return this.$label[0].outerHTML;
		}
	};


	// RADIO PLUGIN DEFINITION

	$.fn.radio = function (option) {
		var args = Array.prototype.slice.call(arguments, 1);
		var methodReturn;

		var $set = this.each(function () {
			var $this = $(this);
			var data = $this.data('fu.radio');
			var options = typeof option === 'object' && option;

			if (!data) {
				$this.data('fu.radio', (data = new Radio(this, options)));
			}

			if (typeof option === 'string') {
				methodReturn = data[option].apply(data, args);
			}
		});

		return (methodReturn === undefined) ? $set : methodReturn;
	};

	$.fn.radio.defaults = {};

	$.fn.radio.Constructor = Radio;

	$.fn.radio.noConflict = function () {
		$.fn.radio = old;
		return this;
	};


	// DATA-API

	$(document).on('mouseover.fu.radio.data-api', '[data-initialize=radio]', function (e) {
		var $control = $(e.target);
		if (!$control.data('fu.radio')) {
			$control.radio($control.data());
		}
	});

	// Must be domReady for AMD compatibility
	$(function () {
		$('[data-initialize=radio]').each(function () {
			var $this = $(this);
			if (!$this.data('fu.radio')) {
				$this.radio($this.data());
			}
		});
	});

	// -- BEGIN UMD WRAPPER AFTERWORD --
}));
// -- END UMD WRAPPER AFTERWORD --

/*
 * Fuel UX Checkbox
 * https://github.com/ExactTarget/fuelux
 *
 * Copyright (c) 2014 ExactTarget
 * Licensed under the BSD New license.
 */

// -- BEGIN UMD WRAPPER PREFACE --

// For more information on UMD visit:
// https://github.com/umdjs/umd/blob/master/jqueryPlugin.js

(function (factory) {
	if (typeof define === 'function' && define.amd) {
		// if AMD loader is available, register as an anonymous module.
		define(['jquery'], factory);
	} else {
		// OR use browser globals if AMD is not present
		factory(jQuery);
	}
}(function ($) {
	// -- END UMD WRAPPER PREFACE --

	// -- BEGIN MODULE CODE HERE --

	var old = $.fn.checkbox;

	// CHECKBOX CONSTRUCTOR AND PROTOTYPE

	var Checkbox = function (element, options) {
		this.options = $.extend({}, $.fn.checkbox.defaults, options);

		// cache elements
		this.$element = $(element).is('input[type="checkbox"]') ? $(element) : $(element).find('input[type="checkbox"]:first');
		this.$label = this.$element.parent();
		this.$parent = this.$label.parent('.checkbox');
		this.$toggleContainer = this.$element.attr('data-toggle');
		this.state = {
			disabled: false,
			checked: false
		};

		if (this.$parent.length === 0) {
			this.$parent = null;
		}

		if (Boolean(this.$toggleContainer)) {
			this.$toggleContainer = $(this.$toggleContainer);
		} else {
			this.$toggleContainer = null;
		}

		// handle events
		this.$element.on('change.fu.checkbox', $.proxy(this.itemchecked, this));
		this.$label.unbind('click', $.proxy(this.toggle, this));//unbind previous binds so that double clickage doesn't happen (thus making checkbox appear to not work)
		this.$label.on('click', $.proxy(this.toggle, this));//make repeated label clicks work

		// set default state
		this.setState();
	};

	Checkbox.prototype = {

		constructor: Checkbox,

		setState: function ($chk) {
			$chk = $chk || this.$element;

			this.state.disabled = Boolean($chk.prop('disabled'));
			this.state.checked = Boolean($chk.is(':checked'));

			this._resetClasses();

			// set state of checkbox
			this._toggleCheckedState();
			this._toggleDisabledState();

			//toggle container
			this.toggleContainer();
		},

		enable: function () {
			this.state.disabled = false;
			this.$element.removeAttr('disabled');
			this.$element.prop('disabled', false);
			this._resetClasses();
			this.$element.trigger('enabled.fu.checkbox');
		},

		disable: function () {
			this.state.disabled = true;
			this.$element.prop('disabled', true);
			this.$element.attr('disabled', 'disabled');
			this._setDisabledClass();
			this.$element.trigger('disabled.fu.checkbox');
		},

		check: function () {
			this.state.checked = true;
			this.$element.prop('checked', true);
			this.$element.attr('checked', 'checked');
			this._setCheckedClass();
			this.$element.trigger('checked.fu.checkbox');
		},

		uncheck: function () {
			this.state.checked = false;
			this.$element.prop('checked', false);
			this.$element.removeAttr('checked');
			this._resetClasses();
			this.$element.trigger('unchecked.fu.checkbox');
		},

		isChecked: function () {
			return this.state.checked;
		},

		toggle: function (e) {
			//keep checkbox from being used if it is disabled. You can't rely on this.state.disabled, because on bind time it might not be disabled, but, state.disabled may be set to true after bind time (and this.state.disabled won't be updated for this bound instance)
			//To see how this works, uncomment the next line of code and go to http://0.0.0.0:8000/index.html click the "disable #myCustomCheckbox1" and then click on the first checkbox and see the disparity in the output between this.state and this.$element.attr
			//console.log('is disabled? this.state says, "' + this.state.disabled + '"; this.$element.attr says, "' + this.$element.attr('disabled') + '"');
			if (/* do not change this to this.state.disabled. It will break edge cases */ this.$element.prop('disabled')) {
				return;
			}

			//keep event from firing twice in Chrome
			if (!e || (e.target === e.originalEvent.target)) {
				this.state.checked = !this.state.checked;

				this._toggleCheckedState();

				if (Boolean(e)) {
					//stop bubbling, otherwise event fires twice in Firefox.
					e.preventDefault();
					//make change event still fire (prevented by preventDefault to avoid firefox bug, see preceeding line)
					this.$element.trigger('change', e);
				}

			}
		},

		toggleContainer: function () {
			if (Boolean(this.$toggleContainer)) {
				if (this.state.checked) {
					this.$toggleContainer.removeClass('hide hidden');
					this.$toggleContainer.attr('aria-hidden', 'false');
				} else {
					this.$toggleContainer.addClass('hidden');
					this.$toggleContainer.attr('aria-hidden', 'true');
				}

			}
		},

		itemchecked: function (element) {
			this.setState($(element.target));
		},

		destroy: function () {
			this.$parent.remove();
			// remove any external bindings
			// [none]
			// empty elements to return to original markup
			// [none]
			return this.$parent[0].outerHTML;
		},

		_resetClasses: function () {
			var classesToRemove = [];

			if (!this.state.checked) {
				classesToRemove.push('checked');
			}

			if (!this.state.disabled) {
				classesToRemove.push('disabled');
			}

			classesToRemove = classesToRemove.join(' ');

			this.$label.removeClass(classesToRemove);

			if (this.$parent) {
				this.$parent.removeClass(classesToRemove);
			}
		},

		_toggleCheckedState: function () {
			if (this.state.checked) {
				this.check();
			} else {
				this.uncheck();
			}
		},

		_toggleDisabledState: function () {
			if (this.state.disabled) {
				this.disable();
			} else {
				this.enable();
			}
		},

		_setCheckedClass: function () {
			this.$label.addClass('checked');

			if (this.$parent) {
				this.$parent.addClass('checked');
			}
		},

		_setDisabledClass: function () {
			this.$label.addClass('disabled');

			if (this.$parent) {
				this.$parent.addClass('disabled');
			}
		}
	};


	// CHECKBOX PLUGIN DEFINITION

	$.fn.checkbox = function (option) {
		var args = Array.prototype.slice.call(arguments, 1);
		var methodReturn;

		var $set = this.each(function () {
			var $this = $(this);
			var data = $this.data('fu.checkbox');
			var options = typeof option === 'object' && option;

			if (!data) {
				$this.data('fu.checkbox', (data = new Checkbox(this, options)));
			}

			if (typeof option === 'string') {
				methodReturn = data[option].apply(data, args);
			}
		});

		return (methodReturn === undefined) ? $set : methodReturn;
	};

	$.fn.checkbox.defaults = {};

	$.fn.checkbox.Constructor = Checkbox;

	$.fn.checkbox.noConflict = function () {
		$.fn.checkbox = old;
		return this;
	};

	// DATA-API

	$(document).on('mouseover.fu.checkbox.data-api', '[data-initialize=checkbox]', function (e) {
		var $control = $(e.target).closest('.checkbox').find('[type=checkbox]');
		if (!$control.data('fu.checkbox')) {
			$control.checkbox($control.data());
		}
	});

	// Must be domReady for AMD compatibility
	$(function () {
		$('[data-initialize=checkbox] [type=checkbox]').each(function () {
			var $this = $(this);
			if (!$this.data('fu.checkbox')) {
				$this.checkbox($this.data());
			}
		});
	});

	// -- BEGIN UMD WRAPPER AFTERWORD --
}));
// -- END UMD WRAPPER AFTERWORD --


/* ==========================================================
 * bootstrap-formhelpers-number.js
 * https://github.com/vlamanna/BootstrapFormHelpers
 * ==========================================================
 * Copyright 2012 Vincent Lamanna
 * ========================================================== */

+function ($) {

  'use strict';


  /* NUMBER CLASS DEFINITION
   * ====================== */

  var BFHNumber = function (element, options) {
    this.options = $.extend({}, $.fn.bfhnumber.defaults, options);
    this.$element = $(element);

    this.initInput();
  };

  BFHNumber.prototype = {

    constructor: BFHNumber,

    initInput: function() {
      var value;
      
      if (this.options.buttons === true) {
        this.$element.wrap('<div class="calc-input-group"></div>');
        this.$element.parent().append('<span class="input-group-addon bfh-number-btn dec"><span class="minus">-</span></span>');
        this.$element.parent().append('<span class="input-group-addon bfh-number-btn inc"><span class="plus">+</span></span>');
      }
      
      this.$element.on('change.bfhnumber.data-api', BFHNumber.prototype.change);
        
      if (this.options.keyboard === true) {
        this.$element.on('keydown.bfhnumber.data-api', BFHNumber.prototype.keydown);
      }
      
      if (this.options.buttons === true) {
        this.$element.parent()
          .on('mousedown.bfhnumber.data-api', '.inc', BFHNumber.prototype.btninc)
          .on('mousedown.bfhnumber.data-api', '.dec', BFHNumber.prototype.btndec);
      }
      
      this.formatNumber();
    },
    
    keydown: function(e) {
      var $this;
      
      $this = $(this).data('bfhnumber');
      
      if ($this.$element.is('.disabled') || $this.$element.attr('disabled') !== undefined) {
        return true;
      }
      
      switch (e.which) {
        case 38:
          $this.increment();
          break;
        case 40:
          $this.decrement();
          break;
        default:
      }
      
      return true;
    },
    
    mouseup: function(e) {
      var $this,
          timer,
          interval;
      
      $this = e.data.btn;
      timer = $this.$element.data('timer');
      interval = $this.$element.data('interval');
      
      clearTimeout(timer);
      clearInterval(interval);
    },
    
    btninc: function() {
      var $this,
          timer;
      
      $this = $(this).parent().find('.bfh-number').data('bfhnumber');
      
      if ($this.$element.is('.disabled') || $this.$element.attr('disabled') !== undefined) {
        return true;
      }
      
      $this.increment();
      
      timer = setTimeout(function() {
        var interval;
        interval = setInterval(function() {
          $this.increment();
        }, 80);
        $this.$element.data('interval', interval);
      }, 750);
      $this.$element.data('timer', timer);
      
      $(document).one('mouseup', {btn: $this}, BFHNumber.prototype.mouseup);
      
      return true;
    },
    
    btndec: function() {
      var $this,
          timer;
      
      $this = $(this).parent().find('.bfh-number').data('bfhnumber');
      
      if ($this.$element.is('.disabled') || $this.$element.attr('disabled') !== undefined) {
        return true;
      }
      
      $this.decrement();
      
      timer = setTimeout(function() {
        var interval;
        interval = setInterval(function() {
          $this.decrement();
        }, 80);
        $this.$element.data('interval', interval);
      }, 750);
      $this.$element.data('timer', timer);
      
      $(document).one('mouseup', {btn: $this}, BFHNumber.prototype.mouseup);
      
      return true;
    },
    
    change: function() {
      var $this;

      $this = $(this).data('bfhnumber');

      if ($this.$element.is('.disabled') || $this.$element.attr('disabled') !== undefined) {
        return true;
      }

      $this.formatNumber();

      return true;
    },
    
    increment: function() {
      var value;
      
      value = this.getValue();
      
      value = value + 1;
      
      this.$element.val(value).change();
    },
    
    decrement: function() {
      var value;
      
      value = this.getValue();
      
      value = value - 1;
      
      this.$element.val(value).change();
    },
    
    getValue: function() {
      var value;
      
      value = this.$element.val();
      if (value !== '-1') {
        value = String(value).replace(/\D/g, '');
      }
      if (String(value).length === 0) {
        value = this.options.min;
      }
      
      return parseInt(value);
    },
    
    formatNumber: function() {
      var value,
          maxLength,
          length,
          zero;
      
      value = this.getValue();
      
      if (value > this.options.max) {
        if (this.options.wrap === true) {
          value = this.options.min;
        } else {
          value = this.options.max;
        }
      }
      
      if (value < this.options.min) {
        if (this.options.wrap === true) {
          value = this.options.max;
        } else {
          value = this.options.min;
        }
      }
      
      if (this.options.zeros === true) {
        maxLength = String(this.options.max).length;
        length = String(value).length;
        for (zero=length; zero < maxLength; zero = zero + 1) {
          value = '0' + value;
        }
      }
      
      if (value !== this.$element.val()) {
        this.$element.val(value);
      }
    }

  };

  /* NUMBER PLUGIN DEFINITION
   * ======================= */

  var old = $.fn.bfhnumber;

  $.fn.bfhnumber = function (option) {
    return this.each(function () {
      var $this,
          data,
          options;

      $this = $(this);
      data = $this.data('bfhnumber');
      options = typeof option === 'object' && option;

      if (!data) {
        $this.data('bfhnumber', (data = new BFHNumber(this, options)));
      }
      if (typeof option === 'string') {
        data[option].call($this);
      }
    });
  };

  $.fn.bfhnumber.Constructor = BFHNumber;

  $.fn.bfhnumber.defaults = {
    min: 0,
    max: 9999,
    zeros: false,
    keyboard: true,
    buttons: true,
    wrap: false
  };


  /* NUMBER NO CONFLICT
   * ========================== */

  $.fn.bfhnumber.noConflict = function () {
    $.fn.bfhnumber = old;
    return this;
  };


  /* NUMBER DATA-API
   * ============== */

//  $(document).ready( function () {
//    $('form input[type="text"].bfh-number, form input[type="number"].bfh-number').each(function () {
//      var $number;
//
//      $number = $(this);
//
//      $number.bfhnumber($number.data());
//    });
//  });


  /* APPLY TO STANDARD NUMBER ELEMENTS
   * =================================== */


}(window.jQuery);
