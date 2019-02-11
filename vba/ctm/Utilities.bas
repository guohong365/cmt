Attribute VB_Name = "Utilities"
Option Explicit

Public Sub ClearCollection(c As Collection)
    Do While c.Count > 0
        c.Remove 1
    Loop
End Sub

Public Sub SetToEveryDay(data As ITagData, Optional name As String = "")
    Dim base As ITag
    Set base = data
    
    If name = "" Then
        base.name = Empty
    Else
        base.name = name
    End If
    
    data.Days = "ALL"
    data.DaysAndOr = "O"
    
    data.JAN = "1"
    data.FEB = "1"
    data.MAR = "1"
    data.APR = "1"
    data.MAY = "1"
    data.JUN = "1"
    data.JUL = "1"
    data.AUG = "1"
    data.SEP = "1"
    data.OCT = "1"
    data.NOV = "1"
    data.DEC = "1"
    
    data.Level = "N"
    data.MaxWait = "0"
    data.Retro = "0"
    data.Shift = "Ignore Job"
End Sub

Public Sub SetDefaultJob(job As IJob)
    Dim base As ITagData
    Set base = job
    SetToEveryDay base
    base.Level = Empty
    base.MaxWait = Empty
    base.Retro = Empty
    base.Shift = Empty
    
    
    job.AdjustCond = "N"
    job.CreationDate = Format(Date, "yyyyMMdd")
    job.CreationTime = Format(Time, "HHmmss")
End Sub



Public Sub SetDefaultSmartFolder(smartFolder As ISmartFolder)
    Dim base As ITagData
    Dim job As IJob
    Dim folder As IFolder
    Set base = smartFolder
    
    SetToEveryDay base
    
    Set job = base
    
    SetDefaultFolder folder
    
    job.ApplType = "OS"
    smartFolder.EnforceValidation = "N"
    smartFolder.FolderOrderMethod = "SYSTEM"
    smartFolder.Modified = "False"
    smartFolder.UsedByCode = "0"
    base.Shift = "Ignore Job"
    job.TaskType = "SMART Table"
    job.VersionSerial = "1"
    
End Sub

Function GetFolderPath(current As IJob) As String
    Dim p As IJob
    Dim result As String
    Dim n
    
    n = current.JobName
    
    If current.Parent Is Nothing Then
        GetFolderPath = current.JobName
        Exit Function
    End If
    result = ""
    Set p = current
    
    Do While Not p Is Nothing
        If Len(result) = 0 Then
            result = p.JobName
        Else
            result = p.JobName & "/" & result
        End If
        Set p = p.Parent
    Loop
    
    GetFolderPath = result
End Function



Public Function CreateXMLDocument() As MSXML2.DOMDocument
    Dim xmlDoc As Object
    Set xmlDoc = CreateObject("MSXML2.DOMDocument")
    Set CreateXMLDocument = xmlDoc
End Function

Public Function CreateXMLRoot(domDoc As DOMDocument) As IXMLDOMElement
    Dim header As MSXML2.IXMLDOMNode
    Dim root As IXMLDOMElement
    Dim xmlElement As IXMLDOMElement

    Set header = domDoc.createProcessingInstruction("xml", "version='1.0' encoding='UTF-8'")
    domDoc.appendChild header
    Set root = domDoc.createElement("DEFTABLE")
    root.setAttribute "xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance"
    root.setAttribute "xsi:noNamespaceSchemaLocation", "Folder.xsd"
        
    Set domDoc.DocumentElement = root
    Set CreateXMLRoot = root
        
End Function
