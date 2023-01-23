#e::FocusFileExplorer()

FocusFileExplorer() {
   for Window in ComObjCreate("Shell.Application").Windows
      continue
   until Window.Name == "File Explorer" && hWnd := Window.hwnd
   if hWnd
   {
      WinActivate, ahk_id %hWnd%
      Send, ^t
   }
   else
      Run, % "explorer"
}
