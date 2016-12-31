//Создает подключение

ini_open("Settings.ini");
var Host = ini_read_string("Network", "url", "0"),
    Port = ini_read_real("Network", "port", 0);

if Host = "0"
{
    ini_write_string("Network", "url","localhost");
    Host = "localhost";
}

if Port = 0
{
    ini_write_real("Network", "port", 5000);
    Port = 5000;
}
ini_close();

global.client = network_create_socket(network_socket_tcp);
global.connection = network_connect_raw(global.client, Host, round(Port));
//global.connection = network_connect_raw(global.client, "arcomage.hopto.org", 80);
//Создание буфера
global.buff = buffer_create(1, buffer_grow, 1);
