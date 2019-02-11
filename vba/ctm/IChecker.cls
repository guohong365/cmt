VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private mNAME As String

Public Property Get name() As String
    name = mNAME
End Property
Public Property Let name(v As String)
    mNAME = v
End Property

Public Function Check(sheet As Worksheet) As Boolean
    Check = True
End Function

Private Sub Class_Initialize()
End Sub

