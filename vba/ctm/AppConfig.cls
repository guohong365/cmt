VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "AppConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private mSmartFolders As Collection

Private mJobs As Collection
Private mSchedulings As Collection
Private mCreationDate As String
Private mCreationTime As String


Private mCheckers As Collection

Private mDataCenter As Variant
Private mVERSION As Variant
Private mPLATFORM As Variant
Private mRunAsUser As Variant
Private mAbstractScriptPath As Variant
Private mUploadScriptPath As Variant
Private mCoreOkFilePath As Variant
Private mImlScriptPath As Variant
Private mIdlScriptPath As Variant


Public Property Get DataCenter() As String
    DataCenter = mDataCenter
End Property
Public Property Let DataCenter(v As String)
    mDataCenter = v
End Property

Public Property Get Version() As String
    Version = mVERSION
End Property
Public Property Let Version(v As String)
    mVERSION = v
End Property

Public Property Get Platform() As String
    Platform = mPLATFORM
End Property
Public Property Let Platform(v As String)
    mPLATFORM = v
End Property

Public Property Get RunAsUser() As String
    RunAsUser = mRunAsUser
End Property
Public Property Let RunAsUser(v As String)
    mRunAsUser = v
End Property

Public Property Get AbstractScriptPath() As String
    AbstractScriptPath = mAbstractScriptPath
End Property
Public Property Let AbstractScriptPath(v As String)
    mAbstractScriptPath = v
End Property

Public Property Get UploadScriptPath() As String
    UploadScriptPath = mUploadScriptPath
End Property
Public Property Let UploadScriptPath(v As String)
    mUploadScriptPath = v
End Property

Public Property Get CoreOkFilePath() As String
    mCoreOkFilePath = CoreOkFilePath
End Property
Public Property Let CoreOkFilePath(v As String)
    mCoreOkFilePath = v
End Property

Public Property Get imlScriptPath() As String
    imlScriptPath = mImlScriptPath
End Property
Public Property Let imlScriptPath(v As String)
    mImlScriptPath = v
End Property

Public Property Get idlScriptPath() As String
    idlScriptPath = mIdlScriptPath
End Property
Public Property Let idlScriptPath(v As String)
    mIdlScriptPath = v
End Property


Private mAppFolders As Collection
Private mCurrentBook
Public Property Get CurrentBook() As Workbook
    Set CurrentBook = mCurrentBook
End Property

Public Property Let CurrentBook(v As Workbook)
    Set mCurrentBook = v
End Property
Public Property Set CurrentBook(v As Workbook)
    Set mCurrentBook = v
End Property

Public Property Get AppFolders() As Collection
    AppFolders = mAppFolders
End Property


Public Sub LoadFromXML(xmlPath As String)
    Dim xmlDoc As DOMDocument
    
    Set xmlDoc = CreateObject("MSXML2.DOMDocument")
    
    xmlDoc.Load xmlPath
    
    
End Sub


Public Sub ExportXML(xmlPath As String)
    Dim domDoc As Object
    Dim xmlDoc As DOMDocument
    Dim xmlHeader As IXMLDOMNode
    Dim xmlElement As IXMLDOMElement
    Dim xmlRoot As IXMLDOMElement
    Set xmlDoc = CreateObject("MSXML2.DOMDocument")
    
    Set xmlHeader = xmlDoc.createProcessingInstruction("xml", "version='1.0' encoding='UTF-8'")
    xmlDoc.appendChild xmlHeader
        
    
    Set xmlRoot = xmlDoc.createElement("DEFTABLE")
    xmlRoot.setAttribute "xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance"
    xmlRoot.setAttribute "xsi:noNamespaceSchemaLocation", "Folder.xsd"
    Set xmlDoc.DocumentElement = xmlRoot
    
    Dim item As IJob
    Dim base As IXMLConfigItem
    Dim itemName As String
    Dim str As String
    For Each item In mSmartFolders
        Set base = item
        str = base.XMLTagName
        str = item.JobName
        str = TypeName(item)
        base.Export xmlDoc, xmlRoot
    Next
    
    xmlDoc.Save xmlPath
