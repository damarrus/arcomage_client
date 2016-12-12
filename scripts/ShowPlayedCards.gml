var Distance = 10; //Величина сдвига карт относительно друг друга
//Очищаем стол
with obj_CardVision
{   
   instance_destroy();    
}

if obj_GameController.IsItMyTime and !obj_GameController.NewTurnEnemy
{
    obj_GameController.NewTurnEnemy = true;
}

obj_GameController.PlayedCardDepth = -1;
for (var i = 0; i < obj_GameController.PlayedCardsCount; i += 1)
{
    obj_GameController.PlayedCardDepth -= 1;
    var ID = obj_GameController.PlayedCards[i,0];
    obj_GameController.CardVisionState = obj_GameController.PlayedCards[i,1];
    script_execute(GetCardFromDBbyID, ID, "");
    script_execute(SetCurrCard, false, false);
    instance_create(obj_TableField.x + i * Distance, obj_TableField.y + i * Distance, obj_CardVision); 
    
}
