VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "GeneralSheetChecker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IChecker

Private mBase As ColumnsChecker

Private Function IChecker_Check(sheet As Worksheet) As Boolean
    IChecker_Check = True
    If mBase.Check(sheet) = False Then
        IChecker_Check = False
        Exit Function
    End If
    
    
End Function

Private Sub Class_Initialize()
    Dim base As IChecker
    Set mBase = New ColumnsChecker
    Set base = mBase
    base.name = "General"
    
    mBase.columns = Array("JOBNAME", "JOBPATH", "JOBISN", "APPLICATION", "SUB_APPLICATION", _
    "APPL_TYPE", "DESCRIPTION", "TASKTYPE", "MEMLIB", "MEMNAME", "CMDLINE", "CREATED_BY", _
    "NODEID", "RUN_AS", "PRIORITY", "CRITICAL", "MAXRERUN", "INTERVAL", "DOCLIB", "DOCMEM", _
    "MULTY_AGENT", "CONFIRM", "APPL_FORM", "CM_VER", "USE_INSTREAM_JCL", "VERSION_OPCODE", _
    "IS_CURRENT_VERSION", "VERSION_SERIAL", "VERSION_HOST")
    mBase.BeginCol = 1
    mBase.BeginRow = 2
End Sub


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
