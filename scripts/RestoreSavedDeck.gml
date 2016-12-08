//Скрипт возвращает значения колоды до их изменения, и переключает вкладку на выбранную колоду
var PressedDeckID = argument0;

with (obj_Deck)
{
    if Active
    {   
        DeckName = SavedDeckName;
        CardsInDeck = SavedCardsInDeck;
        btn_SaveDeck.visible = false;
        
        for (var i = 0; i <= 14; i += 1)
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
    }
    else
    {
    Active = false;
    }
}

script_execute(CreateCardListFromDeck);
script_execute(SetCardInDeckVision);
