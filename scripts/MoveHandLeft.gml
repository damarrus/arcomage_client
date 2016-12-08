with (obj_Card) 
{

    if AtHand = true and CardNmbAtHand > argument0
    {
    
    x = x - sprite_get_width(sp_Card) - 10; 
    CardNmbAtHand -= 1; 
    }

}
