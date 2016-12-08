if obj_GameController.THealth <=0 or obj_GameController.EHealth >=30
{
script_execute(ShowMessage, "Defeat");
}

if obj_GameController.EHealth <=0 or obj_GameController.THealth >=30 
{
script_execute(ShowMessage, "Victory!");
}

