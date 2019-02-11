VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "SchedulingChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IChecker

Private mBase As ColumnsChecker


Private Sub Class_Initialize()
    Dim base As IChecker
    Set mBase = New ColumnsChecker
    Set base = mBase
    base.name = "Scheduling"
    
    mBase.columns = Array("JOBPATH", "JOBISN", "JOBNAME", "SHCEDULEMODE", _
    "DAYSCAL", "MONTHDAYS", "WEEKDAYS", "TIMEFROM", "TIMETO", "CYCLIC", "IND_CYCLIC")
    mBase.BeginRow = 2
    mBase.BeginCol = 1
End Sub

Private Function IChecker_Check(sheet As Worksheet) As Boolean
    IChecker_Check = mBase.Check(sheet)
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
