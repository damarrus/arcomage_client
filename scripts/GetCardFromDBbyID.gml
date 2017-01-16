//argument0 - ID карты которую нужно найти
//После нахождения помещает результат JSON в JSmap
//argument1 - тип прихода карты - random/opponent

var StringForSearch = "card_id" + chr(34) + ": " + string(argument0) + ".";

var CardDatabase = file_text_open_read("CardDB.adbf");
while !file_text_eof(CardDatabase)
{
    var StringOfFile = file_text_read_string(CardDatabase);
    
    if string_pos(StringForSearch, StringOfFile) > 0
    {    
        global.JSmap = json_decode(StringOfFile);
        ds_map_replace(global.JSmap, "messageType", argument1);
        break;    
    }
    file_text_readln(CardDatabase);
         

}
file_text_close(CardDatabase);
