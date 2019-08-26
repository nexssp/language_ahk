MsgBox, 4, , Would you like to continue? 
IfMsgBox, No 
    return 
; Otherwise, the user picked yes. 
MsgBox You pressed YES.

; Example 2


MyVar1 = 123 
MyVar2 = my string

if MyVar2 = my string 
{
    MsgBox MyVar2 contains the string "my string". 
}
if MyVar1 >= 100 
{ 
    MsgBox MyVar1 contains %MyVar1%, which is a number greater than or equal to 100.
}

MyVarConcatenated = %MyVar1% %MyVar2%
if (ItemCount > ItemLimit)
{ 
    MsgBox The value in ItemCount, which is %ItemCount%, is greater than %ItemLimit%.
}
