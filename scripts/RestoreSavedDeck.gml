//Скрипт возвращает значения колоды до их изменения, и переключает вкладку на выбранную колоду
var PressedDeckID = argument0;

with (obj_Deck)
{
    if Active
    {  
        if New
        {
            obj_GameController.BlockAll = true;
            obj_DeckManager.DecksCount -= 1;
            Deleted = true;
            btn_SaveDeck.Active = false;
            btn_SaveDeck.visible = false;
            obj_GameController.ProgramClick = true;
            event_perform(ev_mouse, ev_left_release);
            obj_GameController.ProgramClick = false; 
        }
        else
        {
            obj_GameController.BlockAll = true; 
            DeckName = SavedDeckName;
            CardsInDeck = SavedCardsInDeck;
            btn_SaveDeck.Active = false;
            btn_SaveDeck.visible = false;
            
            for (var i = 0; i <= (global.MaxDeck - 1); i += 1)
            {        
                CardsID[i] = SavedCardsID[i];        
            }  
        }      
    }
    
}

with (obj_Deck)
{   
    if !Deleted
    {
        if id = obj_DeckManager.PressedDeckID
        {
            Active = true;
            obj_GameController.ProgramClick = true;
            event_perform(ev_mouse, ev_left_release); 
            obj_GameController.ProgramClick = false;
        }
        else
        {
            Active = false;
        }
    }
}

script_execute(SetCardInDeckVision);
