Attribute VB_Name = "Module1"
Sub ù���ڱ�()
    MsgBox "�ȳ��ϼ���?"
End Sub

Sub ���ٿ��������ֱ�()
    i = 5: j = 6: k = 7
    MsgBox i & j & k
End Sub

Sub �����̻���()
    MsgBox "�ȳ��ϼ���?" & _
    Chr(10) & "������ �ݰ����ϴ�." & _
    Chr(10) & "���� �ð� �����ſ�."
End Sub

Sub ArithTest()
    Cells(1, 1) = 2 + 5
    Cells(1, 2) = 2 - 5
    Cells(1, 3) = 2 * 5
    Cells(1, 4) = 2 / 5
    Cells(1, 5) = 2 ^ 5: Cells(2, 5) = 5 ^ 2
    Cells(1, 6) = 2 \ 5: Cells(2, 6) = 5 \ 2
    Cells(1, 7) = 2 Mod 5: Cells(2, 7) = 5 \ 2
End Sub

Sub CompTest1()
    Cells(1, 1) = 2 < 5: Cells(1, 2) = 5 < 2
    Cells(2, 1) = 2 <= 5: Cells(2, 2) = 5 <= 2
    Cells(3, 1) = 2 > 5: Cells(3, 2) = 5 > 2
    Cells(4, 1) = 2 >= 5: Cells(4, 2) = 5 >= 2
    Cells(5, 1) = 2 <> 5: Cells(5, 2) = 5 <> 2
    Cells(6, 1) = "��ö��" Like "�� ö ��"
    Cells(6, 2) = "��ö��" Like "��ö��"
    Cells(7, 1) = Range("B1") Is Range("B2")
End Sub

Sub BoolTest1()
    Cells(1, 1) = 2 > 5 And 2 < 5
    Cells(1, 2) = 2 > 5 Eqv 2 < 5
    ' Imp�� Ư���Ѱ� �տ��͸� True�߸� True��
    Cells(1, 3) = 2 > 5 Imp 2 < 5
    Cells(1, 4) = Not 2 > 5
    Cells(1, 5) = 2 > 5 Or 2 < 5
    Cells(1, 6) = 2 > 5 Xor 2 < 5
End Sub

Sub ColorIndexTest()
    For i = 1 To 7
        For j = 1 To 8
            Cells(i, j).Interior.ColorIndex = (i - 1) * 8 + j
            Cells(i, j).Value = (i - 1) * 8 + j
    Next j, i
    Range("A1").Font.Color = RGB(255, 255, 255)
End Sub

Sub foreColor()
    Range("B9").Font.Color = RGB(192, 32, 255)
    Range("B9").Value = "RGB(192, 32, 255)"
End Sub

Sub borderColor()
    Cells(11, 2).Borders.Weight = 4
    Cells(11, 2).Borders.Color = vbRed
End Sub

Sub TabColorRed()
    Sheets("Sheet1").Tab.Color = RGB(255, 0, 0)
End Sub

Sub myClear()
    Cells.Clear
End Sub
