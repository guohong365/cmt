VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ConfigChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IChecker

Private mBase As IChecker

Private Sub Class_Initialize()
    Set mBase = New IChecker
    mBase.name = "Config"
End Sub

Private Function IChecker_Check(sheet As Worksheet) As Boolean
    IChecker_Check = True
    If mBase.Check(sheet) = False Then
        IChecker_Check = False
        Exit Function
    End If
    
    'DATACENTER
    If StrComp(sheet.Cells(1, 1), "DATACENTER") <> 0 Then
        IChecker_Check = False
        sheet.Cells(1, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(1, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
    If sheet.Cells(1, 2).Value = "" Then
        IChecker_Check = False
        sheet.Cells(1, 2).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(1, 2).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    'VERSION
    If StrComp(sheet.Cells(2, 1), "VERSION") <> 0 Then
        IChecker_Check = False
        sheet.Cells(2, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(2, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    If sheet.Cells(2.2) = "" Then
        IChecker_Check = False
        sheet.Cells(2, 2).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(2, 2).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    'PLATFORM
    If StrComp(sheet.Cells(3, 1), "PLATFORM") <> 0 Then
        IChecker_Check = False
        sheet.Cells(3, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(3, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    If sheet.Cells(3, 2) = "" Then
        IChecker_Check = False
        sheet.Cells(3, 2).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(3, 2).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
    '�ű������û�
    If StrComp(sheet.Cells(4, 1), "�ű������û�") <> 0 Then
        IChecker_Check = False
        sheet.Cells(4, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(4, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    If sheet.Cells(4, 2) = "" Then
        IChecker_Check = False
        sheet.Cells(4, 2).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(4, 2).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
    
    '���ݳ�ȡ�ű�·��
    If StrComp(sheet.Cells(5, 1), "���ݳ�ȡ�ű�·��") <> 0 Then
        IChecker_Check = False
        sheet.Cells(5, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(5, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
    '���ݼ��ؽű�·��
    If StrComp(sheet.Cells(6, 1), "���ݼ��ؽű�·��") <> 0 Then
        IChecker_Check = False
        sheet.Cells(6, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(6, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If

    '����ϵͳok�ļ����·��
    If StrComp(sheet.Cells(7, 1), "����ϵͳok�ļ����·��") <> 0 Then
        IChecker_Check = False
        sheet.Cells(7, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(7, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If

    'iml�ű����·��
    If StrComp(sheet.Cells(8, 1), "iml�ű����·��") <> 0 Then
        IChecker_Check = False
        sheet.Cells(8, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(8, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
    'idl�ű����·��
    If StrComp(sheet.Cells(9, 1), "idl�ű����·��") <> 0 Then
        IChecker_Check = False
        sheet.Cells(9, 1).Interior.Color = RGB(255, 0, 0)
    Else
        sheet.Cells(9, 1).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
    End If
    
End Function


Private Property Let IChecker_Name(RHS As String)
    Dim base As IChecker
    Set base = mBase
    base.name = RHS
End Property

Private Property Get IChecker_Name() As String
    Dim base As IChecker
    Set base = mBase
    IChecker_Name = base.name
End Property