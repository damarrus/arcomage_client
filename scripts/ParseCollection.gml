var BL = string_length(argument0);
var EndPos, Collection, TempString;
EndPos[0] = 0;
EndPos[1] = "";
Collection[0] = "";

var j = 0;
for (var i = 0; i <= BL; i = i + 1)
{

    var CurChar = string_char_at(argument0, i);
    if CurChar = "," or i = BL 
    {
        j = j + 1;
        EndPos[j] = i;            
    }
}


var TempusString = string(argument0);
for (i = 0; i < j; i = i + 1)
{        
    if (i < j)
    {           
        TempString = string_copy(TempusString, EndPos[i] + 1, (EndPos[i+1] - EndPos[i]));            
    }
    else
    {               
        TempString = string_copy(TempusString, EndPos[i] + 1, BL - EndPos[i]);    
    }
    Collection[i] = string_replace(TempString, ",", "");
           
}
return Collection;


  
