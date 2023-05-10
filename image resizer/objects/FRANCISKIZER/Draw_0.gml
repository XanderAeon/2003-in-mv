draw_set_color(c_white);
var xdraw = 10;
var ydraw = 10;
var interval = 40;
iterate stats to {
	draw_text(xdraw, ydraw+i*interval, stats[i].name);
	draw_text(xdraw, ydraw+i*interval+interval/3, stats[i].val);
}