End Sub

Private Sub ParseConfig(sheet As Worksheet)
     'DATACENTER
    mDataCenter = sheet.Cells(1, 2).Value2
    
    'VERSION
    mVERSION = sheet.Cells(2, 2).Value2
    
    'PLATFORM
    mPLATFORM = sheet.Cells(3, 2).Value2
    
    '脚本运行用户
    mRunAsUser = sheet.Cells(4, 2).Value2
    
    '数据抽取脚本路径
    mAbstractScriptPath = sheet.Cells(5, 2).Value2
    
    '数据加载脚本路径
    mUploadScriptPath = sheet.Cells(6, 2).Value2
    
    '核心系统ok文件存放路径
    mCoreOkFilePath = sheet.Cells(7, 2).Value2

    'iml脚本存放路径
    mImlScriptPath = sheet.Cells(8, 2).Value2
    
    'idl脚本存放路径
    mIdlScriptPath = sheet.Cells(9, 2).Value2

End Sub

Private Sub ParseJobs(sheet As Worksheet)
    Dim index As Integer
    Dim line As Range
    Dim job As IJob
    Dim schedule As IScheduling
    
    
    index = 3
    Do While Not (IsEmpty(sheet.Cells(index, 1)) Or sheet.Cells(index, 1) = "")
        Set job = New IJob
        
        SetDefaultJob job
        
        Set line = sheet.Cells(index, 1)
        'JOBNAME
        job.JobName = line(1, 1)
        'JOBPATH"
        job.ParentFolder = Trim(line(1, 2))
        'JOBISN
        job.JobISN = Val(line(1, 3))
        'APPLICATION
        job.Application = line(1, 4)
        'SUB_APPLICATION
        job.SubApplication = line(1, 5)
        'APPL_TYPE
        job.ApplType = line(1, 6)
        'DESCRIPTION
        job.Description = line(1, 7)
        'TASKTYPE
        If Not CheckTaskType(line(1, 8)) Then
            line.Cells(8).Interior.Color = RGB(255, 0, 0)
            GoTo next_job_line
        Else
            line.Cells(8).Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
        End If
        job.TaskType = line(1, 8)
        'MEMLIB
        job.MemLib = line(1, 9)
        'MEMNAME
        job.MemName = line(1, 10)
        'CMDLINE
        job.CmdLine = line(1, 11)
        'CREATED_BY
        job.CreatedBy = line(1, 12)
        'NODEID
        job.NodeId = line(1, 13)
        'RUN_AS
        job.RunAs = line(1, 14)
        'PRIORITY
        job.Priority = line(1, 15)
        'CRITICAL
        job.Critical = line(1, 16)
        'MAXRERUN
        job.MaxRerun = line(1, 17)
        'INTERVAL
        job.Interval = line(1, 18)
        'DOCLIB
        job.DocLib = line(1, 19)
        'DOCMEM
        job.DocMem = line(1, 20)
        'MULTY_AGENT
        job.MultyAgent = line(1, 21)
        'CONFIRM
        job.Confirm = line(1, 22)
        'APPL_FORM
        job.ApplForm = line(1, 23)
        'CM_VER
        job.CmVer = line(1, 24)
        'USE_INSTREAM_JCL
        job.UseInStreamJCL = line(1, 25)
        'VERSION_OPCODE
        job.VersionOpCode = line(1, 26)
        'IS_CURRENT_VERSION
        job.IsCurrentVersion = line(1, 27)
        'VERSION_SERIAL
        job.VersionSerial = line(1, 28)
        'VERSION_HOST
        job.VersionHost = line(1, 29)
        
        Set schedule = FindSchedule(job.JobName)
        If schedule Is Nothing Then
            line.Interior.Color = RGB(255, 255, 0)
            GoTo next_job_line
        Else
            line.Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
        End If
                
        schedule.SetJobSchedue job
                
        mJobs.Add job, job.JobName
        
        
        
next_job_line:
        index = index + 1
    Loop
End Sub

