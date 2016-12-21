var CardsIds = "";
with (obj_Deck)
{

    if Active
    {
        SavedDeckName = DeckName;
        SavedCardsInDeck = CardsInDeck;
        for (var i = 0; i <= (global.MaxDeck - 1); i += 1)
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
        
        var DeckString = "";
        if !New
        {
            for (i = 0; i < obj_DeckManager.DecksCount; i += 1)
            {
                DeckString = obj_DeckManager.Decks[i];
                CheckString = string(DeckID) + "," + DeckName;
                var MC;
                MC[0] = "";
                MC = script_execute(ParseCollection,obj_DeckManager.Decks[i]);
                if string_count(CheckString, DeckString) > 0 and real(MC[0]) = DeckID
                {
                    obj_DeckManager.Decks[i] = string(DeckID) + "," + DeckName + "," + CardsIds;     
                }    
            }
        }
        else
        {
            obj_DeckManager.Decks[obj_DeckManager.DecksCount - 1] = string(DeckID) + "," + DeckName + "," + CardsIds;    
        }
        
        New = false;   
                         
    }    

}


