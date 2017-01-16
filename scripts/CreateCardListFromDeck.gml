with obj_CardInList
{instance_destroy();}

for (var i = 0; i <= (global.MaxDeck - 1); i += 1)    //Для каждой карты
{
    var CardDB = file_text_open_read("CardDB.adbf");
    var FileString, SubStr;
    while !file_text_eof(CardDB)
    {
            FileString = file_text_read_string(CardDB);
            SubStr = "card_id" + chr(34) + ": " + string(obj_DeckListLens.DeckCards[i]); 
                           
            
            //Находим соответствие карты в CardDB по ее ID 
            if string_pos(SubStr ,FileString) > 0 
            {
                global.JSmap = json_decode(FileString);
                
                script_execute(SetCurrCard, false);
                instance_create(round(obj_CardList.x - 4), round(obj_CardList.y - sprite_get_height(sp_CardList)/2 + 35 + (obj_DeckManager.CardsListYDist + sprite_get_height(sp_CardListElem)) * i), obj_CardInList);
                
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

