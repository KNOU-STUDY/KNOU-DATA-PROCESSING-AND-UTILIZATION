Attribute VB_Name = "Module1"
Sub �����������()
Attribute �����������.VB_Description = "��� ������ ���ʿ��� ���� ���"
Attribute �����������.VB_ProcData.VB_Invoke_Func = "a\n14"
'
' ����������� ��ũ��
' ��� ������ ���ʿ��� ���� ���
'
' �ٷ� ���� Ű: Ctrl+a
'
    ActiveCell.Offset(0, 1).Range("A1").Select
    ActiveCell.FormulaR1C1 = "=RC[-1]^2"
    Selection.AutoFill Destination:=ActiveCell.Range("A1:A10"), Type:= _
        xlFillDefault
    ActiveCell.Range("A1:A10").Select
End Sub
