draw_text(argument1, argument2, argument0)
draw_rectangle(argument1 + string_width(argument0), argument2,
               argument1 + string_width(argument0) + 5,
               argument2 + string_height(argument0), 0)
if !keyboard_check(vk_nokey) 
    {
    for (i=32; i<127; i+=1)
    {
        if keyboard_check (i)
            {
            argument0 +=chr (i)
            io_clear();
            return argument0
            }}}
return argument0;
