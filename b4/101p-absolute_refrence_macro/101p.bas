Attribute VB_Name = "Module1"
Sub ������������()
Attribute ������������.VB_Description = "C2���� C11�� B2~B11�� �������"
Attribute ������������.VB_ProcData.VB_Invoke_Func = "a\n14"
'
' ������������ ��ũ��
' C2���� C11�� B2~B11�� �������
'
' �ٷ� ���� Ű: Ctrl+a
'
    Range("C2").Select
    ActiveCell.FormulaR1C1 = "=RC[-1]^2"
    Selection.AutoFill Destination:=Range("C2:C11"), Type:=xlFillDefault
    Range("C2:C11").Select
End Sub
