VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ITagData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IXMLConfigItem
Implements ITag

Private mBase As ITag

Private mACTIVE_FROM As Variant
Private mACTIVE_TILL As Variant
Private mCONFCAL As Variant
Private mDATE As Variant
Private mDAYS As Variant
Private mDAYS_AND_OR As Variant
Private mDAYSCAL As Variant
Private mLEVEL As Variant
Private mMAXWAIT As Variant
Private mRETRO As Variant
Private mSHIFT As Variant
Private mSHIFTNUM As Variant
Private mTAGS_ACTIVE_FROM As Variant
Private mTAGS_ACTIVE_TILL As Variant
Private mWEEKDAYS As Variant
Private mWEEKSCAL As Variant

Private mJAN As Variant
Private mFEB As Variant
Private mMAR As Variant
Private mAPR As Variant
Private mMAY As Variant
Private mJUN As Variant
Private mJUL As Variant
Private mAUG As Variant
Private mSEP As Variant
Private mOCT As Variant
Private mNOV As Variant
Private mDEC As Variant

Public Property Get ActiveFrom() As Variant
    ActiveFrom = mACTIVE_FROM
End Property
Public Property Get ActiveTill() As Variant
    ActiveTill = mACTIVE_TILL
End Property
Public Property Get Confcal() As Variant
    Confcal = mCONFCAL
End Property
Public Property Get TDate() As Variant
    Date_ = mDATE
End Property
Public Property Get Days() As Variant
    Days = mDAYS
End Property
Public Property Get DaysAndOr() As Variant
    DaysAndOr = mDAYS_AND_OR
End Property
Public Property Get DaysCal() As Variant
    DaysCal = mDAYSCAL
End Property
Public Property Get Level() As Variant
    Level = mLEVEL
End Property
Public Property Get MaxWait() As Variant
    MaxWait = mMAXWAIT
End Property
Public Property Get Retro() As Variant
    Retro = mRETRO
End Property
Public Property Get Shift() As Variant
    Shift = mSHIFT
End Property
Public Property Get ShiftNum() As Variant
    ShiftNum = mSHIFTNUM
End Property
Public Property Get TagsActiveFrom() As Variant
    TagsActiveFrom = mTAGS_ACTIVE_FROM
End Property
Public Property Get TagsActiveTill() As Variant
    TagsActiveTill = mTAGS_ACTIVE_TILL
End Property
Public Property Get WeekDays() As Variant
    WeekDays = mWEEKDAYS
End Property
Public Property Get Weekscal() As Variant
    Weekscal = mWEEKSCAL
End Property

Public Property Get JAN() As Variant
    JAN = mJAN
End Property
Public Property Get FEB() As Variant
    FEB = mFEB
End Property
Public Property Get MAR() As Variant
    MAR = mMAR
End Property
Public Property Get APR() As Variant
    APR = mAPR
End Property
Public Property Get MAY() As Variant
    MAY = mMAY
End Property
Public Property Get JUN() As Variant
    JUN = mJUN
End Property
Public Property Get JUL() As Variant
    JUL = mJUL
End Property
Public Property Get AUG() As Variant
    AUG = mAUG
End Property
Public Property Get SEP() As Variant
    SEP = mSEP
End Property
Public Property Get OCT() As Variant
    OCT = mOCT
End Property
Public Property Get NOV() As Variant
    NOV = mNOV
End Property
Public Property Get DEC() As Variant
    DEC = mDEC
End Property

Public Property Let ActiveFrom(v As Variant)
    mACTIVE_FROM = v
End Property
Public Property Let ActiveTill(v As Variant)
    mACTIVE_TILL = v
End Property
Public Property Let Confcal(v As Variant)
    mCONFCAL = v
End Property

Public Property Let TDate(v As Variant)
    mDATE = v
End Property
Public Property Let Days(v As Variant)
    mDAYS = v
End Property
Public Property Let DaysAndOr(v As Variant)
    mDAYS_AND_OR = v
End Property
Public Property Let DaysCal(v As Variant)
    mDAYSCAL = v
End Property
Public Property Let Level(v As Variant)
    mLEVEL = v
End Property
Public Property Let MaxWait(v As Variant)
    mMAXWAIT = v
End Property

Public Property Let Retro(v As Variant)
    mRETRO = v
End Property
Public Property Let Shift(v As Variant)
    mSHIFT = v
End Property
Public Property Let ShiftNum(v As Variant)
    mSHIFTNUM = v
End Property

Public Property Let TagsActiveFrom(v As Variant)
    mTAGS_ACTIVE_FROM = v
End Property
Public Property Let TagsActiveTill(v As Variant)
    mTAGS_ACTIVE_TILL = v
End Property
Public Property Let WeekDays(v As Variant)
    mWEEKDAYS = v
End Property
Public Property Let Weekscal(v As Variant)
    mWEEKSCAL = v
End Property
    
Public Property Let JAN(v As Variant)
    mJAN = v
End Property
Public Property Let FEB(v As Variant)
    mFEB = v
End Property
Public Property Let MAR(v As Variant)
    mMAR = v
End Property
Public Property Let APR(v As Variant)
    mAPR = v
End Property
Public Property Let MAY(v As Variant)
    mMAY = v
End Property
Public Property Let JUN(v As Variant)
    mJUN = v
End Property
Public Property Let JUL(v As Variant)
    mJUL = v
End Property
Public Property Let AUG(v As Variant)
    mAUG = v
End Property
Public Property Let SEP(v As Variant)
    mSEP = v
End Property
Public Property Let OCT(v As Variant)
    mOCT = v
