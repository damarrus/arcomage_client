//Создает подключение
global.client = network_create_socket(network_socket_tcp);
global.connection = network_connect_raw(global.client, "localhost", 5000);
//global.connection = network_connect_raw(global.client, "arcomage.hopto.org", 80);
//Создание буфера
global.buff = buffer_create(1, buffer_grow, 1);
