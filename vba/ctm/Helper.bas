Attribute VB_Name = "Helper"
Option Explicit


Function ReadJobs()
    
    Dim jobSheet As Worksheet
    Dim line As Range
    Dim Jobs As Collection
    Dim job As JobItem
    Set jobSheet = Application.Sheets("General")
    For i = 3 To jobSheet.Rows.Count
        Set line = jobSheet.Rows(i)
        If Trim(line.Cells(1).Value) = "" Then
           Return
        End If
        job = ReadJob(line)
        Jobs.Add job
    Next
End Function

Function ReadJob(line As Range) As IJob
    Dim job As New IJob
    Set ReadJob = Nothing
    job.JobName = line.Cells(1)
    job.ParentFolder = line.Cells(2)
    job.JobISN = line.Cells(3)
    job.Application = line.Cells(4)
    job.SUB_APPLICATION = line.Cells(5)
    job.APPL_TYPE = line.Cells(6)
    job.Description = line.Cells(7)
    job.TaskType = line.Cells(8)
    job.MemLib = line.Cells(9)
    job.MemName = line.Cells(10)
    job.CmdLine = line.Cells(11)
    job.CREATED_BY = line.Cells(12)
    job.NodeId = line.Cells(13)
    job.RUN_AS = line.Cells(14)
    job.Priority = line.Cells(15)
    job.Critical = line.Cells(16)
    job.MaxRerun = line.Cells(17)
    job.Interval = line.Cells(18)
    job.DocLib = line.Cells(19)
    job.DocMem = line.Cells(20)
    job.MULTY_AGENT = line.Cells(21)
    job.Confirm = line.Cells(22)
    job.APPL_FORM = line.Cells(23)
    job.CM_VER = line.Cells(24)
    job.USE_INSTREAM_JCL = line.Cells(25)
    job.VERSION_OPCODE = line.Cells(26)
    job.IS_CURRENT_VERSION = line.Cells(27)
    job.VERSION_SERIAL = line.Cells(28)
    job.VERSION_HOST = line.Cells(29)
    If job.Validate() Is True Then
       ReadJob = job
    End If
End Function

Sub LoadXML()
    Dim xmlDoc As Object
    Set xmlDoc = CreateObject("MSXML2.DOMDocument")
    'Dim xmlDoc As New MSXML2.DOMDocument60
    Dim loaded As Boolean
    loaded = xmlDoc.Load("D:\Documents\OneDriver\OneDrive\ÎÄµµ\×÷ÒµÅäÖÃ_20180606.xml")
    If loaded = True Then
      Set Text = xmlDoc.BaseName
    End If
End Sub


