Attribute VB_Name = "UIController"
Option Explicit


Sub addMenus() '添加菜单
        
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
       .Caption = "校验"
       .OnAction = "ThisWorkbook.CheckConfig"
    End With
     
    Set button = popup.Controls.Add(Type:=msoControlButton)
    With button
       .Caption = "生成..."
       .OnAction = "ThisWorkbook.GenerateConfig"
    End With
        
End Sub

Sub deleteMenus() '删除菜单
    Dim popup As CommandBarPopup
    Set popup = Application.CommandBars("Worksheet Menu Bar").FindControl(Tag:="CTM")
    If popup Is Nothing Then
    Else
      popup.Delete
    End If
End Sub
