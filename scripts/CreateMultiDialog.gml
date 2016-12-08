//Зул'джин, благослави этот скрипт!
//ШАБЛОН ДЛЯ ИСПОЛЬЗОВАНИЯ
//script_execute(CreateMultiDialog,   X,   Y, "СкриптНаEnter", "ТекстДиалога" ,"ТекстК1", "СкриптК1", "ТекстК2", "СкриптК2","ТекстК3","СкриптК3")
//script_execute(CreateMultiDialog, 800, 500, "script", "Kakashkiii" ,"Bddddddddddddddddddddddddddut", "btn1", "", "","","")

var ButtonsCount, X, Y, MaxSymbolsBtn, xscale, A, B, DialogLength, DialogScale;
A = 40; //Отступ до кнопки от края диалогового окна (слева, справа)
B = 30; //Промежуток между кнопками

var Symbols1 = 15; //Количество символов для масштаба кнопки при котором scale X = 1
X = argument0;
Y = argument1;


if      argument8 != "" {ButtonsCount = 3;}
else if argument6 != "" {ButtonsCount = 2;}
else if argument4 != "" {ButtonsCount = 1;}

if ButtonsCount = 1 {A = A * 2;} //Если кнопка одна, то отступы значительно больше

if string_length(argument4) >= string_length(argument6) and string_length(argument4) >= string_length(argument8)
{
    MaxSymbolsBtn = string_length(argument4);    
}
else if string_length(argument6) >= string_length(argument4) and string_length(argument6) >= string_length(argument8)
{
    MaxSymbolsBtn = string_length(argument6);    
}
else if string_length(argument8) >= string_length(argument4) and string_length(argument8) >= string_length(argument6)
{
    MaxSymbolsBtn = string_length(argument8);    
}

//Ограничиваем минимальный размер кнопки x scale = 1
if MaxSymbolsBtn < Symbols1 
{
    MaxSymbolsBtn = Symbols1;    
}
//Получаем скалирование для кнопки
xscale = MaxSymbolsBtn/Symbols1;


DialogLength = 2 * A + (ButtonsCount - 1) * B + xscale * sprite_get_width(sp_Button) * ButtonsCount;

DialogScale = DialogLength/sprite_get_width(sp_Dialog);   


with (btn_Super) {instance_destroy();}
with (obj_MultiDialog) {instance_destroy();}

instance_create(X, Y,obj_MultiDialog);
with (obj_MultiDialog)
{
    image_xscale = DialogScale;
    BtnXScale = xscale;
    EnterScript = argument3; //Скрипт на нажатие enter
    Text = argument2;
    
    if ButtonsCount = 3
    {
        CurrBtnScript   = argument9;
        CurrBtnText     = argument8;
        instance_create((x - DialogLength/2) + (A + sprite_get_width(sp_Button) * xscale * 2.5 + B * 2), y + 20, btn_Super); 
        
        CurrBtnScript   = argument7;
        CurrBtnText     = argument6;
        instance_create((x - DialogLength/2) + (A + sprite_get_width(sp_Button) * xscale * 1.5 + B), y + 20, btn_Super); 
        
        CurrBtnScript   = argument5;
        CurrBtnText     = argument4;
        instance_create((x - DialogLength/2) + (A + sprite_get_width(sp_Button) * xscale * 0.5), y + 20, btn_Super);   
    }
    else if ButtonsCount = 2
    {      
        CurrBtnScript   = argument7;
        CurrBtnText     = argument6;
        instance_create((x - DialogLength/2) + (A + sprite_get_width(sp_Button) * xscale * 1.5 + B), y + 20, btn_Super); 
        
        CurrBtnScript   = argument5;
        CurrBtnText     = argument4;
        instance_create((x - DialogLength/2) + (A + sprite_get_width(sp_Button) * xscale * 0.5), y + 20, btn_Super);   
    }
    else if ButtonsCount = 1
    {
        CurrBtnScript   = argument5;
        CurrBtnText     = argument4;
        instance_create(x, y + 40, btn_Super);   
    }
}







