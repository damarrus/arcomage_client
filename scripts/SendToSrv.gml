

data = json_encode(global.JSmap); //кодируем наш словарь в переменную data в формате JSON 

buffer_delete(global.buff);
global.buff = buffer_create(1, buffer_grow, 1);
buffer_seek(global.buff, buffer_seek_start, 0);
buffer_write(global.buff, buffer_string, data);

network_send_raw(global.client, global.buff, buffer_get_size(global.buff)); //отправляем буфер на серв
