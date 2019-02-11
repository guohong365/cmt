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



