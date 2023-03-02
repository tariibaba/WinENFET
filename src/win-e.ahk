#e::FocusFileExplorer()

FocusFileExplorer() {
   WinGet, ids, List, ahk_class CabinetWClass
   if (ids != 0){
      Loop, %ids% {
         this_id := ids%A_Index%
         WinActivate, ahk_id %this_id%
         WinWaitActive, ahk_id %this_id%,, 2
         active := WinActive(ahk_class CabinetWClass)
         if (active != 0) {
            send, ^t
            break
         }
      }
   }
   else {
      Run, % "explorer"
   }
}
