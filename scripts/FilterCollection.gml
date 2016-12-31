var Result, k = 0;
Result[0] = 0;

for (var j = 0; j < array_length_1d(obj_DeckManager.CardCollection); j += 1)
{
    script_execute(GetCardFromDBbyID, obj_DeckManager.CardCollection[j]);        
    script_execute(SetCurrCard, false);
    var NeedToAdd = true;
    for (var i = 0; i < array_length_1d(obj_DeckManager.Filters); i += 1)
    {
        if obj_DeckManager.Filters[i]
        {
        
            switch i
            {
                case 0: //Наносит урон
                {
                    if  !(obj_CurrentCard.CardEnemyTowerHp < 0 or obj_CurrentCard.CardEnemyWallHp < 0 or obj_CurrentCard.CardEnemyHp < 0) 
                    {NeedToAdd = false;}
                }; break;
                case 1: //Увеличивает твою башню/стену
                {
                    if  !(obj_CurrentCard.CardSelfTowerHp > 0 or obj_CurrentCard.CardSelfWallHp > 0) 
                    {NeedToAdd = false;}
                }; break;
                case 2: //Увеличивает влияет на ресурсы
                {
                    if  !(obj_CurrentCard.CardSelfRes1 <> 0 
                        or obj_CurrentCard.CardSelfRes2 <> 0
                        or obj_CurrentCard.CardSelfRes3 <> 0 
                        or obj_CurrentCard.CardSelfGen1 <> 0 
                        or obj_CurrentCard.CardSelfGen2 <> 0 
                        or obj_CurrentCard.CardSelfGen3 <> 0 
                        or obj_CurrentCard.CardEnemyRes1 <> 0 
                        or obj_CurrentCard.CardEnemyRes2 <> 0 
                        or obj_CurrentCard.CardEnemyRes3 <> 0
                        or obj_CurrentCard.CardEnemyGen1 <> 0 
                        or obj_CurrentCard.CardEnemyGen2 <> 0 
                        or obj_CurrentCard.CardEnemyGen3 <> 0)    
                    {NeedToAdd = false;}
                }; break;
                case 3: //Потребляет первый ресурс
                {
                    if  !(obj_CurrentCard.CardRes1 > 0)    
                    {NeedToAdd = false;}
                }; break;
                case 4: //Потребляет второй ресурс
                {
                    if  !(obj_CurrentCard.CardRes2 > 0)    
                    {NeedToAdd = false;}
                }; break;
                case 5: //Потребляет третий ресурс
                {
                    if  !(obj_CurrentCard.CardRes3 > 0)    
                    {NeedToAdd = false;}
                }; break;
            }
        } 
        
    }
    
    if NeedToAdd
    {
        Result[k] = obj_DeckManager.CardCollection[j];
        k += 1;    
    } 
       
}
obj_DeckManager.LastPage = ((array_length_1d(Result) - 1) div (obj_DeckManager.CardsInRow * obj_DeckManager.CardsInCol)) + 1;

return Result;


