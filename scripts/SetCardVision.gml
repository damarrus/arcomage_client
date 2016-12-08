with (obj_Card)
{
    var ResourceStorage; 
    switch CardElem
    {
        case 1: ResourceStorage = obj_GameController.SelfRes1; break; 
        case 2: ResourceStorage = obj_GameController.SelfRes2; break; 
        case 3: ResourceStorage = obj_GameController.SelfRes3; break;  
    }  
    
    if AtHand and CardCost > ResourceStorage
    {        
        CardSpIndex = 1;    
    }
    
    if AtHand and CardCost <= ResourceStorage
    {     
        CardSpIndex = 0;       
    }

}
