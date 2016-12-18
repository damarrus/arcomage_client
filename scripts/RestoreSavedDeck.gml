//Скрипт возвращает значения колоды до их изменения, и переключает вкладку на выбранную колоду
var PressedDeckID = argument0;

with (obj_Deck)
{
    if Active
    {   
        DeckName = SavedDeckName;
        CardsInDeck = SavedCardsInDeck;
        btn_SaveDeck.visible = false;
        
        for (var i = 0; i <= (global.MaxDeck - 1); i += 1)
        {        
            CardsID[i] = SavedCardsID[i];        
        }        
    }
}

with (obj_Deck)
{   
    if id = obj_DeckManager.PressedDeckID
    {
        Active = true;
        event_perform(ev_mouse, ev_left_release); 
       
    }
    else
    {
    Active = false;
    }
}

//script_execute(CreateCardListFromDeck);
script_execute(SetCardInDeckVision);
