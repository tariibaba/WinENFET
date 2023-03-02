#e::FocusFileExplorer()

FocusFileExplorer() {
   ran := 0
   WinGet, ids, List, ahk_class CabinetWClass
   Loop, %ids%
   {
      this_id := ids%A_Index%
      WinActivate, ahk_id %this_id%
      WinWaitActive, ahk_id %this_id%,, 2
      active := WinActive(ahk_class CabinetWClass)
      if (active != 0) {
         send, ^t
         ran := 1
         break
      }
   }
   if (ran != 1){
      Run, % "explorer"
   }
}
