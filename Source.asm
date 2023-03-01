.686
.model flat,stdcall
.stack 100h
.data
x dw 18 ; объявление пременных 
y dw 79 
z dw 81
M dw 0
.code
ExitProcess PROTO STDCALL :DWORD
Start:
xor eax,eax;
xor ebx,ebx;
xor ecx,ecx;
xor edx,edx;
mov ax , x; загрузка x в регистр eax
add ax , y; сложение y и x  в регистре eax 
mov bx , 4; загрузка 4 для деления 
div bx;
mov bx , z;
sub bx ,y;
sub bx , x;
or ax , bx;
mov M , ax 
exit:
Invoke ExitProcess,M
End Start