SwapBuff = obj_GameController.EHealth;
obj_GameController.EHealth = obj_GameController.THealth;
obj_GameController.THealth = SwapBuff;

SwapBuff = obj_GameController.SelfWallHp;
obj_GameController.SelfWallHp = obj_GameController.EnemyWallHp;
obj_GameController.EnemyWallHp = SwapBuff;

SwapBuff = obj_GameController.SelfRes1;
obj_GameController.SelfRes1 = obj_GameController.EnemyRes1;
obj_GameController.EnemyRes1 = SwapBuff;

SwapBuff = obj_GameController.SelfRes2;
obj_GameController.SelfRes2 = obj_GameController.EnemyRes2;
obj_GameController.EnemyRes2 = SwapBuff;

SwapBuff = obj_GameController.SelfRes3;
obj_GameController.SelfRes3 = obj_GameController.EnemyRes3;
obj_GameController.EnemyRes3 = SwapBuff;

SwapBuff = obj_GameController.SelfGen1;
obj_GameController.SelfGen1 = obj_GameController.EnemyGen1;
obj_GameController.EnemyGen1 = SwapBuff;

SwapBuff = obj_GameController.SelfGen2;
obj_GameController.SelfGen2 = obj_GameController.EnemyGen2;
obj_GameController.EnemyGen2 = SwapBuff;

SwapBuff = obj_GameController.SelfGen3;
obj_GameController.SelfGen3 = obj_GameController.EnemyGen3;
obj_GameController.EnemyGen3 = SwapBuff;

