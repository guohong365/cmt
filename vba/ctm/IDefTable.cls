VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IDefTable"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit

Implements IXMLConfigItem

Private mBase As IXMLConfigItem

    Private mSIMPLE_FOLDER As Collection
    Private mSCHED_TABLE As Collection
    Private mTABLE As Collection
    Private mSMART_FOLDER As Collection
    Private mSMART_TABLE As Collection
    Private mSCHED_GROUP As Collection
    Private mWORKSPACE As IXMLConfigItem
     
     
    Public Property Get Workspace() As IXMLConfigItem
        Workspace = mWORKSPACE
    End Property
    Public Property Set Workspace(v As IXMLConfigItem)
        Set mWORKSPACE = v
    End Property
    
    Public Property Get SimpleFolders() As Collection    'SimpleFolder
        Set SimpleFolders = mSIMPLE_FOLDER
    End Property
    
    
    Public Property Get SchedTables() As Collection   'SimpleFolder
        Set SchedTables = mSCHED_TABLE
    End Property
    
    Public Property Get Tables() As Collection
        Set Tables = mTABLE
    End Property
    
    Public Property Get SmartFolders() As Collection  'SmartFolder
        Set SmartFolders = mSMART_FOLDER
    End Property
    
    
    Public Property Get SchedGroups() As Collection
        SchedGroups = mSCHED_GROUP
    End Property
    
    
Private Sub Class_Initialize()
    Set mBase = New IXMLConfigItem
    mBase.XMLTagName = "DEFTABLE"
    
    Set mWORKSPACE = Nothing
    Set mSIMPLE_FOLDER = New Collection
    Set mSCHED_TABLE = New Collection
    Set mTABLE = New Collection
    Set mSMART_FOLDER = New Collection
    Set mSMART_TABLE = New Collection
    Set mSCHED_GROUP = New Collection
End Sub

Private Function IXMLConfigItem_Export(doc As MSXML2.IXMLDOMDocument2, Parent As MSXML2.IXMLDOMElement) As MSXML2.IXMLDOMElement
    
    Set IXMLConfigItem_Export = Nothing
    Dim current As IXMLDOMElement
    Dim item As IXMLConfigItem
    Dim subItem As IXMLDOMElement
    
    Set current = mBase.Export(doc, Parent)
    
    If current Is Not Nothing Then
        For Each item In mSMART_FOLDER
            subItem = item.exprot(doc, Parent)
            If subItem Is Not Nothing Then
                current.appendChild subItem
            End If
        Next
        Set IXMLConfigItem_Export = current
    End If
    
End Function

Private Sub IXMLConfigItem_Reset()
    ClearCollection mSIMPLE_FOLDER
    ClearCollection mSCHED_TABLE
    ClearCollection mTABLE
    ClearCollection mSMART_FOLDER
    ClearCollection mSMART_TABLE
    ClearCollection mSCHED_GROUP
    Set mWORKSPACE = Nothing
End Sub

Private Property Let IXMLConfigItem_XMLTagName(RHS As String)
    mBase.XMLTagName = RHS
End Property

Private Property Get IXMLConfigItem_XMLTagName() As String
    IXMLConfigItem_XMLTagName = mBase.XMLTagName
End Property

