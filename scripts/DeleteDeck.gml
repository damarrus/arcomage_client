var CardsIds = "";
obj_GameController.BlockAll = true;
with (obj_Deck)
{
    if Active
    {
        var Found = false;
        for (var i = 0; i < obj_DeckManager.DecksCount; i += 1)
        {
            if Found 
            {
                var MC;
                MC[0] = "";
                MC = script_execute(ParseCollection, obj_DeckManager.Decks[i]);
                MC[0] = string(real(MC[0]) - 1);
                obj_DeckManager.Decks[i-1] = "";
                for (var j = 0; j <= array_length_1d(MC) - 1; j += 1)
                {
                    obj_DeckManager.Decks[i-1] = obj_DeckManager.Decks[i-1] + string(MC[j]) + ",";
                }
                string_delete(obj_DeckManager.Decks[i-1], string_length(obj_DeckManager.Decks[i-1]), 1);
            }
            else
            {
                var MC;
                MC[0] = "";
                MC = script_execute(ParseCollection, obj_DeckManager.Decks[i]);
                if MC[0] = string(DeckID)
                {
                    Found = true;
                }
            }
            
        } 
        obj_DeckManager.DecksCount -= 1;
        Deleted = true;
        obj_GameController.ProgramClick = true;
        event_perform(ev_mouse, ev_left_release); 
        obj_GameController.ProgramClick = false;
        //script_execute(SetJSmap, "setDeckName", "deck_num", DeckID, "deck_name", DeckName, "", "");
        //script_execute(SendToSrv);   
                         
    }    

}


