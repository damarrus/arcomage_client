with (obj_CardInList) //Удаляем весь список карт со стола
{
    instance_destroy();
}

with (obj_Deck) //Перебираем все колоды
{

    if Active   //Находим активную колоду
    {
    
        for (var i = 0; i <= 14; i += 1)    //Для каждой карты
        {
            var CardDB = file_text_open_read("CardDB.adbf");
            var FileString, SubStr;
            while !file_text_eof(CardDB)
            {
                    FileString = file_text_read_string(CardDB);
                    SubStr = "card_id" + chr(34) + ": " + string(CardsID[i]); 
                                   
                    
                    //Находим соответствие карты в CardDB по ее ID 
                    if string_pos(SubStr ,FileString) > 0 
                    {
                        global.JSmap = json_decode(FileString);
                        
                        script_execute(SetCurrCard, false);
                        instance_create(obj_DeckManager.CardsListX, obj_DeckManager.CardsListY + (obj_DeckManager.CardsListYDist + sprite_get_height(sp_Search)) * i, obj_CardInList);
                        
                        file_text_readln(CardDB);
                        break;                       
                    }
                    else
                    {
                        file_text_readln(CardDB);    
                    }
            } 
            
            file_text_close(CardDB);           
        
        }
    
    }

}
