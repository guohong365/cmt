Attribute VB_Name = "UIController"
Option Explicit


Sub addMenus() '��Ӳ˵�
        
    Dim popup As CommandBarPopup
    
    Dim button As CommandBarControl
    Dim App As Application
        
    Set App = Application
        
        
    Set popup = App.CommandBars("Worksheet Menu Bar").FindControl(Tag:="CTM")
    If popup Is Nothing Then
     Set popup = App.CommandBars("Worksheet Menu Bar").Controls.Add(Type:=msoControlPopup, Temporary:=True)
    Else
     Dim menuItem As CommandBarControl
     For Each menuItem In popup.Controls
       menuItem.Delete
     Next
    End If
     
    With popup
       .Caption = "Control-M"
       .Tag = "CTM"
    End With
     
    Set button = popup.Controls.Add(Type:=msoControlButton)
    With button
       .Caption = "У��"
       .OnAction = "ThisWorkbook.CheckConfig"
    End With
     
    Set button = popup.Controls.Add(Type:=msoControlButton)
    With button
       .Caption = "����..."
       .OnAction = "ThisWorkbook.GenerateConfig"
    End With
        
End Sub

Sub deleteMenus() 'ɾ���˵�
    Dim popup As CommandBarPopup
    Set popup = Application.CommandBars("Worksheet Menu Bar").FindControl(Tag:="CTM")
    If popup Is Nothing Then
    Else
      popup.Delete
    End If
End Sub
