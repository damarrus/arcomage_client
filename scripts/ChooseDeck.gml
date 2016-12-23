with (obj_Deck)
{
    if Active
    {
        if CardsInDeck = global.MaxDeck and btn_SaveDeck.visible = false
        {
            global.DeckForGame = DeckID; 
            ini_open(global.PLogin + "/Settings.ini");
            ini_write_real("DeckForGame", "ChoseDeck", real(DeckID));
            ini_close();                         
        }
        else if btn_SaveDeck.visible
        {
            ShowMiniWarn("U have unsaved changes");
        } 
        else if CardsInDeck != global.MaxDeck 
        {
            ShowMiniWarn("Deck isnt full");
        }
    }

       

}


