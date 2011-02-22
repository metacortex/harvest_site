zLayer = {}
zLayer.open = function(url, ev) {
	var target = !ev ? null : ev.element ? ev.element() : $(ev);
	zLayer.close();
	new zlayer(url, target);
};
zLayer.close = function() {
	var opened = $('zlayer');
	if(opened) opened.parentNode.removeChild(opened);
};

zlayer = function(url, target) {
	this.target = target;
	this.plate = document.createElement("div");
	this.plate.id = "zlayer";
	this.plate.style.position = "absolute";
	this.plate.style.zIndex = "5001";
	this.plate.style.visibility = "hidden";
	this.plate.style.backgroundColor = "#FFFFFF";
	this.plate.style.borderWidth = "1px";
	this.plate.style.borderStyle = "solid";
	this.plate.style.borderColor = "#e7e7e7";

	this.header = document.createElement("div");
	this.header.id = "zlayer_handle";
	this.header.style.border = "1px solid #B4BBCD";
	this.header.style.height = "25px";
	this.header.style.background = "url(/images/icn_handle.gif) no-repeat 50% 50% #e7e7e7";
	this.header.innerHTML = "<img src='/images/icon_destroy.gif' onclick='zLayer.close();' style='cursor:pointer;position:absolute;top:6px;right:6px'>";

	this.body = document.createElement("div");
	this.body.style.border = "1px solid #B4BBCD";
	this.body.style.borderTop = "none";
	this.body.style.padding = "10px 20px";

	this.plate.appendChild(this.header);
	this.plate.appendChild(this.body);

	new Ajax.Request(url, {
		method: 'get',
		onSuccess: function(response) {
			this.render(response.responseText);
		}.bind(this)
	});
};

zlayer.prototype.render = function(content) {
	this.body.innerHTML = content;
	this.container = document.getElementsByTagName("body")[0];
	this.container.insertBefore(this.plate, this.container.firstChild);
	this.positioning();
};

zlayer.prototype.positioning = function() {
	var pt_dm = this.plate.getDimensions();
	var vp_dm = document.viewport.getDimensions();
	var vp_sc = document.viewport.getScrollOffsets();
	console.log(pt_dm);
	console.log(vp_dm);
	console.log(vp_sc);

	var tg_xy = {left:0, top:0};
	if(this.target) {
		tg_xy = $(this.target).cumulativeOffset();
	} else {
		tg_xy.left = (vp_dm.width / 2) - (pt_dm.width / 2);
		tg_xy.top = (vp_dm.height / 2) - (pt_dm.height / 2) + vp_sc[1];
	}

	this.plate.style.left = (tg_xy.left + 5) + "px";
	this.plate.style.top = (tg_xy.top + 5) + "px";
	if(tg_xy.left + pt_dm.width >= vp_dm.width) this.plate.style.left = (tg_xy.left - pt_dm.width - 15) + "px";
	if(tg_xy.top + pt_dm.height >= vp_dm.height + vp_sc[1]) {
		var new_top = vp_dm.height + vp_sc[1] - pt_dm.height - 15
		if(new_top < 0) new_top = vp_sc[1] + 15;
		this.plate.style.top = new_top + "px";
	}

	this.plate.style.visibility = "visible";
	initSmartFocus();
	this.plate.style.display = "none";
	Effect.Appear(this.plate, {duration:0.75});
	new Draggable(this.plate, {handle:'zlayer_handle'});
	zDone();
};
