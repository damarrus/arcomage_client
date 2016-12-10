var CardsIds = "";
with (obj_Deck)
{

    if Active
    {
        SavedDeckName = DeckName;
        SavedCardsInDeck = CardsInDeck;
        for (i = 0; i <= (global.MaxDeck - 1); i += 1)
        {
            if i < (global.MaxDeck - 1)
            {
                CardsIds = CardsIds + string(CardsID[i]) + ",";
            }
            else
            {
                CardsIds = CardsIds + string(CardsID[i]);
            }
            
            SavedCardsID[i] = CardsID[i];  
        }
        
        script_execute(SetJSmap, "setDeckCards", "deck_num", DeckID, "card_ids", CardsIds);
        script_execute(SendToSrv);  
        
        script_execute(SetJSmap, "setDeckName", "deck_num", DeckID, "deck_name", DeckName);
        script_execute(SendToSrv);   
                         
    }    

}


