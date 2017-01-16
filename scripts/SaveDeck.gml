var SavedDeckString = "";

obj_DeckListLens.SavedDeckName = obj_DeckListLens.DeckName;
SavedDeckString += string(obj_DeckListLens.DeckID) + ",";
SavedDeckString += string(obj_DeckListLens.DeckName) + ",";
for (var i = 0; i <= (global.MaxDeck - 1); i += 1)
{
    SavedDeckString += string(obj_DeckListLens.DeckCards[i]);
    if i < global.MaxDeck - 1
    {
        SavedDeckString += ",";    
    }
    obj_DeckListLens.SavedDeckCards[i] = obj_DeckListLens.DeckCards[i] 
}
string_delete(SavedDeckString, string_length(SavedDeckString), 1);

if !obj_DeckListLens.New
{
    for (i = 0; i < obj_DeckManager.DecksCount; i += 1)
    {
        DeckString = obj_DeckManager.Decks[i];
        var MC;
        MC[0] = "";
        MC = script_execute(ParseCollection,obj_DeckManager.Decks[i]);
        if real(MC[0]) = real(obj_DeckListLens.DeckID)
        {
            obj_DeckManager.Decks[i] = SavedDeckString;     
        } 
    }
}
else
{
    obj_DeckManager.Decks[obj_DeckManager.DecksCount - 1] = SavedDeckString;   
    obj_DeckListLens.New = false;   
}


                         



