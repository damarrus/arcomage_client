//argument0 = id карты
//argument1 = true если это дискард

obj_GameController.PlayedCardsCount += 1;
var i = obj_GameController.PlayedCardsCount - 1;
obj_GameController.PlayedCards[i,0] = argument0;

if argument1
{
    obj_GameController.PlayedCards[i,1] = "discard; ";
}
else
{
    obj_GameController.PlayedCards[i,1] = "";    
}

