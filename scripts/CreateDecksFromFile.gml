var DecksCount = 1;
while true //Начинаем перебирать все файлы с колодами
{
    if file_exists(global.PLogin + "/deck" + string(DecksCount) + ".adbf")
    {
        var DeckFile = file_text_open_read(global.PLogin + "/deck" + string(DecksCount) + ".adbf");    
        
        for (var i = 1; i <=16; i = i + 1) 
        {
            if i = 1 //Если это первая строка - значит это имя колоды
            {
                obj_DeckManager.DeckName = file_text_read_string(DeckFile);
                file_text_readln(DeckFile); 
            }
            else    //иначе это id определенной карты
            {
                obj_DeckManager.CardsID[i-2] = file_text_read_real(DeckFile);
                file_text_readln(DeckFile);
            }
                
        }
        obj_DeckManager.New = false;
        obj_DeckManager.DeckID = DecksCount;
        file_text_close(DeckFile);
        instance_create(obj_DeckManager.DecksListX , obj_DeckManager.DecksListY + (sprite_get_height(sp_Search) + obj_DeckManager.DecksListYDist) * (DecksCount - 1), obj_Deck);
        
        DecksCount += 1;
        
         
                 
    }
    else
    {     
        break;
    }
}




