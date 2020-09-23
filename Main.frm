VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "shdocvw.dll"
Begin VB.Form Main 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ElFerPostPHP (Without Winsock)"
   ClientHeight    =   4110
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9315
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4110
   ScaleWidth      =   9315
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton CommandSend 
      Caption         =   "Send"
      Height          =   495
      Left            =   240
      TabIndex        =   12
      Top             =   1320
      Width           =   8895
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   9
      Left            =   7440
      MaxLength       =   255
      TabIndex        =   10
      Top             =   960
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   8
      Left            =   5640
      MaxLength       =   255
      TabIndex        =   9
      Top             =   960
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   7
      Left            =   3840
      MaxLength       =   255
      TabIndex        =   8
      Top             =   960
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   6
      Left            =   2040
      MaxLength       =   255
      TabIndex        =   7
      Top             =   960
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   5
      Left            =   240
      MaxLength       =   255
      TabIndex        =   6
      Top             =   960
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   4
      Left            =   7440
      MaxLength       =   255
      TabIndex        =   5
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   3
      Left            =   5640
      MaxLength       =   255
      TabIndex        =   4
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   2
      Left            =   3840
      MaxLength       =   255
      TabIndex        =   3
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   1
      Left            =   2040
      MaxLength       =   255
      TabIndex        =   2
      Top             =   600
      Width           =   1695
   End
   Begin VB.TextBox TxtField 
      Height          =   285
      Index           =   0
      Left            =   240
      MaxLength       =   255
      TabIndex        =   1
      Top             =   600
      Width           =   1695
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser 
      Height          =   2175
      Left            =   120
      TabIndex        =   0
      Top             =   4800
      Width           =   9135
      ExtentX         =   16113
      ExtentY         =   3836
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
   Begin VB.Label LabelNote 
      Alignment       =   2  'Center
      Caption         =   "Dont forget refresh button in your explorer."
      ForeColor       =   &H000000C0&
      Height          =   255
      Left            =   240
      TabIndex        =   15
      Top             =   3600
      Width           =   8895
   End
   Begin VB.Label LabelHelp 
      Alignment       =   2  'Center
      Caption         =   "Send the fields and check the link"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   14
      Top             =   2160
      Width           =   8895
   End
   Begin VB.Label LabelLink 
      Alignment       =   2  'Center
      Caption         =   "http://www.usuarios.lycos.es/wikilyric/list.php"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   2880
      Width           =   8895
   End
   Begin VB.Label Label 
      Alignment       =   2  'Center
      Caption         =   "Fields"
      Height          =   255
      Left            =   240
      TabIndex        =   11
      Top             =   120
      Width           =   8895
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShellExecute Lib "shell32" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Private Sub CommandSend_Click()
For X = 0 To 9
If TxtField(X).Text = "" Then TxtField(X).Text = "Null"
Next

WebBrowser.Navigate "http://usuarios.lycos.es/wikilyric/insert.php?User=" + TxtField(0).Text + "&Pass=" + TxtField(1).Text + "&EF01=" + TxtField(2).Text + "&EF02=" + TxtField(3).Text + "&EF03=" + TxtField(4).Text + "&EF04=" + TxtField(5).Text + "&EF05=" + TxtField(6).Text + "&EF06=" + TxtField(7).Text + "&EF07=" + TxtField(8).Text + "&EF08=" + TxtField(9).Text
End Sub

Private Sub LabelLink_Click()
Dim X: X = ShellExecute(Me.hwnd, "Open", "http://www.usuarios.lycos.es/wikilyric/list.php", &O0, &O0, SW_NORMAL)
End Sub

Private Sub LabelLink_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
LabelLink.ForeColor = vbRed
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
LabelLink.ForeColor = vbBlue
End Sub

