VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} ���������� 
   Caption         =   "����������"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   OleObjectBlob   =   "����������.frx":0000
   StartUpPosition =   1  '������ ���
End
Attribute VB_Name = "����������"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
    age = TextBox1.Value
    birthYear = Year(Now) - age
    MsgBox "����⵵�� " & birthYear & "�� �Դϴ�."
End Sub

Private Sub Label1_Click()

End Sub

Private Sub TextBox1_Change()

End Sub

Private Sub UserForm_Click()

End Sub
