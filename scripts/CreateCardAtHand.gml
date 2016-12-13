//Создает карту в определенном месте на поле
obj_CurrentCard.CardNmbAtHand = 0;
with (obj_Card)
{
    if AtHand
    {
    obj_CurrentCard.CardNmbAtHand = obj_CurrentCard.CardNmbAtHand + 1;
    }    
}
k = obj_CurrentCard.CardNmbAtHand;
instance_create(room_width - 100, room_height, obj_Card);


