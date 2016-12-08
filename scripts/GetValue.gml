j = argument0;
EndCharPos = 0;
test = "";
while 1 = 1
{
    test = string_char_at(argument1,j);
    if (string_char_at(argument1,j) = "," or string_char_at(argument1,j) = "}")
    {
    
    EndCharPos = j;
    return EndCharPos;
    }
    else
    {
    j = j + 1;
    }
}
