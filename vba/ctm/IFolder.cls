VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IFolder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IXMLConfigItem
Implements ITag
Implements ITagData
Implements IJob

Private mBase As IJob

Private mJobs As Collection
Private mSubFolders As Collection


Public Property Get Jobs() As Collection
    Set Jobs = mJobs
End Property

Public Property Get SubFolders() As Collection
    Set SubFolders = mSubFolders
End Property

Public Sub AddSubItem(v As IJob)
    Set v.Parent = Me
    mSubFolders.Add v
End Sub


Private Sub Class_Initialize()
    Dim base As IXMLConfigItem
    Set mBase = New IJob
    Set base = mBase
    base.Reset
    base.XMLTagName = "SUB_FOLDER"
        
    Set mJobs = New Collection
    Set mSubFolders = New Collection
    
    
End Sub


Private Property Get IJob_AdditionalJobDetails() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_AdditionalJobDetails = base.AdditionalJobDetails
End Property

Private Property Get IJob_AdjustCond() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_AdjustCond = base.AdjustCond
End Property
Private Property Let IJob_AdjustCond(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.AdjustCond = v
End Property

Private Property Let IJob_ApplForm(RHS As Variant)
    Dim base As IJob
    Set base = mBase
    base.ApplForm = RHS
End Property

Private Property Get IJob_ApplForm() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ApplForm = base.ApplForm
End Property


Private Property Get IJob_ApplType() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ApplType = base.ApplType
End Property
Private Property Let IJob_ApplType(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ApplType = v
End Property

Private Property Get IJob_ApplVer() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ApplVer = base.ApplVer
End Property
Private Property Let IJob_ApplVer(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ApplVer = v
End Property

Private Property Get IJob_Application() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Application = base.Application
End Property

Private Property Let IJob_Application(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Application = v
End Property

Private Property Get IJob_Author() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Author = base.Author
End Property
Private Property Let IJob_Author(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Author = v
End Property

Private Property Get IJob_AutoArch() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_AutoArch = base.AutoArch
End Property
Private Property Let IJob_AutoArch(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.AutoArch = v
End Property

Private Property Get IJob_AutoEdit() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_AutoEdit = base.AutoEdit
End Property
Private Property Get IJob_AutoEdit2() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_AutoEdit2 = base.AutoEdit2
End Property

Private Property Get IJob_Capture() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_Capture = base.Capture
End Property

Private Property Get IJob_Control() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_Control = base.Control
End Property

Private Property Get IJob_InCond() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_InCond = base.InCond
End Property

Private Property Get IJob_JOn() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_JOn = base.JON
End Property

Private Property Get IJob_OnGroup() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_OnGroup = base.OnGroup
End Property

Private Property Get IJob_OnTable() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_OnTable = base.OnTable
End Property

Private Property Get IJob_JOption() As Variant
    Dim base As IJob
    Set base = mBase
    Set IJob_JOption = base.JOPtion
End Property

Private Property Let IJob_JOption(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.JOPtion = v
End Property

Private Property Get IJob_OutCond() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_OutCond = base.OutCond
End Property

Private Property Set IJob_Parent(RHS As IJob)
    Dim base As IJob
    Set base = mBase
    Set base.Parent = RHS
End Property

Private Property Get IJob_Parent() As IJob
    Dim base As IJob
    Set base = mBase
    Set IJob_Parent = base.Parent
End Property

Private Property Get IJob_Quantitative() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_Quantitative = base.Quantitative
End Property

Private Property Get IJob_RuleBasedCalendar() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_RuleBasedCalendar = base.RuleBasedCalendar
End Property

Private Property Get IJob_RuleBasedCalendarRelationship() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RuleBasedCalendarRelationship = base.RuleBasedCalendarRelationship
End Property

Private Property Let IJob_RuleBasedCalendarRelationship(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RuleBasedCalendarRelationship = v
End Property

Private Property Get IJob_RuleBasedCalendars() As Collection
    Dim base As IJob
    Set base = mBase
    
    Set IJob_RuleBasedCalendars = base.RuleBasedCalendars
End Property

Private Property Get IJob_Shout() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_Shout = base.Shout
End Property
Private Property Get IJob_StepRange() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_StepRange = base.StepRange
End Property

Private Property Get IJob_Tag() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_Tag = base.Tag
End Property
Private Property Get IJob_TagNames() As Collection
    Dim base As IJob
    Set base = mBase
    Set IJob_TagNames = base.TagNames
End Property
Private Property Get IJob_Variable() As Collection
   Dim base As IJob
   Set base = mBase
   Set IJob_Variable = base.Variable
End Property

Private Property Get IJob_Category() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Category = base.Category
End Property
Private Property Let IJob_Category(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Category = v
End Property
Private Property Get IJob_ChangeDate() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ChangeDate = base.ChangeDate
End Property
Private Property Let IJob_ChangeDate(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ChangeDate = v
End Property

Private Property Get IJob_ChangeTime() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ChangeTime = base.ChangeTime
End Property
Private Property Let IJob_ChangeTime(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ChangeTime = v
End Property

Private Property Get IJob_ChangeUserId() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ChangeUserId = base.ChangeUserId
End Property
Private Property Let IJob_ChangeUserId(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ChangeUserId = v
End Property

Private Property Get IJob_CmVer() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CmVer = base.CmVer
End Property
Private Property Let IJob_CmVer(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CmVer = v
End Property

Private Property Get IJob_CmdLine() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CmdLine = base.CmdLine
End Property
Private Property Let IJob_CmdLine(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CmdLine = v
End Property

Private Property Get IJob_Confirm() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Confirm = base.Confirm
End Property
Private Property Let IJob_Confirm(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Confirm = v
End Property

Private Property Get IJob_CreatedBy() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CreatedBy = base.CreatedBy
End Property
Private Property Let IJob_CreatedBy(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CreatedBy = v
End Property

Private Property Get IJob_CreationDate() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CreationDate = base.CreationDate
End Property
Private Property Let IJob_CreationDate(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CreationDate = v
End Property

Private Property Get IJob_CreationTime() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CreationTime = base.CreationTime
End Property
Private Property Let IJob_CreationTime(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CreationTime = v
End Property

Private Property Get IJob_CreationUser() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CreationUser = base.CreationUser
End Property
Private Property Let IJob_CreationUser(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CreationUser = v
End Property

Private Property Get IJob_Critical() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Critical = base.Critical
End Property
Private Property Let IJob_Critical(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Critical = v
End Property

Private Property Get IJob_Cyclic() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Cyclic = base.Cyclic
End Property
Private Property Let IJob_Cyclic(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Cyclic = v
End Property

Private Property Get IJob_CyclicIntervalSequence() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CyclicIntervalSequence = base.CyclicIntervalSequence
End Property
Private Property Let IJob_CyclicIntervalSequence(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CyclicIntervalSequence = v
End Property

Private Property Get IJob_CyclicTimesSequence() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CyclicTimesSequence = base.CyclicTimesSequence
End Property
Private Property Let IJob_CyclicTimesSequence(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CyclicTimesSequence = v
End Property

Private Property Get IJob_CyclicTolerance() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CyclicTolerance = base.CyclicTolerance
End Property
Private Property Let IJob_CyclicTolerance(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CyclicTolerance = v
End Property

Private Property Get IJob_CyclicType() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_CyclicType = base.CyclicType
End Property
Private Property Let IJob_CyclicType(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.CyclicType = v
End Property


Private Property Get IJob_Description() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Description = base.Description
End Property
Private Property Let IJob_Description(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Description = v
End Property

Private Property Get IJob_DocLib() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_DocLib = base.DocLib
End Property
Private Property Let IJob_DocLib(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.DocLib = v
End Property

Private Property Get IJob_DocMem() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_DocMem = base.DocMem
End Property
Private Property Let IJob_DocMem(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.DocMem = v
End Property

Private Property Get IJob_DueOut() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_DueOut = base.DueOut
End Property
Private Property Let IJob_DueOut(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.DueOut = v
End Property

Private Property Get IJob_DueOutDaysOffset() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_DueOutDaysOffset = base.DueOutDaysOffset
End Property
Private Property Let IJob_DueOutDaysOffset(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.DueOutDaysOffset = v
End Property

Private Property Get IJob_FPROCS() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_FPROCS = base.FPROCS
End Property
Private Property Let IJob_FPROCS(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.FPROCS = v
End Property

Private Property Get IJob_From() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_From = base.From
End Property
Private Property Let IJob_From(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.From = v
End Property

Private Property Get IJob_FromDaysOffset() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_FromDaysOffset = base.FromDaysOffset
End Property
Private Property Let IJob_FromDaysOffset(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.FromDaysOffset = v
End Property

Private Property Get IJob_Group() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Group = base.Group
End Property
Private Property Let IJob_Group(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Group = v
End Property

Private Property Get IJob_IndCyclic() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_IndCyclic = base.IndCyclic
End Property
Private Property Let IJob_IndCyclic(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.IndCyclic = v
End Property

Private Property Get IJob_InStreamJCL() As Variant
    Dim base As IJob
    Set base = mBase
    
    IJob_InStreamJCL = base.InStreamJCL
End Property
Private Property Let IJob_InStreamJCL(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.InStreamJCL = v
End Property

Private Property Get IJob_Interval() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Interval = base.Interval
End Property
Private Property Let IJob_Interval(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Interval = v
End Property

Private Property Get IJob_IsCurrentVersion() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_IsCurrentVersion = base.IsCurrentVersion
End Property
Private Property Let IJob_IsCurrentVersion(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.IsCurrentVersion = v
End Property

Private Property Get IJob_JobVersion() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_JobVersion = base.JobVersion
End Property
Private Property Let IJob_JobVersion(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.JobVersion = v
End Property

Private Property Get IJob_JobISN() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_JobISN = base.JobISN
End Property
Private Property Let IJob_JobISN(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.JobISN = v
End Property

Private Property Get IJob_JobName() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_JobName = base.JobName
End Property
Private Property Let IJob_JobName(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.JobName = v
End Property

Private Property Get IJob_JobsInGroup() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_JobsInGroup = base.JobsInGroup
End Property
Private Property Let IJob_JobsInGroup(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.JobsInGroup = v
End Property

Private Property Get IJob_LargeSize() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_LargeSize = base.LargeSize
End Property
Private Property Let IJob_LargeSize(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.LargeSize = v
End Property

Private Property Get IJob_MaxDays() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MaxDays = base.MaxDays
End Property
Private Property Let IJob_MaxDays(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MaxDays = v
End Property

Private Property Get IJob_MaxRerun() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MaxRerun = base.MaxRerun
End Property
Private Property Let IJob_MaxRerun(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MaxRerun = v
End Property

Private Property Get IJob_MaxRuns() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MaxRuns = base.MaxRuns
End Property
Private Property Let IJob_MaxRuns(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MaxRuns = v
End Property

Private Property Get IJob_MemLib() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MemLib = base.MemLib
End Property
Private Property Let IJob_MemLib(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MemLib = v
End Property

Private Property Get IJob_MemName() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MemName = base.MemName
End Property
Private Property Let IJob_MemName(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MemName = v
End Property

Private Property Get IJob_Minimum() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Minimum = base.Minimum
End Property
Private Property Let IJob_Minimum(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Minimum = v
End Property

Private Property Get IJob_MultyAgent() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_MultyAgent = base.MultyAgent
End Property
Private Property Let IJob_MultyAgent(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.MultyAgent = v
End Property

Private Property Get IJob_NodeId() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_NodeId = base.NodeId
End Property
Private Property Let IJob_NodeId(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.NodeId = v
End Property

Private Property Get IJob_ODate() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ODate = base.ODate
End Property
Private Property Let IJob_ODate(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ODate = v
End Property

Private Property Get IJob_OverLib() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_OverLib = base.OverLib
End Property
Private Property Let IJob_OverLib(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.OverLib = v
End Property

Private Property Get IJob_OverridePath() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_OverridePath = base.OverridePath
End Property
Private Property Let IJob_OverridePath(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.OverridePath = v
End Property

Private Property Get IJob_Owner() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Owner = base.Owner
End Property
Private Property Let IJob_Owner(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Owner = v
End Property

Private Property Get IJob_Par() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Par = base.Par
End Property
Private Property Let IJob_Par(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Par = v
End Property

Private Property Get IJob_ParentFolder() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ParentFolder = base.ParentFolder
End Property
Private Property Let IJob_ParentFolder(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ParentFolder = v
End Property

Private Property Get IJob_ParentTable() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ParentTable = base.ParentTable
End Property
Private Property Let IJob_ParentTable(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ParentFolder = v
End Property

Private Property Get IJob_PdsName() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_PdsName = base.PdsName
End Property
Private Property Let IJob_PdsName(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.PdsName = v
End Property

Private Property Get IJob_PrevDay() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_PrevDay = base.PrevDay
End Property
Private Property Let IJob_PrevDay(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.PrevDay = v
End Property

Private Property Get IJob_PreventNCT2() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_PreventNCT2 = base.PreventNCT2
End Property
Private Property Let IJob_PreventNCT2(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.PreventNCT2 = v
End Property

Private Property Get IJob_Priority() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_Priority = base.Priority
End Property
Private Property Let IJob_Priority(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.Priority = v
End Property

Private Property Get IJob_RequestNjeNode() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RequestNjeNode = base.RequestNjeNode
End Property
Private Property Let IJob_RequestNjeNode(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RequestNjeNode = v
End Property

Private Property Get IJob_RerunMem() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RerunMem = base.RerunMem
End Property
Private Property Let IJob_RerunMem(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RerunMem = v
End Property

Private Property Get IJob_RetenDays() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RetenDays = base.RetenDays
End Property
Private Property Let IJob_RetenDays(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RetenDays = v
End Property

Private Property Get IJob_RetenGen() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RetenGen = base.RetenGen
End Property
Private Property Let IJob_RetenGen(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RetenGen = v
End Property


Private Property Get IJob_RunAs() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_RunAs = base.RunAs
End Property
Private Property Let IJob_RunAs(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.RunAs = v
End Property

Private Property Get IJob_SchedulingEnvironment() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_SchedulingEnvironment = base.SchedulingEnvironment
End Property
Private Property Let IJob_SchedulingEnvironment(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.SchedulingEnvironment = v
End Property

Private Property Get IJob_StatCal() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_StatCal = base.StatCal
End Property
Private Property Let IJob_StatCal(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.StatCal = v
End Property

Private Property Get IJob_SubApplication() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_SubApplication = base.SubApplication
End Property
Private Property Let IJob_SubApplication(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.SubApplication = v
End Property

Private Property Get IJob_SysDB() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_SysDB = base.SysDB
End Property
Private Property Let IJob_SysDB(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.SysDB = v
End Property

Private Property Get IJob_SystemAffinity() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_SystemAffinity = base.SystemAffinity
End Property
Private Property Let IJob_SystemAffinity(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.SystemAffinity = v
End Property

Private Property Get IJob_TagRelationship() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TagRelationship = base.TagRelationship
End Property
Private Property Let IJob_TagRelationship(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TagRelationship = v
End Property

Private Property Get IJob_TaskClass() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TaskClass = base.TaskClass
End Property
Private Property Let IJob_TaskClass(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TaskClass = v
End Property

Private Property Get IJob_TaskType() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TaskType = base.TaskType
End Property
Private Property Let IJob_TaskType(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TaskType = v
End Property

Private Property Get IJob_TimeFrom() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TimeFrom = base.TimeFrom
End Property
Private Property Let IJob_TimeFrom(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TimeFrom = v
End Property

Private Property Get IJob_TimeTo() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TimeTo = base.TimeTo
End Property
Private Property Let IJob_TimeTo(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TimeTo = v
End Property

Private Property Get IJob_TimeZone() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TimeZone = base.TimeZone
End Property
Private Property Let IJob_TimeZone(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TimeZone = v
End Property

Private Property Get IJob_ToDaysOffset() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_ToDaysOffset = base.ToDaysOffset
End Property
Private Property Let IJob_ToDaysOffset(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.ToDaysOffset = v
End Property

Private Property Get IJob_TPGMS() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TPGMS = base.TPGMS
End Property
Private Property Let IJob_TPGMS(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TPGMS = v
End Property

Private Property Get IJob_TPROCS() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_TPROCS = base.TPROCS
End Property
Private Property Let IJob_TPROCS(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.TPROCS = v
End Property

Private Property Get IJob_UseInStreamJCL() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_UseInStreamJCL = base.UseInStreamJCL
End Property
Private Property Let IJob_UseInStreamJCL(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.UseInStreamJCL = v
End Property

Private Property Get IJob_VersionHost() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_VersionHost = base.VersionHost
End Property
Private Property Let IJob_VersionHost(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.VersionHost = v
End Property

Private Property Get IJob_VersionOpCode() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_VersionOpCode = base.VersionOpCode
End Property
Private Property Let IJob_VersionOpCode(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.VersionOpCode = v
End Property

Private Property Get IJob_VersionSerial() As Variant
    Dim base As IJob
    Set base = mBase
    IJob_VersionSerial = base.VersionSerial
End Property
Private Property Let IJob_VersionSerial(v As Variant)
    Dim base As IJob
    Set base = mBase
    base.VersionSerial = v
End Property



Private Property Get ITagData_ActiveFrom() As Variant
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    ITagData_ActiveFrom = mBase.ActiveFrom
End Property

Private Property Let ITagData_ActiveFrom(RHS As Variant)
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    baseTagData.ActiveFrom = RHS
End Property



Private Property Let ITagData_ActiveTill(RHS As Variant)
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    baseTagData.ActiveTill = RHS
End Property

Private Property Get ITagData_ActiveTill() As Variant
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    ITagData_ActiveTill = baseTagData.ActiveTill
End Property


Private Property Let ITagData_APR(RHS As Variant)
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    baseTagData.APR = RHS
End Property

Private Property Get ITagData_APR() As Variant
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    ITagData_APR = baseTagData.APR
End Property

Private Property Let ITagData_AUG(RHS As Variant)
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    baseTagData.AUG = RHS
End Property

Private Property Get ITagData_AUG() As Variant
    Dim baseTagData As ITagData
    Set baseTagData = mBase
    ITagData_AUG = base.AUG
End Property

Private Property Let ITagData_Confcal(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Confcal = RHS
End Property

Private Property Get ITagData_Confcal() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Confcal = base.Confcal
End Property

Private Property Let ITagData_Days(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Days = RHS
End Property

Private Property Get ITagData_Days() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Days = base.Days
End Property

Private Property Let ITagData_DaysAndOr(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.DaysAndOr = RHS
End Property

Private Property Get ITagData_DaysAndOr() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_DaysAndOr = base.DaysAndOr
End Property

Private Property Let ITagData_Dayscal(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.DaysCal = RHS
End Property

Private Property Get ITagData_Dayscal() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Dayscal = base.DaysCal
End Property

Private Property Let ITagData_DEC(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.DEC = RHS
End Property

Private Property Get ITagData_DEC() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_DEC = base.DEC
End Property

Private Property Let ITagData_FEB(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.FEB = base.FEB
End Property

Private Property Get ITagData_FEB() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_FEB = base.FEB
End Property

Private Property Let ITagData_JAN(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.JAN = RHS
End Property

Private Property Get ITagData_JAN() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_JAN = base.JAN
End Property

Private Property Let ITagData_JUL(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.JUL = RHS
End Property

Private Property Get ITagData_JUL() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_JUL = base.JUL
End Property

Private Property Let ITagData_JUN(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.JUN = RHS
End Property

Private Property Get ITagData_JUN() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_JUN = base.JUN
End Property

Private Property Let ITagData_Level(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Level = RHS
End Property

Private Property Get ITagData_Level() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Level = base.Level
End Property


Private Property Let ITagData_MAR(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.MAR = RHS
End Property

Private Property Get ITagData_MAR() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_MAR = base.MAR
End Property

Private Property Let ITagData_MaxWait(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.MaxWait = RHS
End Property

Private Property Get ITagData_MaxWait() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_MaxWait = base.MaxWait
End Property

Private Property Let ITagData_MAY(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.MAY = RHS
End Property

Private Property Get ITagData_MAY() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_MAY = base.MAY
End Property

Private Property Let ITagData_NOV(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.NOV = RHS
End Property

Private Property Get ITagData_NOV() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_NOV = base.NOV
End Property

Private Property Let ITagData_OCT(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.OCT = RHS
End Property

Private Property Get ITagData_OCT() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_OCT = base.OCT
End Property

Private Property Let ITagData_Retro(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Retro = RHS
End Property

Private Property Get ITagData_Retro() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Retro = base.Retro
End Property

Private Property Let ITagData_SEP(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.SEP = RHS
End Property

Private Property Get ITagData_SEP() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_SEP = base.SEP
End Property


Private Property Let ITagData_Shift(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Shift = RHS
End Property

Private Property Get ITagData_Shift() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Shift = base.Shift
End Property

Private Property Let ITagData_ShiftNum(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.ShiftNum = RHS
End Property

Private Property Get ITagData_ShiftNum() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_ShiftNum = base.ShiftNum
End Property

Private Property Let ITagData_TagsActiveFrom(RHS As Variant)
Dim base As ITagData
    Set base = mBase
    base.TagsActiveFrom = RHS
End Property

Private Property Get ITagData_TagsActiveFrom() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_TagsActiveFrom = base.TagsActiveFrom
End Property

Private Property Let ITagData_TagsActiveTill(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.TagsActiveTill = RHS
End Property

Private Property Get ITagData_TagsActiveTill() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_TagsActiveTill = base.TagsActiveTill
End Property

Private Property Let ITagData_TDate(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.TDate = RHS
End Property

Private Property Get ITagData_TDate() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_TDate = base.TDate
End Property

Private Property Let ITagData_WeekDays(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.WeekDays = RHS
End Property

Private Property Get ITagData_WeekDays() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_WeekDays = base.WeekDays
End Property

Private Property Let ITagData_Weekscal(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.Weekscal = RHS
End Property

Private Property Get ITagData_Weekscal() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_Weekscal = base.Weekscal
End Property



Private Property Let ITag_Name(RHS As Variant)
    Dim base As ITag
    Set base = mBase
    base.name = RHS
End Property

Private Property Get ITag_Name() As Variant
    Dim base As ITag
    Set base = mBase
    ITag_Name = base.name
End Property

Private Property Get ITag_TagName() As Variant
    Dim base As ITag
    Set base = mBase
    ITag_TagName = base.TagName
End Property

Private Property Let ITag_TagName(RHS As Variant)
    Dim base As ITag
    Set base = mBase
    base.TagName = RHS
End Property


Private Function IXMLConfigItem_Export(doc As MSXML2.IXMLDOMDocument2, Parent As MSXML2.IXMLDOMElement) As MSXML2.IXMLDOMElement
    Dim base As IXMLConfigItem
    Dim baseJob As IJob
    Dim current As IXMLDOMElement
    Dim item As IXMLConfigItem
    Dim subItem As IXMLDOMElement
    Dim attr As IXMLDOMAttribute
    Set base = mBase
    Set current = base.Export(doc, Parent)
    
    Set baseJob = mBase
    If baseJob.RuleBasedCalendars.Count > 0 Then
        For Each item In mBase.RuleBasedCalendars
            item.Export doc, current
        Next
    Else
        Set subItem = doc.createElement("RULE_BASED_CALENDARS")
        subItem.setAttribute "NAME", "*"
        current.appendChild subItem
    End If
    
    For Each item In mJobs
        item.Export doc, current
    Next
    For Each item In mSubFolders
        item.Export doc, current
    Next
    
    Set IXMLConfigItem_Export = current
End Function

Private Sub IXMLConfigItem_Reset()
    Dim base As IXMLConfigItem
    Set base = mBase
    base.Reset
    
    ClearCollection mJobs
    ClearCollection mSubFolders
End Sub

Private Property Let IXMLConfigItem_XMLTagName(RHS As String)
    Dim base As IXMLConfigItem
    Set base = mBase
    base.XMLTagName = RHS
End Property

Private Property Get IXMLConfigItem_XMLTagName() As String
    Dim base As IXMLConfigItem
    Set base = mBase
     IXMLConfigItem_XMLTagName = base.XMLTagName
End Property