Private Sub ParseScheduling(sheet As Worksheet)
    Dim index As Integer
    Dim line As Range
    Dim schedule As IScheduling
    Dim cell As Variant
    index = 3
    Do While Not (IsEmpty(sheet.Cells(index, 1)) Or sheet.Cells(index, 1) = "")
        Set cell = sheet.Cells(index, 1)
        Set schedule = New IScheduling
        Set line = sheet.Cells(index, 1)
        
        'JOBPATH
        schedule.JobPath = line(1, 1)
        'JOBISN
        schedule.JobISN = line(1, 2)
        'JOBNAME
        schedule.JobName = line(1, 3)
        'SHCEDULEMODE
        schedule.ScheduleMode = line(1, 4)
        'MONTHDAYS
        schedule.MonthDays = line(1, 5)
        'WEEKDAYS
        schedule.WeekDays = line(1, 6)
        'TIMEFROM
        schedule.TimeFrom = line(1, 7)
        'TIMETO
        schedule.TimeTo = line(1, 8)
        'CYCLIC
        schedule.Cyclic = line(1, 9)
        'IND_CYCLIC
        schedule.IndCyclic = line(1, 10)
        If Not schedule.IsValid Then
            line.Interior.Color = RGB(255, 255, 0)
            GoTo next_scheduling_line
        Else
            line.Interior.ColorIndex = XlColorIndex.xlColorIndexAutomatic
        End If
        
        mSchedulings.Add schedule, schedule.JobName
next_scheduling_line:
        index = index + 1
    Loop
    
End Sub

Private Function FindSchedule(name As String) As IScheduling
    Dim schedule As IScheduling
    For Each schedule In mSchedulings
        If schedule.JobName = name Then
            Set FindSchedule = schedule
            Exit Function
        End If
    Next
    Set FindSchedule = Nothing
End Function

Public Function Parse(book As Workbook)
    ParseConfig book.Sheets("Config")
    ParseScheduling book.Sheets("Scheduling")
    ParseJobs book.Sheets("General")
    
    Call BuildFoldersStruction
    
    
End Function

Public Function Check(book As Workbook) As Boolean
    Dim checker As IChecker
    
    For Each checker In mCheckers
        If Not checker.Check(book.Sheets(checker.name)) Then
            Check = False
            Exit For
        End If
    Next
    Check = True
End Function


Private Sub Class_Initialize()
    Set mJobs = New Collection
    Set mCheckers = New Collection
    Set mSchedulings = New Collection
    mCreationDate = Format(Date, "yyyyMMdd")
    mCreationTime = Format(Time, "HHmmss")
    
    mCheckers.Add New ConfigChecker, "Config"
    mCheckers.Add New GeneralSheetChecker, "General"
    mCheckers.Add New SchedulingChecker, "Scheduling"
End Sub


Private Function CheckTaskType(TaskType As String) As Boolean
    CheckTaskType = (TaskType = "SMART Table" Or TaskType = "Sub-Table" Or TaskType = "Job" Or TaskType = "Command" Or TaskType = "Dummy")
End Function
Private Function CheckApplType(ApplType As String) As Boolean
    CheckApplType = (ApplType = "OS" Or ApplType = "FileWatch" Or ApplType = "JAVA" Or ApplType = "HADOOP" Or ApplType = "DATABASE")
End Function

Private Function FindItem(n As String, items As Collection) As IFolder
    Dim job As IJob
    Dim item As IFolder
    
    For Each item In items
        Set job = item
        If job.JobName = n Then
            Set FindItem = item
            Exit Function
        End If
    Next
    Set FindItem = Nothing
End Function

Private Function FindSubFolder(topFolder As IFolder, paths As Variant, index As Integer) As IFolder
    Dim subFolder As IFolder
    Dim item As IFolder
    Dim job As IJob
    Dim topName As String
    Dim currentName As String
    Dim current As IFolder
    Dim i As Integer

    Set job = topFolder
    topName = job.JobName
    currentName = paths(index)
    
    Set current = topFolder
    For i = index To UBound(paths)
        Set subFolder = FindItem(currentName, topFolder.SubFolders)
        If subFolder Is Nothing Then
           Set current = CreateFullPath(current, paths, 1)
           Exit For
        End If
        Set current = subFolder
    Next
    Set FindSubFolder = current
