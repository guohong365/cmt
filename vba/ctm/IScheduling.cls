VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IScheduling"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit


Private mJOBPATH As Variant
Private mJOBISN As Variant
Private mJOBNAME As Variant

Private mSCHEDULEMODE As Variant
Private mDAYSCAL As Variant
Private mMONTHDAYS
Private mWEEKDAYS
Private mTIMEFROM
Private mTIMETO
Private mCYCLIC
Private mIND_CYCLIC



Public Property Get JobPath() As Variant
    JobPath = mJOBPATH
End Property
Public Property Let JobPath(v As Variant)
    mJOBPATH = v
End Property

Public Property Get JobISN() As Variant
    JobISN = mJOBISN
End Property
Public Property Let JobISN(v As Variant)
    mJOBISN = v
End Property

Public Property Get JobName() As Variant
    JobName = mJOBNAME
End Property
Public Property Let JobName(v As Variant)
    mJOBNAME = v
End Property

Public Property Get ScheduleMode() As Variant
    ScheduleMode = mSCHEDULEMODE
End Property
Public Property Let ScheduleMode(v As Variant)
    mSCHEDULEMODE = v
End Property
Public Property Get DaysCal() As Variant
    DaysCal = mDAYSCAL
End Property
Public Property Let DaysCal(v As Variant)
    mDAYSCAL = v
End Property

Public Property Get MonthDays() As Variant
    MonthDays = mMONTHDAYS
End Property
Public Property Let MonthDays(v As Variant)
    mMONTHDAYS = v
End Property

Public Property Get WeekDays() As Variant
    WeekDays = mWEEKDAYS
End Property
Public Property Let WeekDays(v As Variant)
    mWEEKDAYS = v
End Property

Public Property Get TimeFrom() As Variant
    TimeFrom = mTIMEFROM
End Property
Public Property Let TimeFrom(v As Variant)
    mTIMEFROM = v
End Property

Public Property Get TimeTo() As Variant
    TimeTo = mTIMETO
End Property
Public Property Let TimeTo(v As Variant)
    mTIMETO = v
End Property

Public Property Get Cyclic() As Variant
    Cyclic = mCYCLIC
End Property
Public Property Let Cyclic(v As Variant)
    mCYCLIC = v
End Property
Public Property Get IndCyclic() As Variant
    IndCyclic = mIND_CYCLIC
End Property
Public Property Let IndCyclic(v As Variant)
    mIND_CYCLIC = v
End Property

Public Property Get IsValid() As Boolean
    IsValid = True
End Property

Public Sub SetJobSchedue(job As IJob)
    Dim base As ITagData
    Set base = job
    Select Case mSCHEDULEMODE
        Case "every day"
            SetJobToEveryDay base
        Case "week day"
            SetJobToWeekDay (job)
        Case "month day"
            SetJobToMonthDay (job)
        Case "base on calenday"
            SetJobToCalendar (job)
        Case Else
            SetJobToCustom (job)
    End Select
End Sub

Private Sub SetJobToCalendar(job As IJob)
    Dim base As ITagData
    Set base = job
    base.DaysCal = mDAYSCAL
End Sub

Private Sub SetJobToEveryDay(job As IJob)
    Dim base As ITagData
    Set base = job
    SetToEveryDay base
    base.Level = Empty
    base.MaxWait = Empty
    base.Retro = Empty
    base.Shift = Empty
    job.AdjustCond = Empty
    
End Sub
Private Sub SetJobToMonthDay(job As IJob)
    Dim base As ITagData
    Set base = job
    base.Days = mMONTHDAYS
End Sub
Private Sub SetJobToWeekDay(job As IJob)
    Dim base As ITagData
    Set base = job
    base.WeekDays = mWEEKDAYS
End Sub

Private Sub SetJobToCustom(job As IJob)
    Dim base As ITagData
    Set base = job
    
End Sub




