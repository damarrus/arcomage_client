//Зул'джин, благослави этот скрипт!
//ШАБЛОН ДЛЯ ИСПОЛЬЗОВАНИЯ
//script_execute(CreateTextDialog,   X,   Y, "СкриптНаEnter", "ТекстДиалога" ,"ТекстК1", "СкриптК1", "ТекстК2", "СкриптК2","ТекстВТекстовомПоле")
//script_execute(CreateTextDialog, 800, 500, "script", "Kakashkiii" ,"Bddddddddddddddddddddddddddut", "btn1", "", "", "ТекстВТекстовомПоле")

var ButtonsCount, X, Y, MaxSymbolsBtn, xscale, DialogScale;

X = argument0;
Y = argument1;

if      argument6 != "" {ButtonsCount = 2;}
else if argument4 != "" {ButtonsCount = 1;}

xscale = 1;

DialogScale = 1;   

with (btn_Super) {instance_destroy();}
with (obj_TextDialog) {instance_destroy();}

instance_create(X, Y,obj_TextDialog);
with (obj_TextDialog)
{
    image_xscale = 1.5;
    image_yscale = 1.5;
    BtnXScale = xscale;
    InitialText = argument8;
    EnterScript = argument3; //Скрипт на нажатие enter
    Text = argument2;
    
    if ButtonsCount = 2
    {      
        CurrBtnScript   = argument7;
        CurrBtnText     = argument6;
        instance_create((x - sprite_get_width(sp_Dialog)/4) , y + 35, btn_Super); 
        
        CurrBtnScript   = argument5;
        CurrBtnText     = argument4;
        instance_create((x + sprite_get_width(sp_Dialog)/4) , y + 35, btn_Super);   
    }
    else if ButtonsCount = 1
    {
        CurrBtnScript   = argument5;
        CurrBtnText     = argument4;
        instance_create(x, y + 40, btn_Super);   
    }
    instance_create(x, y - 20, obj_TextField);
}







