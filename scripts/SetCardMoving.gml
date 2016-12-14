//argument0 - DestinationX
//argument1 - DestinationY
//argument2 - Коэффициент скорости (чем меньше, тем скорость выше)
visible         = true;
DestinationX    = argument0;
DestinationY    = argument1;
Moving          = true;
MoveSpeedX      = (DestinationX - x) / argument2; 
MoveSpeedY      = (DestinationY - y) / argument2;

if object_index = obj_Card
{
depth           = -2 - obj_GameController.PlayedCardsCount;
}
