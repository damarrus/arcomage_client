//Скрипт возвращает значения колоды до их изменения, и переключает вкладку на выбранную колоду

if obj_DeckListLens.New
{
    script_execute(ClearSelectedDeck);
    btn_SaveDeck.Active = false;
    btn_SaveDeck.visible = false;
    obj_DeckManager.DecksCount -= 1;
    obj_GameController.ProgramClick = true;
    with btn_OpenDeckList
    {
        event_perform(ev_mouse, ev_left_release);
    }
    obj_GameController.ProgramClick = false;
    
    obj_DeckListLens.New = false;
}
else
{
    btn_SaveDeck.Active = false;
    btn_SaveDeck.visible = false;
    for (var i=0; i < global.MaxDeck; i += 1)
    {
        obj_DeckListLens.DeckCards[i] = real(obj_DeckListLens.SavedDeckCards[i]) 
    }
    //Обновляем карты на листе карт
    script_execute(CreateCardListFromDeck);
}      

script_execute(SetCardInDeckVision);
