Attribute VB_Name = "Module1"
Sub ����()
    For ia = 1 To 10
        Cells(1, ia) = Rnd()
    Next ia
    
    Cells(2, 1) = Abs(-23.45)
    ' �Ҽ��� ���� �׳� ����
    Cells(3, 1) = Fix(-23.45)
    ' �ش� ������ ũ������ ������ ���� ū ����
    Cells(4, 1) = Int(-23.45)
    Cells(5, 1) = Round(-23.45)
End Sub

Sub ���ڿ�()
    For ia = 1 To 10
        Cells(1, ia) = Chr(ia + 55)
    Next ia
    
    aa = " �� ���ڿ��̴�"
    bb = "My String Text "
    Cells(2, 1) = Len(aa): Cells(2, 2) = Len(bb)
    Cells(3, 1) = LCase(bb): Cells(3, 2) = UCase(bb)
    Cells(4, 1) = String(5, "Y")
    Cells(5, 1) = Val("-23.45")
    Cells(6, 1) = LTrim(aa)
    Cells(7, 1) = " A": Cells(7, 2) = Trim(" A")
End Sub

Sub ��¥�ð�1()
    Dim myLabels
    myLabels = Array("Now", "����", "��", "��", "����", _
        "���ó�¥", "��", "��", "��", "����ð�")
    With Range("A1:J1")
        .Clear
        .Cells.Interior.Color = RGB(0, 255, 255)
        .Value = myLabels
        .Font.Bold = True
    End With
    
    ����ð� = Now
    Cells(2, 1) = ����ð�
    y = Year(����ð�): Cells(2, 2) = y
    m = Month(����ð�): Cells(2, 3) = m
    d = Day(����ð�): Cells(2, 4) = d
    Cells(2, 5) = Choose(Weekday(����ð�), _
        "��", "��", "ȭ", "��", "��", "��", "��")
    ���ó�¥ = DateSerial(y, m, d): Cells(2, 6) = ���ó�¥
    h = Hour(����ð�): Cells(2, 7) = h
    m = Minute(����ð�): Cells(2, 8) = m
    s = Second(����ð�): Cells(2, 9) = s
    ����ð� = TimeSerial(h, m, s): Cells(2, 10) = ����ð�
End Sub

Sub ��üȮ��()
    Dim myLabels
    myLabels = Array("Date", "����", "��", "��", "�б�")
    ����ð� = Now
    ia = 1
    xx = 1.2345
    
    Cells(1, 1) = IsArray(myLabels)
    Cells(1, 2) = IsArray(ia)
    Cells(1, 3) = IsEmpty(ia)
    Cells(1, 4) = IsNull(ia)
    Cells(1, 5) = IsDate("2020-1-1")
    Cells(1, 6) = IsObject(ia)
    Cells(1, 7) = IsNull(����ð�)
End Sub

Sub fixdate0()
    Cells.Clear
    mydate = #2/13/2020#
    If mydate < Now Then mydate = Now
    Cells(1, 1) = mydate
End Sub

Sub fixdate()
    Cells.Clear
    mydate = #1/1/2020#
    If mydate < Now Then
        mydate = Now
        Cells(1, 1) = mydate
    End If
End Sub

Sub IfElseTest1()
    If (Range("A1").Value > 0) Then
        Range("B1").Value = "���"
        Range("B1").Interior.Color = RGB(0, 255, 255)
    Else
        Range("B1").Value = "����"
        Range("B1").Interior.Color = RGB(255, 255, 0)
    End If
End Sub

Sub IfElseTest2()
    If (Range("A1").Value > 0) Then
        Range("B1").Value = "���"
        Range("B1").Interior.Color = RGB(0, 255, 255)
    ElseIf (Range("A1").Value = 0) Then
        Range("B1").Value = "Zero"
        Range("B1").Interior.Color = RGB(255, 0, 255)
    Else
        Range("B1").Value = "����"
        Range("B1").Interior.Color = RGB(255, 255, 0)
    End If
End Sub

Sub Iiftest()
    For i = 1 To 10
        Cells(i, 2) = IIf(Cells(i, 1).Value > 0, "���", "�� ��")
    Next i
End Sub

Sub SelectCaseTest1()
    remainder = Range("A1").Value Mod 3
    Range("B1").Cells.Font.Color = vbRed
    Select Case remainder
        Case 0
            Range("B1").Value = " 3�� ���"
        Case 1
            Range("B1").Value = " 3�� ���+1"
        Case 2
            Range("B1").Value = " 3�� ���+2"
    End Select
End Sub

Sub SwitchTest()
    �����ڹ�ȣ = Range("A1").Value
    Dim �������̸� As String
    �������̸� = Switch(�����ڹ�ȣ = 1, "IBM", _
                �����ڹ�ȣ = 2, "HP", _
                �����ڹ�ȣ = 3, "NVIDIA")
    Range("A2").Value = �������̸�
End Sub
