VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IJob"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IXMLConfigItem
Implements ITag
Implements ITagData

Private mBase As ITagData
Private mParent As IJob

Private mADDITIONAL_JOB_DETAILS As Collection
Private mAUTOEDIT2 As Collection
Private mAUTOEDIT As Collection
Private mVARIABLE As Collection
Private mSHOUT As Collection
Private mCONTROL As Collection
Private mINCOND As Collection
Private mQUANTITATIVE As Collection
Private mOUTCOND As Collection
Private mSTEP_RANGE As Collection
Private mRULE_BASED_CALENDAR As Collection
Private mTAG As Collection
Private mRULE_BASED_CALENDARS As Collection
Private mTAG_NAMES As Collection
Private mON As Collection
Private mON_TABLE As Collection
Private mON_GROUP As Collection
Private mCAPTURE As Collection

Private mJOBISN As Variant
Private mAPPLICATION  As Variant
Private mSUB_APPLICATION  As Variant
Private mGROUP  As Variant
Private mMEMNAME  As Variant
Private mJOBNAME  As Variant
Private mDESCRIPTION  As Variant
Private mCREATED_BY  As Variant
Private mAUTHOR  As Variant
Private mRUN_AS  As Variant
Private mOWNER  As Variant
Private mPRIORITY  As Variant
Private mCRITICAL  As Variant
Private mTASKTYPE  As Variant
Private mCYCLIC  As Variant
Private mNODEID  As Variant
Private mDOCLIB  As Variant
Private mDOCMEM  As Variant
Private mINTERVAL  As Variant
Private mOVERRIDE_PATH  As Variant
Private mOVERLIB  As Variant
Private mMEMLIB  As Variant
Private mCMDLINE  As Variant
Private mCONFIRM  As Variant
Private mMAXRERUN  As Variant
Private mAUTOARCH  As Variant
Private mMAXDAYS  As Variant
Private mMAXRUNS  As Variant
Private mTIMEFROM  As Variant
Private mTIMETO  As Variant
Private mRERUNMEM  As Variant
Private mCATEGORY  As Variant
Private mPDSNAME  As Variant
Private mMINIMUM  As Variant
Private mPREVENTNCT2  As Variant
Private mOPTION  As Variant
Private mFROM  As Variant
Private mPAR  As Variant
Private mSYSDB  As Variant
Private mDUE_OUT  As Variant
Private mRETEN_DAYS  As Variant
Private mRETEN_GEN  As Variant
Private mTASK_CLASS  As Variant
Private mPREV_DAY  As Variant
Private mADJUST_COND  As Variant
Private mJOBS_IN_GROUP  As Variant
Private mLARGE_SIZE  As Variant
Private mIND_CYCLIC  As Variant
Private mCREATION_USER  As Variant
Private mCREATION_DATE  As Variant
Private mCREATION_TIME  As Variant
Private mCHANGE_USERID  As Variant
Private mCHANGE_DATE  As Variant
Private mCHANGE_TIME  As Variant
Private mJOB_VERSION  As Variant
Private mRULE_BASED_CALENDAR_RELATIONSHIP  As Variant
Private mTAG_RELATIONSHIP  As Variant
Private mTIMEZONE  As Variant
Private mAPPL_TYPE  As Variant
Private mAPPL_VER  As Variant
Private mAPPL_FORM  As Variant
Private mCM_VER  As Variant
Private mMULTY_AGENT  As Variant
Private mSCHEDULING_ENVIRONMENT  As Variant
Private mSYSTEM_AFFINITY  As Variant
Private mREQUEST_NJE_NODE  As Variant
Private mSTAT_CAL  As Variant
Private mINSTREAM_JCL  As Variant
Private mUSE_INSTREAM_JCL  As Variant
Private mDUE_OUT_DAYSOFFSET  As Variant
Private mFROM_DAYSOFFSET  As Variant
Private mTO_DAYSOFFSET  As Variant
Private mVERSION_OPCODE  As Variant
Private mIS_CURRENT_VERSION  As Variant
Private mVERSION_SERIAL  As Variant
Private mVERSION_HOST  As Variant
Private mCYCLIC_INTERVAL_SEQUENCE  As Variant
Private mCYCLIC_TIMES_SEQUENCE  As Variant
Private mCYCLIC_TOLERANCE  As Variant
Private mCYCLIC_TYPE  As Variant
Private mPARENT_FOLDER  As Variant
Private mPARENT_TABLE  As Variant
Private mODATE  As Variant
Private mFPROCS  As Variant
Private mTPGMS  As Variant
Private mTPROCS  As Variant

Public Property Get AdditionalJobDetails() As Collection
    Set AdditionalJobDetails = mADDITIONAL_JOB_DETAILS
End Property

Public Property Get AutoEdit() As Collection
    Set AutoEdit = mAUTOEDIT
End Property
Public Property Get AutoEdit2() As Collection
    Set AutoEdit2 = mAUTOEDIT2
End Property
Public Property Get Variable() As Collection
    Set varialble = mVARIABLE
End Property
Public Property Get Shout() As Collection
    Set Shout = mSHOUT
End Property
Public Property Get Control() As Collection
    Set Control = mCONTROL
End Property
Public Property Get InCond() As Collection
    Set InCond = mINCOND
End Property
Public Property Get Quantitative() As Collection
    Set Quantitative = mQUANTITATIVE
End Property
Public Property Get OutCond() As Collection
    Set OutCond = mOUTCOND
End Property
Public Property Get StepRange() As Collection
    Set StepRange = mSTEP_RANGE
End Property
Public Property Get RuleBasedCalendar() As Collection
    Set RuleBasedCalendar = mRULE_BASED_CALENDAR
End Property
Public Property Get Tag() As Collection
    Set Tag = mTAG
