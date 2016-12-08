BL = string_length(argument0);
EndPos[0] = 0;
EndPos[1] = "";
Messages[0] = "";
for (var i = 0; i <= (array_length_1d(Messages) - 1); i = i + 1) 
{
    Messages[i] = "";
}

var j = 0;
for (i = 0; i < BL; i = i + 1)
{

    CurChar = string_char_at(argument0, i);
    NextChar = string_char_at(argument0, i + 1);
    if CurChar = "}" and NextChar = "{"
    {
        j = j + 1;
        EndPos[j] = i;            
    }
}


if EndPos[1] = ""
{
    Messages[0] = argument0;
    return Messages;               
}
else
{
    TempusString = string(argument0);
    for (i = 0; i <= j; i = i + 1)
    {        
        if (i < j)
        {           
            TempString = string_copy(TempusString, EndPos[i] + 1, (EndPos[i+1] - EndPos[i]));            
        }
        else
        {               
            TempString = string_copy(TempusString, EndPos[i] + 1, BL - EndPos[i]);    
        }
        
        Messages[i] = TempString; 
        //show_message(Messages[i]);       
    }
    return Messages;
}

  
