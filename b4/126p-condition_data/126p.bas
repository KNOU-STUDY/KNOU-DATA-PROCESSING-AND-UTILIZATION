Attribute VB_Name = "Module1"
Sub �ߺο�����()
Attribute �ߺο�����.VB_ProcData.VB_Invoke_Func = " \n14"
'
' �ߺο����� ��ũ��
'

'
    Rows("8:75").Select
    Selection.EntireRow.Hidden = False
    Rows("32:75").Select
    Selection.EntireRow.Hidden = True
End Sub

Sub ���ο�����()
'
' ���ο����� ��ũ��
'

'
    Rows("8:75").Select
    Selection.EntireRow.Hidden = False
    Rows("8:31").Select
    Selection.EntireRow.Hidden = True
    Rows("51:75").Select
    Selection.EntireRow.Hidden = True
End Sub

Sub ���ο�����()
'
' ���ο����� ��ũ��
'

'
    Rows("8:75").Select
    Selection.EntireRow.Hidden = False
    Rows("8:50").Select
    Selection.EntireRow.Hidden = True
    Rows("75:75").Select
    Selection.EntireRow.Hidden = True
End Sub

Sub ��ü����()
'
' ��ü���� ��ũ��
'

'
    Rows("8:75").Select
    Selection.EntireRow.Hidden = False
End Sub


