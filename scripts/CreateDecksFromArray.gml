var DecksCount = obj_DeckManager.DecksCount;
var DeckArray;

DeckArray[0] = "";
for (var i = 0; i < DecksCount; i += 1)  //Начинаем перебирать массив с колодами
{    
    DeckArray = script_execute(ParseCollection, obj_DeckManager.Decks[i]);
    obj_DeckManager.CurrentDeckNum = real(DeckArray[0]); 
    obj_DeckManager.CurrentDeckName = DeckArray[1];
    for (var j = 2; j <= array_length_1d(DeckArray) -1; j += 1)
    {
        obj_DeckManager.CurrentDeckCards[j-2] = real(DeckArray[j]);
    } 
    instance_create(obj_DeckManager.DecksListX, obj_DeckManager.DecksListY + (obj_DeckManager.DecksListYDist + sprite_get_height(sp_Deck)) * i, obj_Deck); 
    
    for (var j = 0; j <= (global.MaxDeck - 1); j += 1)
    {
        obj_DeckManager.CurrentDeckCards[j] = 0;   
    }
}




