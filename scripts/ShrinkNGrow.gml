//Если карты не свернуты - их надо развернуть
var Distance = 10;
if !obj_GameController.Shrank
{
    var ListLength = 0, k = 0;
    with obj_CardVision
    {
        k += 1;    
    }
    ListLength = k * sprite_get_width(sp_Card) + (k - 1) * Distance;
    ListLength = (ListLength / 2) - sprite_get_width(sp_Card)/2;
    
    
       
      
}
