//Выключаем ход, чтобы игрок не смог отправить несколько карт, если сервер задумался

with (obj_Card) 
{
    if AtHand = true
    {
        if obj_GameController.IsItMyTime = true 
        {
            Usable = true;
        }
        else
        {
            Usable = false;
        }
    }
}

