var CloseLayer = function() {
	var old = document.getElementById("zLayer");
	if(old) old.parentNode.removeChild(old)
};

var RenderLayer = function(_e, url, options) {
	zLoading();

	BL = new ButtaLayer(new Eventor(_e), options);

	// define root_container
	BL.define_container();

	// append layer
	BL.render_layer();
	
	// append content
	BL.render_content(url);
	
	// IE6 has weird action...
	// styling
	// BL.position();
	// animating
	// BL.animating();

	// if(BL.options["cbo"] && typeof(BL.options["cbo"]) == "function") BL.options["cbo"]();

	initSmartFocus();
}

var ButtaLayer = function(eventor, options) {
	this.eventor = eventor;
	this.options = options || {};
	this.__doms = {};

	// remove old
	CloseLayer();

	this.touch_elements();
};

ButtaLayer.prototype.define_container = function() {
	var _candidate = document.getElementsByTagName("body")[0]
	// var _candidate = document.getElementById("body");
	this.container = _candidate;
};

ButtaLayer.prototype.render_layer = function() {
	this.wrapper.appendChild(this.header);

	this.wrapper.appendChild(this.body);
	this.wrapper.appendChild(this.footer);

	this.plate.appendChild(this.wrapper);

	this.container.insertBefore(this.plate, this.container.firstChild);
	// this.container.appendChild(this.plate);
};

ButtaLayer.prototype.render_content = function(partial_url) {
	var content = this.__buildContent(partial_url);
	this.body.innerHTML = content.body;

	this.position();
	this.animating();
	this.extra_works();
	eval(content.script);

	//
	initSmartFocus();
	zDone();
};

ButtaLayer.prototype.render_content_by_value = function(value) {
	this.body.innerHTML = value;
};

ButtaLayer.prototype.position = function() {

	var fix_x = this.options['fix_x'] || 0;
	var fix_y = this.options['fix_y'] || 0;;

	if(this.options['fit_to_dom'] || this.options['fit_to_specific_dom']) {
		var _node = (this.options['fit_to_dom']) ? this.eventor._node() : this.options['fit_to_specific_dom']
		var _xy = $(_node).cumulativeOffset();

		var layout_fix_xy = [0, 0];
		switch(this.options['layout']) {
			case "right":
				layout_fix_xy = [_node.offsetWidth, 0];
				break;
			case "leftTop":
				layout_fix_xy = [0, -(_node.offsetHeight)];
				break;
			default:
		}

		this.plate.style.left = (_xy[0] + fix_x + layout_fix_xy[0]) + "px";
		this.plate.style.top = (_xy[1] + fix_y + layout_fix_xy[1]+ _node.clientHeight) + "px";
	}
	else if(this.options['fit_on_center']) {
		var wW = (Browser.safari && !document.evaluate) ? document.innerWidth : (Browser.opera) ? document.body.clientWidth : document.documentElement.clientWidth;
		var wH = (Browser.safari && !document.evaluate) ? document.innerHeight : (Browser.opera) ? document.body.clientHeight : document.documentElement.clientHeight;
		var sT = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
		if(wW < 1) wW = document.body.clientWidth;
		if(wH < 1) wH = document.body.clientHeigth;

		var _cw = (this.options['contentWidth']) ? Number(this.options['contentWidth']) - 2 : 0
		var _ch = (this.options['contentHeight']) ? Number(this.options['contentHeight']) : 0

		_ch = Math.max(_ch, this.plate.offsetHeight);
		// Masked by IE6.
		// _cw = Math.max(_cw, this.plate.offsetWidth);

		var _x = (wW / 2) - (_cw / 2);
		var _y = (wH / 2) + sT - (_ch / 2);

		this.plate.style.width = _cw + "px";
		// this.plate.style.top = (((_y + fix_y < 0) || (_y + fix_y < sT)) ? sT : (_y + fix_y)) + "px";
		this.plate.style.top = sT + 150 + "px";
		this.plate.style.left = (_x + fix_x) + "px";
	}
	else {
		var _cw = (this.options['contentWidth']) ? Number(this.options['contentWidth']) - 2 : 0
		this.plate.style.width = _cw + "px";
		this.plateMoveToXY(this.eventor._mouse(), [fix_x, fix_y]);
	}
};

ButtaLayer.prototype.animating = function() {
	this.plate.style.visibility = "visible";
};

ButtaLayer.prototype.extra_works = function() {
	if(!this.options['solid']) addClass(this.plate, "fragile do_destroy");
	if(this.options['extraClass']) addClass(this.plate, this.options['extraClass']);
	if(this.options['closer']) this.__addCloser();
	if(this.options['title']) {
		this.header.innerHTML = "<div class='title'>" + this.options['title'] + "</div>"
	}

	if(!this.options['nodrag']) _T = new Draggable(this.plate.id)
	// _T = new Draggable(this.header.id)
};


