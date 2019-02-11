VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ColumnsChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IChecker

Private mBase As IChecker

Private mBeginRow As Integer
Private mBeginCol As Integer

Private mCOLUMNS As Variant


Public Property Get BeginRow() As Integer
    BeginRow = mBeginRow
End Property
Public Property Let BeginRow(v As Integer)
    mBeginRow = v
End Property
Public Property Get BeginCol() As Integer
    BeginCol = mBeginCol
End Property
Public Property Let BeginCol(v As Integer)
    mBeginCol = v
End Property

Public Property Get columns() As Variant
    columns = mCOLUMNS
End Property
Public Property Let columns(v As Variant)
    If IsArray(v) Then
        mCOLUMNS = v
    Else
        mCOLUMNS = Empty
    End If
End Property

Public Function Check(sheet As Worksheet) As Boolean
    Check = checkColumns(sheet, mBeginRow, mBeginCol)
End Function


Private Function checkColumns(sheet As Worksheet, BeginRow As Integer, BeginCol As Integer) As Boolean
    checkColumns = True
    If Not IsEmpty(mCOLUMNS) Then
        Dim i
        Dim cell As Range
        Dim errorHeaders As Range
        Dim col As Integer
        
        col = BeginCol
        For i = LBound(mCOLUMNS) To UBound(mCOLUMNS)
            Set cell = sheet.Cells(BeginRow, col)
            If StrComp(cell.Text, mCOLUMNS(i)) <> 0 Then
                checkColumns = False
                cell.Interior.Color = RGB(255, 0, 0) '标记错误单元格为红色背景
     
                ' comm = "文件列头名称应该为：“" & colHeader(i - 1) & "”"
                ' cell.AddComment Text:=comm
            Else
                cell.Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
            End If
            col = col + 1
        Next i
    Else
        checkColumns = True
    End If
End Function




Private Sub Class_Initialize()
    Set mBase = New IChecker
End Sub

Private Function IChecker_Check(sheet As Worksheet) As Boolean
    IChecker_Check = checkColumns(sheet, mBeginRow, mBeginColumn)
End Function

Private Property Let IChecker_Name(RHS As String)
    mBase.name = RHS
End Property

Private Property Get IChecker_Name() As String
    IChecker_Name = mBase.name
End Property
