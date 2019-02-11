VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "IXMLConfigItem"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private mXmlTagName As Variant


Public Property Get XMLTagName() As String
    XMLTagName = mXmlTagName
End Property

Public Property Let XMLTagName(v As String)
    mXmlTagName = v
End Property

Public Function Export(doc As DOMDocument, Parent As IXMLDOMElement) As IXMLDOMElement
    Dim current As IXMLDOMElement
    If IsEmpty(mXmlTagName) Then
        Set Export = Nothing
        Exit Function
    End If
    
    Set current = doc.createElement(mXmlTagName)
    Parent.appendChild current
    Set Export = current
End Function

Public Sub Reset()
    mXmlTagName = Empty
End Sub

