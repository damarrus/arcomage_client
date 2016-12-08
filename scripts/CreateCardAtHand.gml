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
instance_create(obj_Hand.x + (sprite_get_width(sp_Card) * k) + (10 * k), obj_Hand.y, obj_Card);


