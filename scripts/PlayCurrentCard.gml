if obj_GameController.IsItMyTime = true
{
   
    obj_GameController.SelfRes1 -= obj_CurrentCard.CardRes1;  
    obj_GameController.SelfRes2 -= obj_CurrentCard.CardRes2;  
    obj_GameController.SelfRes3 -= obj_CurrentCard.CardRes3;  
    
    //Обрабатываем свои ресурсы/генеры
    obj_GameController.SelfGen1 += obj_CurrentCard.CardSelfGen1;
    //show_message(obj_GameController.SelfGen1);
    if obj_GameController.SelfGen1 < 2 {obj_GameController.SelfGen1 = 1};  
    obj_GameController.SelfGen2 += obj_CurrentCard.CardSelfGen2;
    //show_message(obj_GameController.SelfGen2);
    if obj_GameController.SelfGen2 < 2 {obj_GameController.SelfGen2 = 1};  
    obj_GameController.SelfGen3 += obj_CurrentCard.CardSelfGen3;
    //show_message(obj_GameController.SelfGen3);
    if obj_GameController.SelfGen3 < 2 {obj_GameController.SelfGen3 = 1};     
    obj_GameController.SelfRes1 += obj_CurrentCard.CardSelfRes1;
    //show_message(obj_GameController.SelfRes1);
    if obj_GameController.SelfRes1 < 0 {obj_GameController.SelfRes1 = 0};   
    obj_GameController.SelfRes2 += obj_CurrentCard.CardSelfRes2;
    //show_message(obj_GameController.SelfRes2);
    if obj_GameController.SelfRes2 < 0 {obj_GameController.SelfRes2 = 0};   
    obj_GameController.SelfRes3 += obj_CurrentCard.CardSelfRes3;
    //show_message(obj_GameController.SelfRes3);

    if obj_GameController.SelfRes3 < 0 {obj_GameController.SelfRes3 = 0};  
    
    //Обрабатываем чужие ресурсы/генеры
    obj_GameController.EnemyGen1 += obj_CurrentCard.CardEnemyGen1;
    //show_message(obj_GameController.EnemyGen1);
    if obj_GameController.EnemyGen1 < 2 {obj_GameController.EnemyGen1 = 1};  
    obj_GameController.EnemyGen2 += obj_CurrentCard.CardEnemyGen2;
     //show_message(obj_GameController.EnemyGen2); 
    if obj_GameController.EnemyGen2 < 2 {obj_GameController.EnemyGen2 = 1}; 
    obj_GameController.EnemyGen3 += obj_CurrentCard.CardEnemyGen3;
     //show_message(obj_GameController.EnemyGen3);
    if obj_GameController.EnemyGen3 < 2 {obj_GameController.EnemyGen3 = 1}; 
    obj_GameController.EnemyRes1 += obj_CurrentCard.CardEnemyRes1;
     //show_message(obj_GameController.EnemyRes1);
    if obj_GameController.EnemyRes1 < 0 {obj_GameController.EnemyRes1 = 0};  
    obj_GameController.EnemyRes2 += obj_CurrentCard.CardEnemyRes2;
     //show_message(obj_GameController.EnemyRes2);
    if obj_GameController.EnemyRes2 < 0 {obj_GameController.EnemyRes2 = 0};  
    obj_GameController.EnemyRes3 += obj_CurrentCard.CardEnemyRes3;
     //show_message(obj_GameController.EnemyRes3);
    if obj_GameController.EnemyRes3 < 0 {obj_GameController.EnemyRes3 = 0};
      
    //Обрабатываем тавера и стены
    //УРОН ТОЛЬКО ПО СТЕНЕ            
    obj_GameController.SelfWallHp += obj_CurrentCard.CardSelfWallHp;
    if obj_GameController.SelfWallHp < 0 {obj_GameController.SelfWallHp = 0;} //Если стена стала меньше нуля - то приравниваем к нулю
    //УРОН ТОЛЬКО ПО БАШНЕ 
    obj_GameController.THealth += obj_CurrentCard.CardSelfTowerHp;
    //СМЕШАННЫЙ УРОН
    obj_GameController.SelfWallHp += obj_CurrentCard.CardSelfHp;
    if obj_GameController.SelfWallHp < 0
    {
        obj_GameController.THealth += obj_GameController.SelfWallHp;
        obj_GameController.SelfWallHp   = 0;      
    }
    
    //УРОН ТОЛЬКО ПО СТЕНЕ            
    obj_GameController.EnemyWallHp += obj_CurrentCard.CardEnemyWallHp;
    if obj_GameController.EnemyWallHp < 0 {obj_GameController.EnemyWallHp = 0;} //Если стена стала меньше нуля - то приравниваем к нулю
    //УРОН ТОЛЬКО ПО БАШНЕ 
    obj_GameController.EHealth += obj_CurrentCard.CardEnemyTowerHp;
    //СМЕШАННЫЙ УРОН
    obj_GameController.EnemyWallHp += obj_CurrentCard.CardEnemyHp;
    if obj_GameController.EnemyWallHp < 0
    {
        obj_GameController.EHealth += obj_GameController.EnemyWallHp;
        obj_GameController.EnemyWallHp   = 0;      
    }
    
    

}



