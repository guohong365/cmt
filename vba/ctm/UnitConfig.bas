Attribute VB_Name = "UnitConfig"
Option Explicit

Sub generalTest()
    Dim result As Boolean
    Dim str As String
    Dim l As Long
    Dim i As Integer
    Dim v As Variant
    Dim o As Object
    
    'str = Null
    'str = Nothing
    str = Empty
    Set o = Nothing
    
    result = IsEmpty(str)
    result = IsNull(str)
    

End Sub





Sub AppConfigTest()
    Dim app_config As AppConfig
    Dim check_result As Boolean
    Set app_config = New AppConfig
    
    check_result = app_config.Check(ThisWorkbook)
        
    If check_result = True Then
        app_config.Parse ThisWorkbook
        app_config.ExportXML "d:\config.xml"
    End If
    
End Sub


Sub smartfolserTest()
    Dim smartFolder As ISmartFolder
    Dim subFolder As IFolder
    Dim child As IFolder
    Dim job As IJob
    Dim config As IXMLConfigItem
    
    
    Set smartFolder = New ISmartFolder
    smartFolder.DataCenter = "A"
    
    Set job = smartFolder
    job.JobName = "TOP FOLDER"
    job.Application = "TOP APPLICATION"
    
    Set child = New IFolder
    Set job = child
    job.JobName = "SECOND FOLDER"
    job.Application = "SECOND APP"
    
        
    Set subFolder = smartFolder
    
    subFolder.AddSubItem job, subFolder
    
    Set subFolder = job
    
    Set child = New IFolder
    Set job = child
    job.JobName = "THIRD FOLDER"
    job.Application = "THIRD APP"
    
    subFolder.AddSubItem job, subFolder
    
    Set config = smartFolder
    
    Dim doc As MSXML2.DOMDocument
    Dim root As MSXML2.IXMLDOMElement
    
    Set doc = CreateXMLDocument()
    Set root = CreateXMLRoot(doc)
    config.Export doc, root
    
    Debug.Print "=================="
    Debug.Print doc.XML
    
    Do While Not job.Parent Is Nothing
        Set job = job.Parent
    Loop
    
    Debug.Print job.JobName
    Debug.Print TypeName(job)

End Sub


