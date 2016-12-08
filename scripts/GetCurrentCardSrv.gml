Tags[0,0] = "card_id";
Tags[1,0] = "card_name";
Tags[2,0] = "card_cost";
dmg = string(round(random(10)));
ID = string(round(random(10)));

SrvAnswer = "{'title':'currentTurn','value':true,'currentCard':{'card_id':" + dmg + ",'card_name':'Yarik pidar','card_cost':" + ID + "},'date':'2014-11-30'}";
for (i=0; i<=2; i+=1)
{

    TagPos = string_pos(Tags[i,0],SrvAnswer);
    EndPos = script_execute(GetValue, TagPos + string_length(Tags[i,0]) + 2, SrvAnswer); 
    Result = string_copy(SrvAnswer,TagPos + string_length(Tags[i,0]) + 2,EndPos - (TagPos + string_length(Tags[i,0]) + 2));
    
    if Result = "true" 
    {
        Result = true;
        Tags[i,1] = Result;
        continue;
    } 
    if Result = "false" 
    {
        Result = false;
        Tags[i,1] = Result;
        continue;
    }
    if string_char_at(Result,1) = "'" 
    {
        Result = string_replace_all(Result,"'","");
        Tags[i,1] = Result; 
        continue;
    }
    else
    {
        Tags[i,1] = real(Result);
    }
      
}

obj_CurrentCard.CardID      = Tags[0,1];
obj_CurrentCard.CardName    = Tags[1,1];
obj_CurrentCard.CardDamage  = Tags[2,1];