End Property
Public Property Get RuleBasedCalendars() As Collection
    Set RuleBasedCalendars = mRULE_BASED_CALENDARS
End Property
Public Property Get TagNames() As Collection
    Set TagNames = mTAG_NAMES
End Property
Public Property Get JON() As Collection
    Set JON = mON
End Property

Public Property Get OnTable() As Collection
    Set OnTable = mON_TABLE
End Property
Public Property Get OnGroup() As Collection
    Set OnGroup = mON_GROUP
End Property
Public Property Get Capture() As Collection
    Set Capture = mCAPTURE
End Property

Public Property Get JobISN() As Variant
    JobISN = mJOBISN
End Property
Public Property Let JobISN(v As Variant)
    mJOBISN = v
End Property

Public Property Get Application() As Variant
    Application = mAPPLICATION
End Property
Public Property Let Application(v As Variant)
    mAPPLICATION = v
End Property

Public Property Get SubApplication() As Variant
    SubApplication = mSUB_APPLICATION
End Property
Public Property Let SubApplication(v As Variant)
     mSUB_APPLICATION = v
End Property

Public Property Get Group() As Variant
    Group = mGROUP
End Property
Public Property Let Group(v As Variant)
    mGROUP = v
End Property

Public Property Get MemName() As Variant
    MemName = mMEMNAME
End Property
Public Property Let MemName(v As Variant)
    mMEMNAME = v
End Property

Public Property Get JobName() As Variant
    JobName = mJOBNAME
End Property
Public Property Let JobName(v As Variant)
    mJOBNAME = v
End Property

Public Property Get Description() As Variant
    Description = mDESCRIPTION
End Property
Public Property Get CreatedBy() As Variant
    CreatedBy = mCREATED_BY
End Property
Public Property Get Author() As Variant
    Author = mAUTHOR
End Property
Public Property Get RunAs() As Variant
    RunAs = mRUN_AS
End Property
Public Property Get Owner() As Variant
    Owner = mOWNER
End Property
Public Property Get Priority() As Variant
    Priority = mPRIORITY
End Property
Public Property Get Critical() As Variant
    Critical = mCRITICAL
End Property
Public Property Get TaskType() As Variant
    TaskType = mTASKTYPE
End Property
Public Property Get Cyclic() As Variant
    Cyclic = mCYCLIC
End Property
Public Property Get NodeId() As Variant
    NodeId = mNODEID
End Property
Public Property Get DocLib() As Variant
    DocLib = mDOCLIB
End Property
Public Property Get DocMem() As Variant
    DocMem = mDOCMEM
End Property
Public Property Get Interval() As Variant
    Interval = mINTERVAL
End Property
Public Property Get OverridePath() As Variant
    OverridePath = mOVERRIDE_PATH
End Property
Public Property Get OverLib() As Variant
    OverLib = mOVERLIB
End Property
Public Property Get MemLib() As Variant
    MemLib = mMEMLIB
End Property
Public Property Get CmdLine() As Variant
    CmdLine = mCMDLINE
End Property
Public Property Get Confirm() As Variant
    Confirm = mCONFIRM
End Property
Public Property Get MaxRerun() As Variant
    MaxRerun = mMAXRERUN
End Property
Public Property Get AutoArch() As Variant
    AutoArch = mAUTOARCH
End Property
Public Property Get MaxDays() As Variant
    MaxDays = mMAXDAYS
End Property
Public Property Get MaxRuns() As Variant
    MaxRuns = mMAXRUNS
End Property
Public Property Get TimeFrom() As Variant
    TimeFrom = mTIMEFROM
End Property
Public Property Get TimeTo() As Variant
    TimeTo = mTIMETO
End Property
Public Property Get RerunMem() As Variant
    RerunMem = mRERUNMEM
End Property
Public Property Get Category() As Variant
    Category = mCATEGORY
End Property
Public Property Get PdsName() As Variant
    PdsName = mPDSNAME
End Property
Public Property Get Minimum() As Variant
    Minimum = mMINIMUM
End Property
Public Property Get PreventNCT2() As Variant
    PreventNCT2 = mPREVENTNCT2
End Property
Public Property Get JOPtion() As Variant
    JOPtion = mOPTION
End Property
Public Property Get From() As Variant
    From = mFROM
End Property
Public Property Get Par() As Variant
    Par = mPAR
End Property
Public Property Get SysDB() As Variant
    SysDB = mSYSDB
End Property
Public Property Get DueOut() As Variant
    DueOut = mDUE_OUT
End Property
Public Property Get RetenDays() As Variant
    RetenDays = mRETEN_DAYS
End Property
Public Property Get RetenGen() As Variant
    RetenGen = mRETEN_GEN
End Property
Public Property Get TaskClass() As Variant
    TaskClass = mtaskclass
End Property
Public Property Get PrevDay() As Variant
    PrevDay = mPREV_DAY
End Property
Public Property Get AdjustCond() As Variant
    AdjustCond = mADJUST_COND
End Property
Public Property Get JobsInGroup() As Variant
    JobsInGroup = mJOBS_IN_GROUP
End Property
Public Property Get LargeSize() As Variant
    LargeSize = mLARGE_SIZE
End Property
Public Property Get IndCyclic() As Variant
    IndCyclic = mIND_CYCLIC
End Property
Public Property Get CreationUser() As Variant
    CreationUser = mCREATION_USER
End Property
Public Property Get CreationDate() As Variant
    CreationDate = mCREATION_DATE
End Property
Public Property Get CreationTime() As Variant
    CreationTime = mCREATION_TIME
End Property
Public Property Get ChangeUserId() As Variant
    ChangeUserId = mCHANGE_USERID
End Property
Public Property Get ChangeDate() As Variant
    ChangeDate = mCHANGE_DATE
End Property
Public Property Get ChangeTime() As Variant
    ChangeTime = mCHANGE_TIME
