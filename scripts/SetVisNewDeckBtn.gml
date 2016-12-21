//argument0 - true если надо показать, false - спрятать
if argument0
{
    if obj_DeckManager.DecksCount <= 10
    {
        with btn_NewDeck
        {
            Active = true;
            visible = true;
            
            x = obj_DeckManager.DecksListX;
            y = 10 + obj_DeckManager.DecksListY + (obj_DeckManager.DecksListYDist + sprite_get_height(sp_Deck)) * (obj_DeckManager.DecksCount); 
        }
    }
}
else
{
    with btn_NewDeck
    {
        Active = false;
        visible = false;
        x = obj_DeckManager.DecksListX;
        y = 10 + obj_DeckManager.DecksListY + (obj_DeckManager.DecksListYDist + sprite_get_height(sp_Deck)) * (obj_DeckManager.DecksCount); 
    }    
}
