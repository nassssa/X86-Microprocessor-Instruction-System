.686
.model flat,stdcall
.stack 100h
.data
x dw 18 ; ���������� ��������� 
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
mov ax , x; �������� x � ������� eax
add ax , y; �������� y � x  � �������� eax 
mov bx , 4; �������� 4 ��� ������� 
div bx;
mov bx , z;
sub bx ,y;
sub bx , x;
or ax , bx;
mov M , ax 
exit:
Invoke ExitProcess,M
End Start