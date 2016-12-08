//преобразует "число" в "знак + число"
if argument0 < 0
{
result = string(argument0);
}  
else
{
result = "+" + string(argument0);
}
return result;
