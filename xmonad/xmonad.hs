import XMonad
import XMonad.Config.Xfce

main = xmonad xfceConfig
  { terminal = "xfce4-terminal" 
    , normalBorderColor  = "#cccccc"
    , focusedBorderColor = "#33CC33" 
  }
