var CardsOnPage = obj_DeckManager.CardsInRow * obj_DeckManager.CardsInCol; //Всего картишек на листе

var From = obj_DeckManager.Page * CardsOnPage - (CardsOnPage - 1) - 1; //Определяем начальный id карты с которого начнем лист  
var To = 0;

var i = 1;
var FilteredCollection = script_execute(FilterCollection);

var jEnd = 0;
jEnd = array_length_1d(FilteredCollection);
var isEmpty = false;
if FilteredCollection[0] = 0
{
    isEmpty = true;    
}

if !isEmpty
{

    if global.DatabaseCardsCount < obj_DeckManager.Page * CardsOnPage
    {
        To = jEnd - 1;
    }
    else
    {
        To = obj_DeckManager.Page * CardsOnPage - 1;
    } 
    
    
    for (var j = 0; j < jEnd; j = j + 1)
    {
              
        if j >= From and j <=To
        {   
            script_execute(GetCardFromDBbyID, FilteredCollection[j]);        
            script_execute(SetCurrCard, false);
            script_execute(CreateCardAtDeckManager, i);
            i += 1;
        }    
         
    }
    
}

//script_execute(CleanMemDll);
