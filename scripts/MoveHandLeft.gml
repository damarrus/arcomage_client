with (obj_Card) 
{

    if AtHand = true and CardNmbAtHand > argument0
    { 
        script_execute(SetCardMoving, DestinationX - sprite_get_width(sp_Card) - 10, DestinationY, 24);
        CardNmbAtHand  -= 1; 
    }

}
