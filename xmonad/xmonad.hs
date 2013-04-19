import XMonad
import qualified Data.Map as M
import XMonad.Config.Gnome
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig(additionalKeys)

newKeys x = M.difference (keys defaultConfig x) (M.fromList $ keysToRemove x)

keysToRemove :: XConfig Layout ->    [((KeyMask, KeySym),X ())]
keysToRemove x = [ ((modMask x, xK_b ), return ()) ]

main = do
    xmonad $ gnomeConfig 
            { layoutHook = smartBorders (layoutHook gnomeConfig) 
              , normalBorderColor  = "#cccccc"
              , focusedBorderColor = "#33CC33" 
              , keys = newKeys
            } `additionalKeys`
            [((controlMask .|. mod1Mask, xK_Up), spawn "amixer set Master 5+")
             , ((controlMask .|. mod1Mask, xK_Down), spawn "amixer set Master 5-")
             , ((controlMask .|. mod1Mask, xK_F11), spawn "amixer set Master 5-")
             , ((controlMask .|. mod1Mask, xK_F12), spawn "amixer set Master 5+")
            ]

