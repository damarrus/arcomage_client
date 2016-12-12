if obj_GameController.THealth <=0 or obj_GameController.EHealth >= obj_Tower.MaxTower
{
script_execute(ShowMessage, "Defeat");
}

if obj_GameController.EHealth <=0 or obj_GameController.THealth >= obj_Tower.MaxTower 
{
script_execute(ShowMessage, "Victory!");
}