End Property
Public Property Get JobVersion() As Variant
    JobVersion = mJOB_VERSION
End Property
Public Property Get RuleBasedCalendarRelationship() As Variant
    RuleBasedCalendarRelationship = mRULE_BASED_CALENDAR_RELATIONSHIP
End Property
Public Property Get TagRelationship() As Variant
    TagRelationship = mTAG_RELATIONSHIP
End Property
Public Property Get TimeZone() As Variant
    TimeZone = mtime_zone
End Property
Public Property Get ApplType() As Variant
    ApplType = mAPPL_TYPE
End Property
Public Property Get ApplVer() As Variant
    ApplVer = mAPPL_VER
End Property
Public Property Get ApplForm() As Variant
    ApplForm = mAPPL_FORM
End Property
Public Property Get CmVer() As Variant
    CmVer = mCM_VER
End Property
Public Property Get MultyAgent() As Variant
    MultyAgent = mMULTY_AGENT
End Property
Public Property Get SchedulingEnvironment() As Variant
    SchedulingEnvironment = mSCHEDULING_ENVIRONMENT
End Property
Public Property Get SystemAffinity() As Variant
    SystemAffinity = mSYSTEM_AFFINITY
End Property
Public Property Get RequestNjeNode() As Variant
    RequestNjeNode = mREQUEST_NJE_NODE
End Property
Public Property Get StatCal() As Variant
    StatCal = mSTAT_CAL
End Property
Public Property Get InStreamJCL() As Variant
    InStreamJCL = mINSTREAM_JCL
End Property
Public Property Get UseInStreamJCL() As Variant
    UseInStreamJCL = mUSE_INSTREAM_JCL
End Property
Public Property Get DueOutDaysOffset() As Variant
    DueOutDaysOffset = mDUE_OUT_DAYSOFFSET
End Property
Public Property Get FromDaysOffset() As Variant
    FromDaysOffset = mFROM_DAYSOFFSET
End Property
Public Property Get ToDaysOffset() As Variant
    ToDaysOffset = mTO_DAYSOFFSET
End Property
Public Property Get VersionOpCode() As Variant
    VersionOpCode = mVERSION_OPCODE
End Property
Public Property Get IsCurrentVersion() As Variant
    IsCurrentVersion = mIS_CURRENT_VERSION
End Property
Public Property Get VersionSerial() As Variant
    VersionSerial = mVERSION_SERIAL
End Property
Public Property Get VersionHost() As Variant
    VersionHost = mVERSION_HOST
End Property
Public Property Get CyclicIntervalSequence() As Variant
    CyclicIntervalSequence = mCYCLIC_INTERVAL_SEQUENCE
End Property
Public Property Get CyclicTimesSequence() As Variant
    CyclicTimesSequence = mCYCLIC_TIMES_SEQUENCE
End Property
Public Property Get CyclicTolerance() As Variant
    CyclicTolerance = mCYCLIC_TOLERANCE
End Property
Public Property Get CyclicType() As Variant
    CyclicType = mCYCLIC_TYPE
End Property
Public Property Get ParentFolder() As Variant
    ParentFolder = mPARENT_FOLDER
End Property
Public Property Get ParentTable() As Variant
    ParentTable = mPARENT_TABLE
End Property
Public Property Get ODate() As Variant
    ODate = mODATE
End Property
Public Property Get FPROCS() As Variant
    FPROCS = mFPROCS
End Property
Public Property Get TPGMS() As Variant
    TPGMS = mTPGMS
End Property
Public Property Get TPROCS() As Variant
    TPROCS = mTPROCS
End Property



Public Property Let Description(v As Variant)
     mDESCRIPTION = v
End Property
Public Property Let CreatedBy(v As Variant)
    mCREATED_BY = v
End Property
Public Property Let Author(v As Variant)
     mAUTHOR = v
End Property
Public Property Let RunAs(v As Variant)
    mRUN_AS = v
End Property
Public Property Let Owner(v As Variant)
    mOWNER = v
End Property
Public Property Let Priority(v As Variant)
     mPRIORITY = v
End Property
Public Property Let Critical(v As Variant)
    mCRITICAL = v
End Property
Public Property Let TaskType(v As Variant)
    mTASKTYPE = v
End Property
Public Property Let Cyclic(v As Variant)
    mCYCLIC = v
End Property
Public Property Let NodeId(v As Variant)
    mNODEID = v
End Property
Public Property Let DocLib(v As Variant)
    mDOCLIB = v
End Property
Public Property Let DocMem(v As Variant)
    mDOCMEM = v
End Property
Public Property Let Interval(v As Variant)
     mINTERVAL = v
End Property
Public Property Let OverridePath(v As Variant)
    mOVERRIDE_PATH = v
End Property
Public Property Let OverLib(v As Variant)
     mOVERLIB = v
End Property
Public Property Let MemLib(v As Variant)
    mMEMLIB = v
End Property
Public Property Let CmdLine(v As Variant)
     mCMDLINE = v
End Property
Public Property Let Confirm(v As Variant)
     mCONFIRM = v
End Property
Public Property Let MaxRerun(v As Variant)
    mMAXRERUN = v
End Property
Public Property Let AutoArch(v As Variant)
    mAUTOARCH = v
End Property
Public Property Let MaxDays(v As Variant)
     mMAXDAYS = v
End Property
Public Property Let MaxRuns(v As Variant)
     mMAXRUNS = v
End Property
Public Property Let TimeFrom(v As Variant)
    mTIMEFROM = v
End Property
Public Property Let TimeTo(v As Variant)
     mTIMETO = v
End Property
Public Property Let RerunMem(v As Variant)
     mRERUNMEM = v
End Property
Public Property Let Category(v As Variant)
     mCATEGORY = v
End Property
Public Property Let PdsName(v As Variant)
    mPDSNAME = v
