var Script = argument0;

if Script = ""
{
    if instance_exists(obj_TextDialog)
    {
        obj_TextDialog.NeedToDelete = true;
    }
    if instance_exists(obj_MultiDialog)
    {
        obj_MultiDialog.NeedToDelete = true;
    }
    
    
}

else if Script = "RestoreSavedDeck" {script_execute(RestoreSavedDeck);}
else if Script = "WrongLoginOk" {script_execute(WrongLoginOk);}
else if Script = "ChangeDeckName" {script_execute(ChangeDeckName);}


