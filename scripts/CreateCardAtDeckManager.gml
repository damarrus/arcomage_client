//Создает карту в определенном месте в меню карт
var CardNumber = 0;
var XDist = 10 + sprite_get_width(sp_Card);
var YDist = 10 + sprite_get_height(sp_Card);
PageSize = obj_DeckManager.CardsInCol * obj_DeckManager.CardsInRow;


if (argument0 mod PageSize) = 0
{
    CardNumber = PageSize;
}
else
{
    CardNumber = (argument0 mod PageSize); 
}


RowNmb = ((CardNumber - 1) div obj_DeckManager.CardsInRow) + 1;
if (CardNumber - (RowNmb - 1) * obj_DeckManager.CardsInRow) = 0
{
    ColNmb = obj_DeckManager.CardsInRow; 
}
else
{
    ColNmb = CardNumber - (RowNmb - 1) * obj_DeckManager.CardsInRow;
}

instance_create(obj_DeckManager.x - 200 + (XDist * ColNmb), obj_DeckManager.y - 600 + (YDist * RowNmb), obj_CardOnPage);



