//Получаем значения таверов и прочих ресурсов

if argument0 //Если игрок - первый игрок
{
    if obj_GameController.FirstPlayer = "" //При получении первого хода определяется истинно первый игрок(для зеркального отображения таверов)
    {
        obj_GameController.FirstPlayer = ds_map_find_value(global.JSmap, "turn");
    }    

    
    if obj_GameController.IsItMyTime != ds_map_find_value(global.JSmap, "turn")
    {
        obj_GameController.NewTurn = true;    
    }
    obj_GameController.IsItMyTime = ds_map_find_value(global.JSmap, "turn");    

    obj_GameController.THealth = ds_map_find_value(global.JSmap, "tower_hp");
    obj_GameController.SelfWallHp = ds_map_find_value(global.JSmap, "wall_hp");
    
    obj_GameController.SelfRes1 = ds_map_find_value(global.JSmap, "res1"); 
    obj_GameController.SelfRes2 = ds_map_find_value(global.JSmap, "res2"); 
    obj_GameController.SelfRes3 = ds_map_find_value(global.JSmap, "res3");
    obj_GameController.SelfGen1 = ds_map_find_value(global.JSmap, "gen1");
    obj_GameController.SelfGen2 = ds_map_find_value(global.JSmap, "gen2");
    obj_GameController.SelfGen3 = ds_map_find_value(global.JSmap, "gen3");
    
    

}
else
{
    if obj_GameController.FirstPlayer = "" //При получении первого хода определяется истинно первый игрок(для зеркального отображения таверов)
    {     
        obj_GameController.FirstPlayer = ds_map_find_value(global.JSmap, "turn");
    }
    

    obj_GameController.EHealth = ds_map_find_value(global.JSmap, "tower_hp");
    obj_GameController.EnemyWallHp = ds_map_find_value(global.JSmap, "wall_hp");
    
    obj_GameController.EnemyRes1 = ds_map_find_value(global.JSmap, "res1"); 
    obj_GameController.EnemyRes2 = ds_map_find_value(global.JSmap, "res2"); 
    obj_GameController.EnemyRes3 = ds_map_find_value(global.JSmap, "res3");
    obj_GameController.EnemyGen1 = ds_map_find_value(global.JSmap, "gen1");
    obj_GameController.EnemyGen2 = ds_map_find_value(global.JSmap, "gen2");
    obj_GameController.EnemyGen3 = ds_map_find_value(global.JSmap, "gen3");
    
    

}
