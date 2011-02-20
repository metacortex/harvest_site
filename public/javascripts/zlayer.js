zLayer = {}
zLayer.open = function(ev, url) {
	var target = ev.element ? ev.element() : $(ev);
	zLayer.close();
	new zlayer(target, url);
};
zLayer.close = function() {
	var opened = $('zlayer');
	if(opened) opened.parentNode.removeChild(opened);
};

zlayer = function(target, url) {
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
	this.header.style.position = "absolute";
	this.header.style.right = "-15px";
	this.header.style.top = "-15px";
	this.header.innerHTML = "<img src='/images/close.png' onclick='zLayer.close();' style='cursor:pointer'>"

	this.body = document.createElement("div");
	this.body.style.border = "1px solid #B4BBCD";
	this.body.style.padding = "10px 20px";

	this.plate.appendChild(this.header);
	this.plate.appendChild(this.body);

	this.container = document.getElementsByTagName("body")[0];
	this.container.insertBefore(this.plate, this.container.firstChild);

	new Ajax.Request(url, {
		method: 'get',
		onSuccess: function(response) {
			this.render(response.responseText);
		}.bind(this)
	});
};

zlayer.prototype.render = function(content) {
	this.script = "";
	var html = content.replace(/[\r\n]+/gi, '');
	var _m = null;
	while(_m = /<script[^>]*>(.*?)(?:<\/script>)/gi.exec(html)) this.script += ";" + _m.last();
	this.body.innerHTML = html + "<img src='/images/blank.gif' id='zlayer_watchdog'>";

	this.waitWatchdog();
};

zlayer.prototype.waitWatchdog = function() {
	if(!$('zlayer_watchdog')) setTimeout(this.waitWatchdog.bind(this), 1000);
	else this.positioning();
};

zlayer.prototype.positioning = function() {
	if(!$('zlayer_watchdog').complete) {
		setTimeout(this.positioning.bind(this), 1000);
	} else {
		var pt_dm = this.plate.getDimensions();
		var vp_dm = document.viewport.getDimensions();
		var vp_sc = document.viewport.getScrollOffsets();
		var tg_xy = $(this.target).cumulativeOffset();

		this.plate.style.left = (tg_xy.left + 5) + "px";
		this.plate.style.top = (tg_xy.top + 5) + "px";
		if(tg_xy.left + pt_dm.width >= vp_dm.width) this.plate.style.left = (tg_xy.left - pt_dm.width - 15) + "px";
		if(tg_xy.top + pt_dm.height >= vp_dm.height + vp_sc[1]) {
			var new_top = vp_dm.height + vp_sc[1] - pt_dm.height - 15
			if(new_top < 0) new_top = vp_sc[1] + 15;
			this.plate.style.top = new_top + "px";
		}

		this.plate.style.visibility = "visible";
		new Draggable(this.plate);
		eval(this.script);
		this.script = "";
		zDone();
	}
};
