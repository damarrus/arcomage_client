CardsOnPage = obj_DeckManager.CardsInRow * obj_DeckManager.CardsInCol; //Всего картишек на листе

From = obj_DeckManager.Page * CardsOnPage - (CardsOnPage - 1) - 1; //Определяем начальный id карты с которого начнем лист  

if global.DatabaseCardsCount < obj_DeckManager.Page * CardsOnPage
{
    To = obj_DeckManager.CollectionCardsCount - 1;
}
else
{
    To = obj_DeckManager.Page * CardsOnPage - 1;
}

var i = 1;

jEnd = array_length_1d(obj_DeckManager.CardCollection);
 

for (j = 0; j < jEnd; j = j + 1)
{
          
    if j >= From and j <=To
    {   
        script_execute(GetCardFromDBbyID, obj_DeckManager.CardCollection[j]);        
        script_execute(SetCurrCard, false);
        script_execute(CreateCardAtDeckManager, i);
        i += 1;
          
    }    
     
}



