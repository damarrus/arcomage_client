//argument0 = true - если надо будет создать карту в руке, false если не в руку
//argument1 = true - если карта сброшена - false если надо проверить наличие
obj_CurrentCard.CardName            = ds_map_find_value(global.JSmap, "card_name");
obj_CurrentCard.CardID              = ds_map_find_value(global.JSmap, "card_id");
obj_CurrentCard.CardRes1            = ds_map_find_value(global.JSmap, "card_res1");
obj_CurrentCard.CardRes2            = ds_map_find_value(global.JSmap, "card_res2");
obj_CurrentCard.CardRes3            = ds_map_find_value(global.JSmap, "card_res3");
obj_CurrentCard.AtHand              = argument0;

if argument1 {obj_CurrentCard.Discarded = ds_map_find_value(global.JSmap, "discard");}
else {obj_CurrentCard.Discarded = false;}

obj_CurrentCard.CardSelfTowerHp     = ds_map_find_value(global.JSmap, "card_self_tower_hp");
obj_CurrentCard.CardEnemyTowerHp    = ds_map_find_value(global.JSmap, "card_enemy_tower_hp");
obj_CurrentCard.CardSelfWallHp      = ds_map_find_value(global.JSmap, "card_self_wall_hp");
obj_CurrentCard.CardEnemyWallHp     = ds_map_find_value(global.JSmap, "card_enemy_wall_hp");
obj_CurrentCard.CardSelfHp          = ds_map_find_value(global.JSmap, "card_self_hp");
obj_CurrentCard.CardEnemyHp         = ds_map_find_value(global.JSmap, "card_enemy_hp");

obj_CurrentCard.CardSelfRes1 = ds_map_find_value(global.JSmap, "card_self_res1"); 
obj_CurrentCard.CardSelfRes2 = ds_map_find_value(global.JSmap, "card_self_res2"); 
obj_CurrentCard.CardSelfRes3 = ds_map_find_value(global.JSmap, "card_self_res3");
obj_CurrentCard.CardSelfGen1 = ds_map_find_value(global.JSmap, "card_self_gen1");
obj_CurrentCard.CardSelfGen2 = ds_map_find_value(global.JSmap, "card_self_gen2");
obj_CurrentCard.CardSelfGen3 = ds_map_find_value(global.JSmap, "card_self_gen3");

obj_CurrentCard.CardEnemyRes1 = ds_map_find_value(global.JSmap, "card_enemy_res1"); 
obj_CurrentCard.CardEnemyRes2 = ds_map_find_value(global.JSmap, "card_enemy_res2");
obj_CurrentCard.CardEnemyRes3 = ds_map_find_value(global.JSmap, "card_enemy_res3");
obj_CurrentCard.CardEnemyGen1 = ds_map_find_value(global.JSmap, "card_enemy_gen1");
obj_CurrentCard.CardEnemyGen2 = ds_map_find_value(global.JSmap, "card_enemy_gen2");
obj_CurrentCard.CardEnemyGen3 = ds_map_find_value(global.JSmap, "card_enemy_gen3");