//
// workers
ButtaLayer.prototype.__buildElement = function(id, options) {
	if(!this.__doms[id]) {
		var _element = document.createElement("div");
		_element.id = this.ids[id] || id;
		if(this.classes[id]) _element.className = this.classes[id];
		_styles = this.styles[id] || options["styles"];
		for(var _key in _styles) {
			try {
				_element.style[_key] = _styles[_key];
			} catch(e) {
				//
			}
		}
		this.__doms[id] = _element;
	}

	return this.__doms[id];
};

ButtaLayer.prototype.__buildContent = function(partial_url) {
	var _res = new zAjax().send({
		url: FULL_URL +  partial_url,
		sync: true,
		method: this.options['method'] || "GET",
		success: Bind(this, function(xhr) {
			// var response = eval("(" + xhr.responseText + ")");
			// if(response.version) this.manifestVersion = response.version
		}),
		failure: function(xhr) {
			// fail;
		}
	})

	var __script = "";
	var __content = _res.responseText.replace(/[\r\n]+/ig, '');
	var _m = null;
	var _p = /<script[^>]*>(.*?)(?:<\/script>)/gi;
	while(_m = _p.exec(__content)) __script += ";" + _m.last();

	return { body: __content, script: __script };
};

ButtaLayer.prototype.__addCloser = function() {
	// var __close_image = document.createElement("img");
	// __close_image.src = "/images/btn_close.gif";
	// __close_image.className = "fragileBreaker";
	// __close_image.style.position = "absolute";
	// __close_image.style.right = "0px";
	// __close_image.style.margin = "5px";
	// __close_image.style.cursor = "pointer";

	// this.plate.insertBefore(__close_image, this.wrapper);

	try {
	//var close_button = "닫기";
	if(/img/.test(this.options['closer'])) {
		var close_button = this.options['closer'];
	}
	__close_action = (this.options['before_close'] ? this.options['before_close'] : "" ) + ";CloseLayer();"
	__close_link = document.createElement("div");
	__close_link.innerHTML = "<span onclick='" + __close_action+ "'>" + "<img src='/images/btn_close.gif'>" + "</span>";
	__close_link.className = "bl_closer";

	this.wrapper.insertBefore(__close_link.cloneNode(true), this.header);
	// this.wrapper.appendChild(__close_link);
	} catch(e) {
		alert(e.message);
	}
};

ButtaLayer.prototype.close = function() {
	this.plate.parentNode.removeChild(this.plate);
};

ButtaLayer.prototype.touch_elements = function() {
	for(var id in this.ids) this[id] = this.__buildElement(id);
};

ButtaLayer.prototype.plateMoveToXY = function(_xy, _fix_xy) {
	var wW = (Browser.safari && !document.evaluate) ? document.innerWidth : (Browser.opera) ? document.body.clientWidth : document.documentElement.clientWidth;
	var wH = (Browser.safari && !document.evaluate) ? document.innerHeight : (Browser.opera) ? document.body.clientHeight : document.documentElement.clientHeight;
	if(wW < 1) wW = document.body.clientWidth;
	if(wH < 1) wH = document.body.clientHeigth;

	var st = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;

  var _x = _xy._x;
  var _y = _xy._y + st;

	// BEWARE!
	// MAGIC HERE!
	if(_x > ((wW / 2))) _x = _x - this.plate.offsetWidth;
	// if(_y > (wH / 2)) _y = _y - this.plate.offsetHeight;

  this.plate.style.top = (_y + _fix_xy[1]) + "px";
  this.plate.style.left = (_x + _fix_xy[0]) + "px";

};

//
// dirty configures
ButtaLayer.prototype.ids = {
	plate: "bl_plate", //_" + new Date().getTime(),
	wrapper: "bl_wrapper",
	header: "bl_header",
	body: "bl_body",
	footer: "bl_footer"
};

ButtaLayer.prototype.classes = {
	// plate: "bl_plate fragile do_destroy",
	plate: "bl_plate",
	wrapper: "bl_wrapper",
	header: "bl_header",
	body: "bl_body",
	footer: "bl_footer"
};

ButtaLayer.prototype.styles = {
	plate: {
		position: "absolute",
		zIndex: "997",
		visibility: "hidden",
		paddingBottom: "0"
	},
	wrapper: {
	},
	header: {
		width: "100%"
	},
	body: {
	},
	footer: {
	}
};
