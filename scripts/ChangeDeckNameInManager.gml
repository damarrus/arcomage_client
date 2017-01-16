var MC;
for (var i = 0; i < obj_DeckManager.DecksCount; i += 1)
{
    MC[0] = "";
    MC = script_execute(ParseCollection, obj_DeckManager.Decks[i]);
    
    if MC[0] = string(obj_DeckListLens.DeckID)
    {
        var MC;
        MC[0] = "";
        MC = script_execute(ParseCollection, obj_DeckManager.Decks[i]);
        MC[1] = obj_TextField.Text;
        obj_DeckManager.Decks[i] = "";
        for (var j = 0; j <= array_length_1d(MC) - 1; j += 1)
        {
            obj_DeckManager.Decks[i] = obj_DeckManager.Decks[i] + string(MC[j]) + ",";
        }
        string_delete(obj_DeckManager.Decks[i], string_length(obj_DeckManager.Decks[i]), 1);
    }
    
}