End Property
Public Property Let Minimum(v As Variant)
    mMINIMUM = v
End Property
Public Property Let PreventNCT2(v As Variant)
     mPREVENTNCT2 = v
End Property
Public Property Let JOPtion(v As Variant)
     mOPTION = v
End Property
Public Property Let From(v As Variant)
    mFROM = v
End Property
Public Property Let Par(v As Variant)
     mPAR = v
End Property
Public Property Let SysDB(v As Variant)
     mSYSDB = v
End Property
Public Property Let DueOut(v As Variant)
    mDUE_OUT = v
End Property
Public Property Let RetenDays(v As Variant)
     mRETEN_DAYS = v
End Property
Public Property Let RetenGen(v As Variant)
    mRETEN_GEN = v
End Property
Public Property Let TaskClass(v As Variant)
    mtaskclass = v
End Property
Public Property Let PrevDay(v As Variant)
    mPREV_DAY = v
End Property
Public Property Let AdjustCond(v As Variant)
     mADJUST_COND = v
End Property
Public Property Let JobsInGroup(v As Variant)
    mJOBS_IN_GROUP = v
End Property
Public Property Let LargeSize(v As Variant)
    mLARGE_SIZE = v
End Property
Public Property Let IndCyclic(v As Variant)
    mIND_CYCLIC = v
End Property
Public Property Let CreationUser(v As Variant)
     mCREATION_USER = v
End Property
Public Property Let CreationDate(v As Variant)
    mCREATION_DATE = v
End Property
Public Property Let CreationTime(v As Variant)
     mCREATION_TIME = v
End Property
Public Property Let ChangeUserId(v As Variant)
     mCHANGE_USERID = v
End Property
Public Property Let ChangeDate(v As Variant)
     mCHANGE_DATE = v
End Property
Public Property Let ChangeTime(v As Variant)
    mCHANGE_TIME = v
End Property
Public Property Let JobVersion(v As Variant)
     mJOB_VERSION = v
End Property
Public Property Let RuleBasedCalendarRelationship(v As Variant)
     mRULE_BASED_CALENDAR_RELATIONSHIP = v
End Property
Public Property Let TagRelationship(v As Variant)
    mTAG_RELATIONSHIP = v
End Property
Public Property Let TimeZone(v As Variant)
    mTIMEZONE = v
End Property
Public Property Let ApplType(v As Variant)
    mAPPL_TYPE = v
End Property
Public Property Let ApplVer(v As Variant)
     mAPPL_VER = v
End Property
Public Property Let ApplForm(v As Variant)
     mAPPL_FORM = v
End Property
Public Property Let CmVer(v As Variant)
    mCM_VER = v
End Property
Public Property Let MultyAgent(v As Variant)
     mMULTY_AGENT = v
End Property
Public Property Let SchedulingEnvironment(v As Variant)
     mSCHEDULING_ENVIRONMENT = v
End Property
Public Property Let SystemAffinity(v As Variant)
     mSYSTEM_AFFINITY = v
End Property
Public Property Let RequestNjeNode(v As Variant)
     mREQUEST_NJE_NODE = v
End Property
Public Property Let StatCal(v As Variant)
     mSTAT_CAL = v
End Property
Public Property Let InStreamJCL(v As Variant)
     mINSTREAM_JCL = v
End Property
Public Property Let UseInStreamJCL(v As Variant)
     mUSE_INSTREAM_JCL = v
End Property
Public Property Let DueOutDaysOffset(v As Variant)
     mDUE_OUT_DAYSOFFSET = v
End Property
Public Property Let FromDaysOffset(v As Variant)
    mFROM_DAYSOFFSET = v
End Property
Public Property Let ToDaysOffset(v As Variant)
    mTO_DAYSOFFSET = v
End Property
Public Property Let VersionOpCode(v As Variant)
    mVERSION_OPCODE = v
End Property
Public Property Let IsCurrentVersion(v As Variant)
     mIS_CURRENT_VERSION = v
End Property
Public Property Let VersionSerial(v As Variant)
    mVERSION_SERIAL = v
End Property
Public Property Let VersionHost(v As Variant)
     mVERSION_HOST = v
End Property
Public Property Let CyclicIntervalSequence(v As Variant)
    mCYCLIC_INTERVAL_SEQUENCE = v
End Property
Public Property Let CyclicTimesSequence(v As Variant)
     mCYCLIC_TIMES_SEQUENCE = v
End Property
Public Property Let CyclicTolerance(v As Variant)
    mCYCLIC_TOLERANCE = v
End Property
Public Property Let CyclicType(v As Variant)
    mCYCLIC_TYPE = v
End Property
Public Property Let ParentFolder(v As Variant)
     mPARENT_FOLDER = v
End Property
Public Property Let ParentTable(v As Variant)
    mPARENT_TABLE = v
End Property
Public Property Let ODate(v As Variant)
     mODATE = v
End Property
Public Property Let FPROCS(v As Variant)
    mFPROCS = v
End Property
Public Property Let TPGMS(v As Variant)
     mTPGMS = v
End Property
Public Property Let TPROCS(v As Variant)
    mTPROCS = v
End Property

Public Property Set Parent(v As IJob)
    Set mParent = v
End Property

Public Property Get Parent() As IJob
    Set Parent = mParent
End Property


