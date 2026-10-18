depth = -9999999;


//textbox parameters
textbox_width = 143;
textbox_height = 47;
border = 6;
line_sep = 12;
line_width = textbox_width - border * 2;
txtb_spr = spr_textbox;
txtb_img = 0;
txtb_img_spd = 6/60; //divided by game frame speed
//the text huzaaah

page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;