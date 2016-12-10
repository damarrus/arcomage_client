with (obj_Deck)
{
    if Active
    {
        if CardsInDeck = global.MaxDeck and btn_SaveDeck.visible = false
        {
            global.DeckForGame = DeckID;                          
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