Private Sub Class_Initialize()
     Dim base As IXMLConfigItem
     Set mBase = New ITagData
     Set mParent = Nothing
     
     Set base = mBase
     base.XMLTagName = "JOB"
          

     Set mADDITIONAL_JOB_DETAILS = New Collection
     Set mAUTOEDIT2 = New Collection
     Set mAUTOEDIT = New Collection
     Set mVARIABLE = New Collection
     Set mSHOUT = New Collection
     Set mCONTROL = New Collection
     Set mINCOND = New Collection
     Set mQUANTITATIVE = New Collection
     Set mOUTCOND = New Collection
     Set mSTEP_RANGE = New Collection
     Set mRULE_BASED_CALENDAR = New Collection
     Set mTAG = New Collection
     Set mRULE_BASED_CALENDARS = New Collection
     Set mTAG_NAMES = New Collection
     Set mON = New Collection
     Set mON_TABLE = New Collection
     Set mON_GROUP = New Collection
     Set mCAPTURE = New Collection

    mADJUST_COND = Empty
    mJOBISN = Empty
     mAPPLICATION = Empty
     mSUB_APPLICATION = Empty
     mGROUP = Empty
     mMEMNAME = Empty
     mJOBNAME = Empty
     mDESCRIPTION = Empty
     mCREATED_BY = Empty
     mAUTHOR = Empty
     mRUN_AS = Empty
     mOWNER = Empty
     mPRIORITY = Empty
     mCRITICAL = Empty
     mTASKTYPE = Empty
     mCYCLIC = Empty
     mNODEID = Empty
     mDOCLIB = Empty
     mDOCMEM = Empty
     mINTERVAL = Empty
     mOVERRIDE_PATH = Empty
     mOVERLIB = Empty
     mMEMLIB = Empty
     mCMDLINE = Empty
     mCONFIRM = Empty
     mMAXRERUN = Empty
     mAUTOARCH = Empty
     mMAXDAYS = Empty
     mMAXRUNS = Empty
     mTIMEFROM = Empty
     mTIMETO = Empty
     mRERUNMEM = Empty
     mCATEGORY = Empty
     mPDSNAME = Empty
     mMINIMUM = Empty
     mPREVENTNCT2 = Empty
     mOPTION = Empty
     mFROM = Empty
     mPAR = Empty
     mSYSDB = Empty
     mDUE_OUT = Empty
     mRETEN_DAYS = Empty
     mRETEN_GEN = Empty
     mTASK_CLASS = Empty
     mPREV_DAY = Empty
     
     mJOBS_IN_GROUP = Empty
     mLARGE_SIZE = Empty
     mIND_CYCLIC = Empty
     mCREATION_USER = Empty
     mCREATION_DATE = Empty
     mCREATION_TIME = Empty
     mCHANGE_USERID = Empty
     mCHANGE_DATE = Empty
     mCHANGE_TIME = Empty
     mJOB_VERSION = Empty
     mRULE_BASED_CALENDAR_RELATIONSHIP = Empty
     mTAG_RELATIONSHIP = Empty
     mTIMEZONE = Empty
     mAPPL_TYPE = Empty
     mAPPL_VER = Empty
     mAPPL_FORM = Empty
     mCM_VER = Empty
     mMULTY_AGENT = Empty
     mSCHEDULING_ENVIRONMENT = Empty
     mSYSTEM_AFFINITY = Empty
     mREQUEST_NJE_NODE = Empty
     mSTAT_CAL = Empty
     mINSTREAM_JCL = Empty
     mUSE_INSTREAM_JCL = Empty
     mDUE_OUT_DAYSOFFSET = Empty
     mFROM_DAYSOFFSET = Empty
     mTO_DAYSOFFSET = Empty
     mVERSION_OPCODE = Empty
     mIS_CURRENT_VERSION = Empty
     mVERSION_SERIAL = Empty
     mVERSION_HOST = Empty
     mCYCLIC_INTERVAL_SEQUENCE = Empty
     mCYCLIC_TIMES_SEQUENCE = Empty
     mCYCLIC_TOLERANCE = Empty
     mCYCLIC_TYPE = Empty
     mPARENT_FOLDER = Empty
     mPARENT_TABLE = Empty
     mODATE = Empty
     mFPROCS = Empty
     mTPGMS = Empty
     mTPROCS = Empty
End Sub

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

Private Property Let ITag_TagName(RHS As Variant)
    Dim base As ITag
    Set base = mBase
    base.TagName = RHS
End Property

Private Property Get ITag_TagName() As Variant
    Dim base As ITag
    Set base = mBase
    ITag_TagName = base.TagName
End Property


