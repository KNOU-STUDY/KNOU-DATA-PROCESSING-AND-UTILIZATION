Attribute VB_Name = "Module1"
Sub ����()
Attribute ����.VB_ProcData.VB_Invoke_Func = " \n14"
'
' ���� ��ũ��
'

'
    Range("B5:H17").Select
    ActiveWorkbook.Worksheets("Sheet1").Sort.SortFields.Clear
    ActiveWorkbook.Worksheets("Sheet1").Sort.SortFields.Add2 Key:=Range("B6:B17") _
        , SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:=xlSortNormal
    With ActiveWorkbook.Worksheets("Sheet1").Sort
        .SetRange Range("B5:H17")
        .Header = xlYes
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
End Sub
Sub �κ���()
Attribute �κ���.VB_ProcData.VB_Invoke_Func = " \n14"
'
' �κ��� ��ũ��
'

'
    Range("B5:H17").Select
    Selection.Subtotal GroupBy:=1, Function:=xlSum, TotalList:=Array(6, 7), _
        Replace:=True, PageBreaks:=False, SummaryBelowData:=True
End Sub
Sub �κ��ջ���()
Attribute �κ��ջ���.VB_ProcData.VB_Invoke_Func = " \n14"
'
' �κ��ջ��� ��ũ��
'

'
    Range("B5:H21").Select
    Selection.RemoveSubtotal
End Sub
