Attribute VB_Name = "Module1"
Sub �Է»���()
    num = InputBox("�ƹ��ų� �Է��ϼ���", "�Է»��ں���", "���⿡ �Է�", 1, 1)
    Range("A1").Value = num
End Sub

Sub �޽������ں���()
    msg = "��� �����ұ��?"
    Title = "�޽��� ���� ����"
    Style = vbInformation + vbYesNoCancel + vbDefaultButton2
    response = MsgBox(msg, Style, Title)
    If response = vbYes Then
        response2 = MsgBox("���� Ŭ���Ͽ����ϴ�.", vbOKOnly, Title)
    Else
        response2 = MsgBox("�ƴϿ� �Ǵ� ��Ҹ� Ŭ���Ͽ����ϴ�.", vbOKOnly, Title)
    End If
End Sub
