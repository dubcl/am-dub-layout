//
// Attract-Mode Front-End - "DUB" layout
// Based on "Basic" sample layout
//
fe.layout.width=640;
fe.layout.height=480;

local t = fe.add_artwork( "snap", 348, 152, 262, 262 );
t.trigger = Transition.EndNavigation;

t = fe.add_artwork( "marquee", 348, 64, 262, 72 );
t.trigger = Transition.EndNavigation;

//listbox
local lb = fe.add_listbox( 32, 64, 262, 352 );
lb.charsize = 16
lb.align = Align.Left;
lb.set_selbg_rgb( 0, 255, 0 );
lb.set_sel_rgb( 0, 0, 0 );
lb.sel_style = Style.Bold;

fe.add_image( "bg.png", 0, 0 );

//title word
local l = fe.add_text( "[DisplayName]", 0, 15, 640, 30 );
l.set_rgb( 200, 200, 70 );
l.style = Style.Bold;

// The following function tells the frontend to use our title
// text and listbox (created above) for any menus (exit menu,
// etc...
//
fe.overlay.set_custom_controls( l, lb );

// Left side:

l = fe.add_text( "Rom Name: [Name]", 30, 424, 320, 16 );
l.charsize = 14
l.set_rgb( 200, 200, 70 );
l.align = Align.Left;

l = fe.add_text( "[Year] [Manufacturer]", 30, 441, 320, 16 );
l.charsize = 14
l.set_rgb( 200, 200, 70 );
l.align = Align.Left;

l = fe.add_text( "[Category]", 30, 458, 320, 16 );
l.charsize = 12
l.set_rgb( 200, 200, 70 );
l.align = Align.Left;

// Right side:

l = fe.add_text( "[PlayedCount]", 320, 424, 290, 16 );
l.charsize = 14
l.set_rgb( 200, 200, 70 );
l.align = Align.Right;

l = fe.add_text( "[FilterName]", 320, 441, 290, 16 );
l.charsize = 14
l.set_rgb( 200, 200, 70 );
l.align = Align.Right;