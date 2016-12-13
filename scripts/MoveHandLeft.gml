with (obj_Card) 
{

    if AtHand = true and CardNmbAtHand > argument0
    { 
        script_execute(SetCardMoving, x - sprite_get_width(sp_Card) - 10, y, 24);
        CardNmbAtHand  -= 1; 
    }

}
