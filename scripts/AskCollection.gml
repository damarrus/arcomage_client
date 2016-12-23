if global.CollectionCardsCount = ""
{
    script_execute(SetJSmap, "getCollection", "", "", "", "", "", "");
    script_execute(SendToSrv);
}
