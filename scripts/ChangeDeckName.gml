if obj_DeckListLens.New
{
    if string_length(obj_TextDialog.Text) < 4
    {
        script_execute(ShowMiniWarn, "Deck name#is too short!")
    }
    else
    { 
        obj_DeckListLens.DeckName = obj_TextField.Text;
    }    
}
else
{
    obj_TextDialog.NeedToDelete = false;
    script_execute(SetJSmap, "setDeckName", "deck_num", obj_DeckListLens.DeckID, "deck_name", obj_TextField.Text, "", "nikita pidr");
    script_execute(SendToSrv); 
}      


