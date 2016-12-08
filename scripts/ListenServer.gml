//Скрипт вызывается из гейм-контреллера на событие networking
//Если поступил любой шлак с сервера его надо обработать
 

global.SrvAnswer = ds_map_find_value(async_load, "buffer"); //Считываем ответ в переменную
var BufferString = buffer_read(global.SrvAnswer, buffer_string); //Конвертируем ответ в строку
//show_message(BufferString);

var MC;
MC[0] = "";

MC = script_execute(AnalyzeBuffer, BufferString);
var j = array_length_1d(MC) - 1;


for (i = 0; i <= j; i = i + 1)
{
    
    ds_map_clear(global.JSmap); //Очищаем словарь
    //if MC[i] <> "" and room = 1 {show_message(MC[i]);}
    global.JSmap = json_decode(MC[i]); //Перекодируем строку ответа в словарь
    if (ds_map_find_value(global.JSmap, "messageType") <> undefined)
    {
        script_execute(AnalyzeJSmap); //анализируем полученную инфу
    }
    MC[i] = "";
}






