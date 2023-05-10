draw_set_color(c_white);
draw_set_font(ft_marineconstellation);
var xdraw = 10;
var ydraw = 10;
var interval = 80;
iterate stats to {
	draw_meaning(xdraw, ydraw+i*interval, stats[i].name, u, 2);
	draw_meaning(xdraw, ydraw+i*interval+interval/3, "|  "+string(stats[i].val), u, 2);
}

draw_set_halign(fa_right);
iterate thelog to {
	draw_meaning(room_width-xdraw, ydraw+i*(interval/2), thelog[i]+"<", u, 2, u, u, 1-i/12);
}
draw_set_halign(fa_left);