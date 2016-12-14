var Distance = 10, List = ds_priority_create(), ListLength = 0, k = 0;

with obj_CardVision
{
    ds_priority_add(List, id, x);
    k += 1;
}

//Если карты не свернуты - их надо развернуть    
if !obj_GameController.Shrank
{
    ListLength = k * sprite_get_width(sp_Card) + (k - 1) * Distance;
    ListLength = (ListLength / 2) - sprite_get_width(sp_Card)/2;
    k = 0;
    while !ds_priority_empty(List)
    {
        var CurrentCardV = ds_priority_find_max(List); // взяли с макс координатой X
        ds_priority_delete_value(List, CurrentCardV.id); // удалили из списка
        with CurrentCardV.id
        {
            script_execute(SetCardMoving, (obj_TableField.x + ListLength) - k * (sprite_get_width(sp_Card) + Distance), obj_TableField.y, 16);  
            k += 1;
        }
    }    

    obj_GameController.Shrank = true;   
      
}
else
{
    k = obj_GameController.PlayedCardsCount -1;
    
    while !ds_priority_empty(List)
    {
        var CurrentCardV = ds_priority_find_max(List); // взяли с макс координатой X
        ds_priority_delete_value(List, CurrentCardV.id); // удалили из списка
        
        with CurrentCardV.id
        {
            script_execute(SetCardMoving, obj_TableField.x + k * Distance, obj_TableField.y + k * Distance, 16);  
            k -= 1;          
        } 
        obj_GameController.Shrank = false;            
    }
}
