with (obj_Card)
{
    var ResourceStorage1 = obj_GameController.SelfRes1,
        ResourceStorage2 = obj_GameController.SelfRes2,
        ResourceStorage3 = obj_GameController.SelfRes3;  
    
    if AtHand and (CardRes1 > ResourceStorage1 or CardRes2 > ResourceStorage2 or CardRes3 > ResourceStorage3) 
    {        
        CardSpIndex = 1;    
    }
    else if AtHand 
    {     
        CardSpIndex = 0;       
    }

}
