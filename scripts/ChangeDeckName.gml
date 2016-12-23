//Скрипт возвращает значения колоды до их изменения, и переключает вкладку на выбранную колоду
var PressedDeckID = argument0;

with (obj_Deck)
{
    if Active
    {  
        if New
        {
            script_execute(ChangeDeckNameInManager);
        }
        else
        {
            script_execute(ChangeDeckNameInManager);
        }      
    }
    
}

