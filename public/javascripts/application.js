// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function mOver(n) { $(n).addClassName("hover"); };
function mOut(n) { $(n).removeClassName("hover"); };

function initSortableFolders() {
	Sortable.create("folders", {handle:'order_handle', onUpdate:function(){new Ajax.Request('/sections/1/folders/sort', {asynchronous:true, evalScripts:true, parameters:Sortable.serialize("folders")})}})
};

function updateWHContent() {
	var editor = $$('.editor').first();
	var textarea = $(editor.id.replace(/_editor$/i, ''));
	textarea.value = editor.innerHTML;
};

function resetForm(form_id) {
	if(form_id) {
		document.getElementById(form_id).reset();
	} else {
		var forms = document.getElementsByTagName("form");
		for(var i=0; i<forms.length; i++) forms[i].reset();
	}

	initControlPlaceHolder();
	zDone();
};

function zLoading() {
	var load_bar = document.getElementById("load_bar");
	if(load_bar) {
		if(load_bar.style.display != "block") {
			load_bar.style.display = "block";
			var st = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
			load_bar.style.top = st + "px";
		}
	}
};

function zDone() {
	var load_bar = document.getElementById("load_bar");
	if(load_bar) load_bar.style.display = "none";
};

function initSmartFocus() {
	var _is = $A(document.getElementsByTagName("input")).concat($A(document.getElementsByTagName("textarea")))
	var _i = null;
	while(_i = _is.pop()) {
		if(/smart_focus/.test(_i.className)) {
			_i.blur();
			_i.focus();
			break;
		}
	}
};

function initLoadingImage() {
	var st = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
	var wW = (Prototype.Browser.Webkit && !document.evaluate) ? document.innerWidth : (Prototype.Browser.Opera) ? document.body.clientWidth : document.documentElement.clientWidth;

	var load_bar = document.createElement("img");
	load_bar.className = "fragile do_hide";
	load_bar.id = "load_bar";
	load_bar.style.display = "none";
	load_bar.style.position = "absolute";
	load_bar.style.padding = "10px";
	load_bar.src = "/images/load_bar.gif";
	load_bar.style.backgroundColor = "#333";
	document.getElementsByTagName("body")[0].appendChild(load_bar);
	load_bar.style.top = st + "px"
	load_bar.style.left = ((wW - parseInt(load_bar.offsetWidth)) / 2) - 33 + "px"
};

function ph_node_has_focused(ph) {
	if(ph.value == ph.getAttribute("placeholder")) {
		ph.value = "";
		ph.style.color = "";
		var ph = ph.up("form").down("div.ph_child")
		if(ph) ph.style.display = "block";
	}
};
function ph_node_has_blured(ph) {
	if(/^$/.test(ph.value) && ph.value != ph.getAttribute("placeholder")) {
		ph.style.color = "#c7c7c7";
		ph.value = ph.getAttribute("placeholder");
		var ph = ph.up("form").down("div.ph_child")
		if(ph) ph.style.display = "none";
	}
};

function initControlPlaceHolder() {
	$$(".control_placeholder").each(function(_ph) {
		ph_node_has_blured(_ph);
		_ph.observe("focus", ph_node_has_focused.bind(this,_ph));
		_ph.observe("blur", ph_node_has_blured.bind(this,_ph));
	});
};
function breakLayer(_e) {
	var node = _e.target || _e.srcElement;
	var __ev_refer = node;
	var __evade_case = false;
	do {
		if(/z(_select|Pin_canvas)/i.test(__ev_refer.className)) {
			__evade_case = true;
			break;
		}
	} while(__ev_refer = __ev_refer.parentNode)

	// close layer
	if((!__evade_case && !$(node).up(".fragile")) || /fragileBreaker/i.test(node.className)) {
		$$(".fragile").each(function(_f) {
			if(!_f.clientHeight || _f.clientHeight == 0) return;
			var _method = String(/do_[_a-z]+/i.exec(_f.className));
			switch(_method) {
				case "do_nullify":
					if(_f.innerHTML) _f.innerHTML = "";
					break;
				case "do_destroy":
					if(_f) _f.parentNode.removeChild(_f);
					break;
				case "do_hide":
					if(_f.style.display != "none") _f.style.display = "none"
					break;
				case "do_both":
					if(_f.innerHTML) _f.innerHTML = "";
					_f.style.display = "none";
					_f.style.visibility = "hidden";
					break;
				case "do_function":
					eval(_f.getAttribute("rel"))();
					break;
				default:
					//
			}

		})
	}
};

function initFragileLayer() {
	window.document.stopObserving("mousedown", breakLayer);
	window.document.observe("mousedown", breakLayer);
};
