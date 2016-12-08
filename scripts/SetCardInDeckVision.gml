obj_DeckManager.TempCardsID[0] = "";
var DeckFounded = false;
with (obj_Deck) //Находим колоду, которая в данный момент активна
{
    if Active
    {
        DeckFounded = true;
        for (var i = 0; i <=14; i = i + 1)
        { 
            obj_DeckManager.TempCardsID[i] = CardsID[i];    
        } 
    }
}
var YetInDeck = false;

if DeckFounded
{
    with (obj_CardOnPage) //Ищем карту в найденной активной колоде
    {
        
        for (i = 0; i <=14; i = i + 1)
        {
            YetInDeck = false;
            //show_message(string(CardID) + " " + string(obj_DeckManager.TempCardsID[i])); 
            
            if real(CardID) = real(obj_DeckManager.TempCardsID[i]) //Если карта найдена
            {        
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
