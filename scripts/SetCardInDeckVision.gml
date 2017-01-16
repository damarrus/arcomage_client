var DeckFounded = false;
var YetInDeck;

if obj_DeckListLens.DeckName != ""
{
    with (obj_CardOnPage) //Ищем карту в найденной активной колоде
    {
        
        for (var i = 0; i <=(global.MaxDeck - 1); i = i + 1)
        {
            YetInDeck = false;
            
            if real(CardID) = real(obj_DeckListLens.DeckCards[i]) //Если карта найдена
            {
                //show_message(string(CardID) + " " + string(obj_DeckListLens.DeckCards[i]));
                YetInDeck = true;
                break;   
            }
    
        }
        
        if YetInDeck
        {
            CardSpIndex = 1;
        }
        else
        {
            CardSpIndex = 0;   
        }
        
    }
}
else
{
    script_execute(ClearPage);
    script_execute(ShowCardPage);
}
