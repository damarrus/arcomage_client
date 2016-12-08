with (obj_Deck)
{
    if Active
    {
        if CardsInDeck = 15 and btn_SaveDeck.visible = false
        {
            global.DeckForGame = DeckID;                          
        }
        else if btn_SaveDeck.visible
        {
            ShowMiniWarn("U have unsaved changes");
        } 
        else if CardsInDeck != 15 
        {
            ShowMiniWarn("Deck isnt full");
        }
    }

       

}


