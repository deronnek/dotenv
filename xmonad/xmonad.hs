--
-- An example, simple ~/.xmonad/xmonad.hs file.
-- It overrides a few basic settings, reusing all the other defaults.
--

import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import Data.Monoid
import System.Exit
import System.IO

import qualified Data.Map        as M
import qualified XMonad.StackSet as W


main = do
--      trayer <- spawnPipe "/usr/bin/trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --transparent true --tint 0x191970 --height 12 &"
--      nmapp  <- spawnPipe "/usr/bin/nm-applet --sm-disable"
--      wicd   <- spawnPipe "/usr/bin/wicd-gtk"
        xmproc <- spawnPipe "/home/deronne/.cabal/bin/xmobar /home/deronne/.xmobarrc"
        xmonad $ defaultConfig
                { manageHook = manageDocks <+> manageHook defaultConfig
                , layoutHook = avoidStruts  $  layoutHook defaultConfig
                , logHook = dynamicLogWithPP xmobarPP
                    { ppOutput = hPutStrLn xmproc
                    , ppTitle = xmobarColor "green" "" . shorten 50
                    }
                , borderWidth        = 2
                , normalBorderColor  = "#cccccc"
                , focusedBorderColor = "#cd8b00" 
                } `additionalKeys`
                [((controlMask .|. mod1Mask, xK_Up), spawn "amixer set Master 5+")
                 , ((controlMask .|. mod1Mask, xK_Down), spawn "amixer set Master 5-")
                 , ((controlMask .|. mod1Mask, xK_F11), spawn "amixer set Master 5-")
                 , ((controlMask .|. mod1Mask, xK_F12), spawn "amixer set Master 5+")
                ]
--, keys = myKeys
--, modMask = mod4Mask
--This is where my volume control keys will go as well
--myKeys conf@(XConfig {}) = M.fromList $
--         [ ((mod1Mask, xK_Tab), windows W.focusDown)]