End Function

Public Function CreateFullPath(root As IFolder, paths As Variant, From As Integer) As IFolder
    Dim s As ISmartFolder
    Dim top As IFolder
    Dim subFolder As IFolder
    Dim job As IJob
    Dim current As Integer
    Dim i As Integer
    Dim path As String
    
    If root Is Nothing Then
        Set top = New ISmartFolder
        Set s = top
        SetDefaultSmartFolder s
        path = paths(LBound(paths))
        s.DataCenter = mDataCenter
        s.Version = mVERSION
        s.Platform = mPLATFORM
        Set job = top
        job.CreatedBy = mRunAsUser
        job.CreationUser = mRunAsUser
        job.ParentFolder = path
        job.JobName = path
        current = From + 1
    Else
        Set top = root
        current = From
    End If
        
    Set job = top
    path = job.JobName
    
    For i = current To UBound(paths)
        path = paths(i)
        Set subFolder = New IFolder
        SetDefaultFolder subFolder
        Set job = subFolder
        job.JobName = path
        job.Application = job.JobName
        job.ParentFolder = GetFolderPath(top)
        top.AddSubItem job, top
        Set top = subFolder
    Next
    Set CreateFullPath = top
    Set top = s
    
End Function

Private Sub BuildFoldersStruction()
    Dim currentJob As IJob
    Dim job As IJob
    Dim paths As Variant
    Dim path As String
    Dim config As IXMLConfigItem
    Dim subFolder As IFolder
    Dim topFolder As IFolder
    Dim n As Integer
    Dim sf As ISmartFolder
    
    Set mSmartFolders = New Collection
    
    For Each currentJob In mJobs
        paths = Split(currentJob.ParentFolder, "/")
        
        path = paths(LBound(paths))
        
        Set topFolder = FindItem(path, mSmartFolders)
                
        If topFolder Is Nothing Then
           Set subFolder = CreateFullPath(Nothing, paths, LBound(paths))
           
           Set job = subFolder
           Do While Not job.Parent Is Nothing
            Set job = job.Parent
           Loop
           Set sf = job
           mSmartFolders.Add sf
           
        Else
           Set subFolder = FindSubFolder(topFolder, paths, LBound(paths) + 1)
        End If
        subFolder.AddSubItem currentJob, subFolder
    Next
    
End Sub

Public Sub SetDefaultJob(job As IJob)
    Dim base As ITagData
    Set base = job
    job.CreationDate = mCreationDate
    job.CreationTime = mCreationTime
End Sub



Public Sub SetDefaultSmartFolder(smartFolder As ISmartFolder)
    Dim base As ITagData
    Dim job As IJob
    Dim folder As IFolder
    Set base = smartFolder
    Set job = smartFolder
    Set folder = smartFolder
    
    SetDefaultFolder folder
    
    smartFolder.Version = mVERSION
    smartFolder.Platform = mPLATFORM
    smartFolder.DaysKeepInNotOK = 0
    smartFolder.DataCenter = mDataCenter
    smartFolder.EnforceValidation = "N"
    smartFolder.FolderOrderMethod = "SYSTEM"
    smartFolder.UsedByCode = "0"
    smartFolder.RemoveAtOnce = "N"
    
    job.JobISN = 1
    job.TaskType = "SMART Table"
    job.VersionSerial = "1"
    
End Sub
Public Sub SetDefaultFolder(folder As IFolder)
    Dim base As ITagData
    Dim job As IJob
    
    Set base = folder
    Set job = folder
    
    SetDefaultJob job
    
    job.Application = job.JobName
    job.SubApplication = job.JobName
    job.AutoArch = "1"
    job.CreatedBy = mRunAsUser
    job.SysDB = "1"
    job.TaskType = "Sub-Table"
    job.SubApplication = Replace(GetFolderPath(job), "/", "_")
End Sub
