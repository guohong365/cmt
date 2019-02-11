VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ITag"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Implements IXMLConfigItem

Private mBase As IXMLConfigItem

Private mNAME As Variant
Private mTAG_NAME As Variant


Private Sub Class_Initialize()
    Set mBase = New IXMLConfigItem
End Sub

Private Function IXMLConfigItem_Export(doc As MSXML2.IXMLDOMDocument2, Parent As MSXML2.IXMLDOMElement) As MSXML2.IXMLDOMElement
    Dim current As IXMLDOMElement
    Dim attr As IXMLDOMAttribute
    
    Set current = mBase.Export(doc, Parent)
    
    If Not IsEmpty(mNAME) Then
        current.setAttribute "NAME", mNAME
    End If
    
    If Not IsEmpty(mTAG_NAME) Then
        current.setAttribute "TAG_NAME", mTAG_NAME
    End If
    Set IXMLConfigItem_Export = current
End Function

Private Sub IXMLConfigItem_Reset()
    mBase.Reset
    mNAME = Empty
    mTAG_NAME = Empty
End Sub

Private Property Let IXMLConfigItem_XMLTagName(RHS As String)
    mBase.XMLTagName = RHS
End Property

Private Property Get IXMLConfigItem_XMLTagName() As String
    IXMLConfigItem_XMLTagName = mBase.XMLTagName
End Property

Public Property Get name() As Variant
    name = mNAME
End Property
Public Property Let name(v As Variant)
    mNAME = v
End Property
Public Property Get TagName() As Variant
    TagName = mTAG_NAME
End Property
Public Property Let TagName(v As Variant)
    mTAG_NAME = v
End Property


