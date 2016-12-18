//Погнал разбор словаря

var Message = ds_map_find_value(global.JSmap, "messageType"); //Определяем тип пришедшего сообщение

//if room = 1 {show_message(Message);}

if Message = "getCardRandom" //если это рандомная карта, то заполняем currentCard и создаем карту на поле
{
    script_execute(GetCardFromDBbyID, ds_map_find_value(global.JSmap, "card_id"), "getCardRandom");
    script_execute(SetCurrCard, true, false);
    var k = 0;
    with obj_Card
    {
        k += 1;
    }
    if k >= 6 {k = 1;}
    obj_GameController.MoveTimeout = k * 10 + 1; 
    script_execute(CreateCardAtHand);
    obj_GameController.MoveTimeout = 1; 
}

//getCardRandom
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


else if Message = "auth" //Авторизуемся
{
    
    
    //Если авторизация прошла успешно
    if ds_map_find_value(global.JSmap, "valid") 
    {
        //Сохраняем логин в настройках
        ini_open("Settings.ini");
        ini_write_string("LoginBox", "LastLogin", string(obj_Loginbox.Login));
        ini_close();
        
        //Если авторизовались - делаем кнопку разовтаризации видимой
        if instance_exists(btn_UnAuth) 
        {
            btn_UnAuth.Visible = true;
        }
        
        //Записываем логин, ник в глобальные, закрываем логинбокс, переходим в комнату меню/обновляем ее
        global.PLogin = obj_Loginbox.Login;
        global.PlayerName = ds_map_find_value(global.JSmap, "player_name"); 
        obj_Loginbox.Done = true;
     
        room_goto(Menu);
    }
    else
    {
        obj_Loginbox.Active = false;
        script_execute(CreateMultiDialog, room_width/2, room_height/2 + 350, "Wrong log/pass", "WrongLoginOk" ,"Ok", "WrongLoginOk", "", "","","")

    }
    

}
//auth
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "unAuth" //разавторизуемся
{


    instance_create(room_width/2, room_height/2, obj_Loginbox);  


}
//unAuth
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "getCardOpponent" //получаем ход мой/не мой
{  
    var discard = ds_map_find_value(global.JSmap, "discard");
    script_execute(GetCardFromDBbyID, ds_map_find_value(global.JSmap, "card_id"), "getCardOpponent");
    ds_map_add(global.JSmap, "discard", discard);
    script_execute(SetCurrCard, false, true);
    
    obj_GameController.CardAvailable = false;
    if obj_GameController.NewTurnEnemy
    {
        script_execute(DeleteCardsField); //Удаляем карты с центра поля (использованые карты)
        obj_GameController.NewTurnEnemy = false;        
    }
    
    
    
    instance_create(room_width - 100, 0, obj_Card);  
    
    if obj_GameController.Shrank = true
    {
    script_execute(ShrinkNGrow);
    }  
    //script_execute(AddCardToPlayed, obj_CurrentCard.CardID, discard);
    //script_execute(ShowPlayedCards);
    
}

//getCardOpponent
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "playerStatus" 
{
    
    with obj_Timer
    {
        Seconds = 45;
        Freeze = false;
        alarm_set(0, room_speed);        
    }     
    script_execute(SetStatsAfterTurn, true);
    script_execute(SetCardVision);
}

//playerStatus
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "opponentStatus" 
{ 
    script_execute(SetStatsAfterTurn, false);
    script_execute(CheckWin);
    script_execute(SetCardVision);
}

//opponentStatus
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "gameStart" 
{
    room_goto(PlayField);
}

//gameStart
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "startStatus" 
{
    FirstPlayer = ds_map_find_value(global.JSmap, "turn"); //Получаем зеркальное отображение таверов
    IsItMyTime = ds_map_find_value(global.JSmap, "turn");
}

//startStatus
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "getDecksCount" 
{
     
    obj_DeckManager.DecksCount = ds_map_find_value(global.JSmap, "value");
     
}

//getDecksCount
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


else if Message = "getDeck" 
{
    obj_DeckManager.CurrentDeckCreating += 1;
    var i = obj_DeckManager.CurrentDeckCreating; 
    obj_DeckManager.Decks[i] =    string(ds_map_find_value(global.JSmap, "deck_num")) + "," 
                                + string(ds_map_find_value(global.JSmap, "deck_name")) + "," 
                                + string(ds_map_find_value(global.JSmap, "card_ids"));
    
}

//getDecksCount
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


else if Message = "getDatabaseCardsCount" 
{
    global.DatabaseCardsCount = ds_map_find_value(global.JSmap, "value"); //Получаем сколько карт у нас всего в игре
    //show_message("В базе " + string(ds_map_find_value(global.JSmap, "value"))); 
    instance_create(room_width/2, room_height/2, obj_Loginbox);  
}

//getDatabaseCardsCount
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

else if Message = "getCollectionCardsCount" 
{
    
    global.CollectionCardsCount = ds_map_find_value(global.JSmap, "value"); //Получаем сколько карт у нас всего в игре
    instance_create(100, 100, obj_DeckManager);
    //show_message("В коллекции " + string(ds_map_find_value(global.JSmap, "value")));
   
}

//getDatabaseCardsCount
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


else if Message = "getDatabaseCards" 
{
    
    if ds_map_find_value(global.JSmap, "card_id") = 1 //Во время прихода первой карты открываем файл на запись
    {
        CardDatabase = file_text_open_write("CardDB.adbf");
        
    }
     
    var CardJSON = json_encode(global.JSmap);  
    file_text_write_string(CardDatabase,CardJSON);
    file_text_writeln(CardDatabase);   
    if ds_map_find_value(global.JSmap, "card_id") = global.DatabaseCardsCount //При последней карте закрываем файл
    {
        
        file_text_close(CardDatabase);
        
    }          
}
//getDatabaseCards
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


else if Message = "getCollectionCards" 
{  

    obj_DeckManager.CardCollection = script_execute(ParseCollection, ds_map_find_value(global.JSmap, "card_ids"));        
            
}

//getCollectionCards
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