End Property
Public Property Let NOV(v As Variant)
    mNOV = v
End Property
Public Property Let DEC(v As Variant)
    mDEC = v
End Property
    
Private Sub Class_Initialize()
    Set mBase = New ITag
End Sub

Private Property Let ITag_Name(RHS As Variant)
    mBase.name = RHS
End Property

Private Property Get ITag_Name() As Variant
    ITag_Name = mBase.name
End Property

Private Property Get ITag_TagName() As Variant
    ITag_TagName = mBase.TagName
End Property

Private Property Let ITag_TagName(RHS As Variant)
    mBase.TagName = RHS
End Property

Private Function IXMLConfigItem_Export(doc As MSXML2.IXMLDOMDocument2, Parent As MSXML2.IXMLDOMElement) As MSXML2.IXMLDOMElement
    Dim base As IXMLConfigItem
    
    Dim current As IXMLDOMElement
    
    Set base = mBase
    
    Set current = base.Export(doc, Parent)
    
    If Not IsEmpty(mACTIVE_FROM) Then
        current.setAttribute "ACTIVE_FROM", mACTIVE_FROM
    End If
    If Not IsEmpty(mACTIVE_TILL) Then
        current.setAttribute "ACTIVE_TILL", mACTIVE_TILL
    End If
    If Not IsEmpty(mCONFCAL) Then
        current.setAttribute "CONFCAL", mCONFCAL
    End If
    If Not IsEmpty(mDATE) Then
        current.setAttribute "DATE", mDATE
    End If
    If Not IsEmpty(mDAYS) Then
        current.setAttribute "DAYS", mDAYS
    End If
    If Not IsEmpty(mDAYS_AND_OR) Then
        current.setAttribute "DAYS_AND_OR", mDAYS_AND_OR
    End If
    If Not IsEmpty(mDAYSCAL) Then
        current.setAttribute "DAYSCAL", mDAYSCAL
    End If
    If Not IsEmpty(mLEVEL) Then
        current.setAttribute "LEVEL", mLEVEL
    End If
    If Not IsEmpty(mMAXWAIT) Then
        current.setAttribute "MAXWAIT", mMAXWAIT
    End If
    If Not IsEmpty(mRETRO) Then
        current.setAttribute "RETRO", mRETRO
    End If
    If Not IsEmpty(mSHIFT) Then
        current.setAttribute "SHIFT", mSHIFT
    End If
    If Not IsEmpty(mSHIFTNUM) Then
        current.setAttribute "SHIFTNUM", mSHIFTNUM
    End If
    If Not IsEmpty(mTAGS_ACTIVE_FROM) Then
        current.setAttribute "TAGS_ACTIVE_FROM", mTAGS_ACTIVE_FROM
    End If
    If Not IsEmpty(mTAGS_ACTIVE_TILL) Then
        current.setAttribute "TAGS_ACTIVE_TILL", mTAGS_ACTIVE_TILL
    End If
    If Not IsEmpty(mWEEKDAYS) Then
        current.setAttribute "WEEKDAYS", mWEEKDAYS
    End If
    If Not IsEmpty(mWEEKSCAL) Then
        current.setAttribute "WEEKSCAL", mWEEKSCAL
    End If
    
    If Not IsEmpty(mJAN) Then
        current.setAttribute "JAN", mJAN
    End If
    If Not IsEmpty(mFEB) Then
        current.setAttribute "FEB", mFEB
    End If
    If Not IsEmpty(mMAR) Then
        current.setAttribute "MAR", mMAR
    End If
    If Not IsEmpty(mAPR) Then
        current.setAttribute "APR", mAPR
    End If
    If Not IsEmpty(mMAY) Then
        current.setAttribute "MAY", mMAY
    End If
    If Not IsEmpty(mJUN) Then
        current.setAttribute "JUN", mJUN
    End If
    If Not IsEmpty(mJUL) Then
        current.setAttribute "JUL", mJUL
    End If
    If Not IsEmpty(mAUG) Then
        current.setAttribute "AUG", mAUG
    End If
    If Not IsEmpty(mSEP) Then
        current.setAttribute "SEP", mSEP
    End If
    If Not IsEmpty(mOCT) Then
        current.setAttribute "OCT", mOCT
    End If
    If Not IsEmpty(mNOV) Then
        current.setAttribute "NOV", mNOV
    End If
    If Not IsEmpty(mDEC) Then
        current.setAttribute "DEC", mDEC
    End If
    Set IXMLConfigItem_Export = current
    
End Function

Private Sub IXMLConfigItem_Reset()
    Dim base As IXMLConfigItem
    Set base = mBase
    base.Reset
    mACTIVE_FROM = Empty
    mACTIVE_TILL = Empty
    mCONFCAL = Empty
    mDATE = Empty
    mDAYS = Empty
    mDAYS_AND_OR = Empty
    mDAYSCAL = Empty
    mLEVEL = Empty
    mMAXWAIT = Empty
    mRETRO = Empty
    mSHIFT = Empty
    mSHIFTNUM = Empty
    mTAGS_ACTIVE_FROM = Empty
    mTAGS_ACTIVE_TILL = Empty
    mWEEKDAYS = Empty
    mWEEKSCAL = Empty
    mJAN = Empty
    mFEB = Empty
    mMAR = Empty
    mAPR = Empty
    mMAY = Empty
    mJUN = Empty
    mJUL = Empty
    mAUG = Empty
    mSEP = Empty
    mOCT = Empty
    mNOV = Empty
    mDEC = Empty
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