Private Property Let ITagData_ActiveFrom(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.ActiveFrom = RHS
End Property

Private Property Get ITagData_ActiveFrom() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_ActiveFrom = base.ActiveFrom
End Property

Private Property Let ITagData_ActiveTill(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.ActiveTill = RHS
End Property

Private Property Get ITagData_ActiveTill() As Variant
Dim base As ITagData
    Set base = mBase
    ITagData_ActiveTill = base.ActiveTill
End Property

Private Property Let ITagData_APR(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.APR = RHS
End Property

Private Property Get ITagData_APR() As Variant
    Dim base As ITagData
    Set base = mBase
    ITagData_APR = base.APR
End Property

Private Property Let ITagData_AUG(RHS As Variant)
    Dim base As ITagData
    Set base = mBase
    base.AUG = RHS
End Property

Private Property Get ITagData_AUG() As Variant
    Dim base As ITagData
    Set base = mBase
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
    base.FEB = RHS
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

Private Function IXMLConfigItem_Export(doc As MSXML2.IXMLDOMDocument2, Parent As MSXML2.IXMLDOMElement) As MSXML2.IXMLDOMElement
    Dim current As IXMLDOMElement
    Dim base As IXMLConfigItem
    Dim item As IXMLConfigItem
    
    Set base = mBase
    
    Set current = base.Export(doc, Parent)
    
    For Each item In mADDITIONAL_JOB_DETAILS
        item.Export doc, current
    Next
    For Each item In mAUTOEDIT2
        item.Export doc, current
    Next
    For Each item In mAUTOEDIT
        item.Export doc, current
    Next
    For Each item In mVARIABLE
        item.Export doc, current
    Next
    For Each item In mSHOUT
        item.Export doc, current
    Next
    For Each item In mCONTROL
        item.Export doc, current
    Next
    For Each item In mINCOND
        item.Export doc, current
    Next
    For Each item In mQUANTITATIVE
        item.Export doc, current
    Next
    For Each item In mOUTCOND
        item.Export doc, current
    Next
    For Each item In mSTEP_RANGE
        item.Export doc, current
    Next
    For Each item In mRULE_BASED_CALENDAR
        item.Export doc, current
    Next
    For Each item In mTAG
        item.Export doc, current
    Next
    For Each item In mRULE_BASED_CALENDARS
        item.Export doc, current
    Next
    For Each item In mTAG_NAMES
        item.Export doc, current
    Next
    For Each item In mON
        item.Export doc, current
    Next
    For Each item In mON_TABLE
        item.Export doc, current
    Next
    For Each item In mON_GROUP
        item.Export doc, current
    Next
    For Each item In mCAPTURE
        item.Export doc, current
    Next
    
    If Not IsEmpty(mJOBISN) Then
        current.setAttribute "JOBISN", mJOBISN
    End If
    
    If Not IsEmpty(mAPPLICATION) Then
        current.setAttribute "APPLICATION", mAPPLICATION
    End If
    
    If Not IsEmpty(mSUB_APPLICATION) Then
        current.setAttribute "SUB_APPLICATION", mSUB_APPLICATION
    End If
    If Not IsEmpty(mGROUP) Then
        current.setAttribute "GROUP", mGROUP
    End If
    If Not IsEmpty(mMEMNAME) Then
        current.setAttribute "MEMNAME", mMEMNAME
    End If
    If Not IsEmpty(mJOBNAME) Then
        current.setAttribute "JOBNAME", mJOBNAME
    End If
    If Not IsEmpty(mDESCRIPTION) Then
        current.setAttribute "DESCRIPTION", mDESCRIPTION
    End If
    If Not IsEmpty(mCREATED_BY) Then
        current.setAttribute "CREATED_BY", mCREATED_BY
    End If
    If Not IsEmpty(mAUTHOR) Then
        current.setAttribute "AUTHOR", mAUTHOR
    End If
    If Not IsEmpty(mRUN_AS) Then
        current.setAttribute "RUN_AS", mRUN_AS
    End If
    If Not IsEmpty(mOWNER) Then
        current.setAttribute "OWNER", mOWNER
    End If
    If Not IsEmpty(mPRIORITY) Then
        current.setAttribute "PRIORITY", mPRIORITY
    End If
    If Not IsEmpty(mCRITICAL) Then
        current.setAttribute "CRITICAL", mCRITICAL
    End If
    If Not IsEmpty(mTASKTYPE) Then
        current.setAttribute "TASKTYPE", mTASKTYPE
    End If
    If Not IsEmpty(mCYCLIC) Then
        current.setAttribute "CYCLIC", mCYCLIC
    End If
    If Not IsEmpty(mNODEID) Then
        current.setAttribute "NODEID", mNODEID
    End If
    If Not IsEmpty(mDOCLIB) Then
        current.setAttribute "DOCLIB", mDOCLIB
    End If
    If Not IsEmpty(mDOCMEM) Then
        current.setAttribute "DOCMEM", mDOCMEM
    End If
    If Not IsEmpty(mINTERVAL) Then
        current.setAttribute "INTERVAL", mINTERVAL
    End If
    If Not IsEmpty(mOVERRIDE_PATH) Then
        current.setAttribute "OVERRIDE_PATH", mOVERRIDE_PATH
    End If
    If Not IsEmpty(mOVERLIB) Then
        current.setAttribute "OVERLIB", mOVERLIB
    End If
    If Not IsEmpty(mMEMLIB) Then
        current.setAttribute "MEMLIB", mMEMLIB
    End If
    If Not IsEmpty(mCMDLINE) Then
        current.setAttribute "CMDLINE", mCMDLINE
    End If
    If Not IsEmpty(mCONFIRM) Then
        current.setAttribute "CONFIRM", mCONFIRM
    End If
    If Not IsEmpty(mMAXRERUN) Then
        current.setAttribute "MAXRERUN", mMAXRERUN
    End If
    If Not IsEmpty(mAUTOARCH) Then
        current.setAttribute "AUTOARCH", mAUTOARCH
    End If
    If Not IsEmpty(mMAXDAYS) Then
        current.setAttribute "MAXDAYS", mMAXDAYS
    End If
    If Not IsEmpty(mMAXRUNS) Then
        current.setAttribute "MAXRUNS", mMAXRUNS
    End If
    If Not IsEmpty(mTIMEFROM) Then
        current.setAttribute "TIMEFROM", mTIMEFROM
    End If
    If Not IsEmpty(mTIMETO) Then
        current.setAttribute "TIMETO", mTIMETO
    End If
    If Not IsEmpty(mRERUNMEM) Then
        current.setAttribute "RERUNMEM", mRERUNMEM
    End If
    If Not IsEmpty(mCATEGORY) Then
        current.setAttribute "CATEGORY", mCATEGORY
    End If
    If Not IsEmpty(mPDSNAME) Then
        current.setAttribute "PDSNAME", mPDSNAME
    End If
    If Not IsEmpty(mMINIMUM) Then
        current.setAttribute "MINIMUM", mMINIMUM
    End If
    If Not IsEmpty(mPREVENTNCT2) Then
        current.setAttribute "PREVENTNCT2", mPREVENTNCT2
    End If
    If Not IsEmpty(mOPTION) Then
        current.setAttribute "OPTION", mOPTION
    End If
    If Not IsEmpty(mFROM) Then
        current.setAttribute "FROM", mFROM
    End If
    If Not IsEmpty(mPAR) Then
        current.setAttribute "PAR", mPAR
    End If
    If Not IsEmpty(mSYSDB) Then
        current.setAttribute "SYSDB", mSYSDB
    End If
    If Not IsEmpty(mDUE_OUT) Then
        current.setAttribute "DUE_OUT", mDUE_OUT
    End If
    If Not IsEmpty(mRETEN_DAYS) Then
        current.setAttribute "RETEN_DAYS", mRETEN_DAYS
    End If
    If Not IsEmpty(mRETEN_GEN) Then
        current.setAttribute "RETEN_GEN", mRETEN_GEN
    End If
    If Not IsEmpty(mTASK_CLASS) Then
        current.setAttribute "TASK_CLASS", mTASK_CLASS
    End If
    If Not IsEmpty(mPREV_DAY) Then
        current.setAttribute "PREV_DAY", mPREV_DAY
    End If
    If Not IsEmpty(mADJUST_COND) Then
        current.setAttribute "ADJUST_COND", mADJUST_COND
    End If
    If Not IsEmpty(mJOBS_IN_GROUP) Then
        current.setAttribute "JOBS_IN_GROUP", mJOBS_IN_GROUP
    End If
    If Not IsEmpty(mLARGE_SIZE) Then
        current.setAttribute "LARGE_SIZE", mLARGE_SIZE
    End If
    If Not IsEmpty(mIND_CYCLIC) Then
        current.setAttribute "IND_CYCLIC", mIND_CYCLIC
    End If
    If Not IsEmpty(mCREATION_USER) Then
        current.setAttribute "CREATION_USER", mCREATION_USER
    End If
    If Not IsEmpty(mCREATION_DATE) Then
        current.setAttribute "CREATION_DATE", mCREATION_DATE
    End If
    If Not IsEmpty(mCREATION_TIME) Then
        current.setAttribute "CREATION_TIME", mCREATION_TIME
    End If
    If Not IsEmpty(mCHANGE_USERID) Then
        current.setAttribute "CHANGE_USERID", mCHANGE_USERID
    End If
    If Not IsEmpty(mCHANGE_DATE) Then
        current.setAttribute "CHANGE_DATE", mCHANGE_DATE
    End If
    If Not IsEmpty(mCHANGE_TIME) Then
        current.setAttribute "CHANGE_TIME", mCHANGE_TIME
    End If
    If Not IsEmpty(mJOB_VERSION) Then
        current.setAttribute "JOB_VERSION", mJOB_VERSION
    End If
    If Not IsEmpty(mRULE_BASED_CALENDAR_RELATIONSHIP) Then
        current.setAttribute "RULE_BASED_CALENDAR_RELATIONSHIP", mRULE_BASED_CALENDAR_RELATIONSHIP
    End If
    If Not IsEmpty(mTAG_RELATIONSHIP) Then
        current.setAttribute "TAG_RELATIONSHIP", mTAG_RELATIONSHIP
    End If
    If Not IsEmpty(mTIMEZONE) Then
        current.setAttribute "TIMEZONE", mTIMEZONE
    End If
    If Not IsEmpty(mAPPL_TYPE) Then
        current.setAttribute "APPL_TYPE", mAPPL_TYPE
    End If
    If Not IsEmpty(mAPPL_VER) Then
        current.setAttribute "APPL_VER", mAPPL_VER
    End If
    If Not IsEmpty(mAPPL_FORM) Then
        current.setAttribute "APPL_FORM", mAPPL_FORM
    End If
    If Not IsEmpty(mCM_VER) Then
        current.setAttribute "CM_VER", mCM_VER
    End If
    If Not IsEmpty(mMULTY_AGENT) Then
        current.setAttribute "MULTY_AGENT", mMULTY_AGENT
    End If
    If Not IsEmpty(mSCHEDULING_ENVIRONMENT) Then
        current.setAttribute "SCHEDULING_ENVIRONMENT", mSCHEDULING_ENVIRONMENT
    End If
    If Not IsEmpty(mSYSTEM_AFFINITY) Then
        current.setAttribute "SYSTEM_AFFINITY", mSYSTEM_AFFINITY
    End If
    If Not IsEmpty(mREQUEST_NJE_NODE) Then
        current.setAttribute "REQUEST_NJE_NODE", mREQUEST_NJE_NODE
    End If
    If Not IsEmpty(mSTAT_CAL) Then
        current.setAttribute "STAT_CAL", mSTAT_CAL
    End If
    If Not IsEmpty(mINSTREAM_JCL) Then
        current.setAttribute "INSTREAM_JCL", mINSTREAM_JCL
    End If
    If Not IsEmpty(mUSE_INSTREAM_JCL) Then
        current.setAttribute "USE_INSTREAM_JCL", mUSE_INSTREAM_JCL
    End If
    If Not IsEmpty(mDUE_OUT_DAYSOFFSET) Then
        current.setAttribute "DUE_OUT_DAYSOFFSET", mDUE_OUT_DAYSOFFSET
    End If
    If Not IsEmpty(mFROM_DAYSOFFSET) Then
        current.setAttribute "FROM_DAYSOFFSET", mFROM_DAYSOFFSET
    End If
    If Not IsEmpty(mTO_DAYSOFFSET) Then
        current.setAttribute "TO_DAYSOFFSET", mTO_DAYSOFFSET
    End If
    If Not IsEmpty(mVERSION_OPCODE) Then
        current.setAttribute "VERSION_OPCODE", mVERSION_OPCODE
    End If
    If Not IsEmpty(mIS_CURRENT_VERSION) Then
        current.setAttribute "IS_CURRENT_VERSION", mIS_CURRENT_VERSION
    End If
    If Not IsEmpty(mVERSION_SERIAL) Then
        current.setAttribute "VERSION_SERIAL", mVERSION_SERIAL
    End If
    If Not IsEmpty(mVERSION_HOST) Then
        current.setAttribute "VERSION_HOST", mVERSION_HOST
    End If
    If Not IsEmpty(mCYCLIC_INTERVAL_SEQUENCE) Then
        current.setAttribute "CYCLIC_INTERVAL_SEQUENCE", mCYCLIC_INTERVAL_SEQUENCE
    End If
    If Not IsEmpty(mCYCLIC_TIMES_SEQUENCE) Then
        current.setAttribute "CYCLIC_TIMES_SEQUENCE", mCYCLIC_TIMES_SEQUENCE
    End If
    If Not IsEmpty(mCYCLIC_TOLERANCE) Then
        current.setAttribute "CYCLIC_TOLERANCE", mCYCLIC_TOLERANCE
    End If
    If Not IsEmpty(mCYCLIC_TYPE) Then
        current.setAttribute "CYCLIC_TYPE", mCYCLIC_TYPE
    End If
    If Not IsEmpty(mPARENT_FOLDER) Then
        current.setAttribute "PARENT_FOLDER", mPARENT_FOLDER
    End If
    If Not IsEmpty(mPARENT_TABLE) Then
        current.setAttribute "PARENT_TABLE", mPARENT_TABLE
    End If
    If Not IsEmpty(mODATE) Then
        current.setAttribute "ODATE", mODATE
    End If
    If Not IsEmpty(mFPROCS) Then
        current.setAttribute "FPROCS", mFPROCS
    End If
    If Not IsEmpty(mTPGMS) Then
        current.setAttribute "TPGMS", mTPGMS
    End If
    If Not IsEmpty(mTPROCS) Then
        current.setAttribute "TPROCS", mTPROCS
    End If
    
    Set IXMLConfigItem_Export = current
End Function

Private Sub IXMLConfigItem_Reset()
    Dim base As IXMLConfigItem
    Set base = mBase
    base.Reset
    
    Set mADDITIONAL_JOB_DETAILS = New Collection
    Set mAUTOEDIT2 = New Collection
    Set mAUTOEDIT = New Collection
    Set mVARIABLE = New Collection
    Set mSHOUT = New Collection
    Set mCONTROL = New Collection
    Set mINCOND = New Collection
    Set mQUANTITATIVE = New Collection
    Set mOUTCOND = New Collection
    Set mSTEP_RANGE = New Collection
    Set mRULE_BASED_CALENDAR = New Collection
    Set mTAG = New Collection
    Set mRULE_BASED_CALENDARS = New Collection
    Set mTAG_NAMES = New Collection
    Set mON = New Collection
    Set mON_TABLE = New Collection
    Set mON_GROUP = New Collection
    Set mCAPTURE = New Collection
    
    mJOBISN = Empty
    mAPPLICATION = Empty
    mSUB_APPLICATION = Empty
    mGROUP = Empty
    mMEMNAME = Empty
    mJOBNAME = Empty
    mDESCRIPTION = Empty
    mCREATED_BY = Empty
    mAUTHOR = Empty
    mRUN_AS = Empty
    mOWNER = Empty
    mPRIORITY = Empty
    mCRITICAL = Empty
    mTASKTYPE = Empty
    mCYCLIC = Empty
    mNODEID = Empty
    mDOCLIB = Empty
    mDOCMEM = Empty
    mINTERVAL = Empty
    mOVERRIDE_PATH = Empty
    mOVERLIB = Empty
    mMEMLIB = Empty
    mCMDLINE = Empty
    mCONFIRM = Empty
    mMAXRERUN = Empty
    mAUTOARCH = Empty
    mMAXDAYS = Empty
    mMAXRUNS = Empty
    mTIMEFROM = Empty
    mTIMETO = Empty
    mRERUNMEM = Empty
    mCATEGORY = Empty
    mPDSNAME = Empty
    mMINIMUM = Empty
    mPREVENTNCT2 = Empty
    mOPTION = Empty
    mFROM = Empty
    mPAR = Empty
    mSYSDB = Empty
    mDUE_OUT = Empty
    mRETEN_DAYS = Empty
    mRETEN_GEN = Empty
    mTASK_CLASS = Empty
    mPREV_DAY = Empty
    mADJUST_COND = Empty
    mJOBS_IN_GROUP = Empty
    mLARGE_SIZE = Empty
    mIND_CYCLIC = Empty
    mCREATION_USER = Empty
    mCREATION_DATE = Empty
    mCREATION_TIME = Empty
    mCHANGE_USERID = Empty
    mCHANGE_DATE = Empty
    mCHANGE_TIME = Empty
    mJOB_VERSION = Empty
    mRULE_BASED_CALENDAR_RELATIONSHIP = Empty
    mTAG_RELATIONSHIP = Empty
    mTIMEZONE = Empty
    mAPPL_TYPE = Empty
    mAPPL_VER = Empty
    mAPPL_FORM = Empty
    mCM_VER = Empty
    mMULTY_AGENT = Empty
    mSCHEDULING_ENVIRONMENT = Empty
    mSYSTEM_AFFINITY = Empty
    mREQUEST_NJE_NODE = Empty
    mSTAT_CAL = Empty
    mINSTREAM_JCL = Empty
    mUSE_INSTREAM_JCL = Empty
    mDUE_OUT_DAYSOFFSET = Empty
    mFROM_DAYSOFFSET = Empty
    mTO_DAYSOFFSET = Empty
    mVERSION_OPCODE = Empty
    mIS_CURRENT_VERSION = Empty
    mVERSION_SERIAL = Empty
    mVERSION_HOST = Empty
    mCYCLIC_INTERVAL_SEQUENCE = Empty
    mCYCLIC_TIMES_SEQUENCE = Empty
    mCYCLIC_TOLERANCE = Empty
    mCYCLIC_TYPE = Empty
    mPARENT_FOLDER = Empty
    mPARENT_TABLE = Empty
    mODATE = Empty
    mFPROCS = Empty
    mTPGMS = Empty
    mTPROCS = Empty
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
