with (obj_Card) 
{

    if AtHand = true and CardNmbAtHand > argument0
    {        
        DestinationX    = x - sprite_get_width(sp_Card) - 10;
        DestinationY    = y;
        MoveSpeedX      = (DestinationX - x) / 12; 
        MoveSpeedY      = (DestinationY - y) / 12;
        Moving          = true; 
        CardNmbAtHand  -= 1; 
    }

}
