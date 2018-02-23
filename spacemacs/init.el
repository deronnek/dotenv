;;; init.el --- Spacemacs Initialization File
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; Without this comment emacs25 adds (package-initialize) here
;; (package-initialize)

;; Increase gc-cons-threshold, depending on your system you may set it back to a
;; lower value in your dotfile (function `dotspacemacs/user-config')
(setq gc-cons-threshold 100000000)

(defconst spacemacs-version         "0.200.10" "Spacemacs version.")
(defconst spacemacs-emacs-min-version   "24.4" "Minimal version of Emacs.")

(if (not (version<= spacemacs-emacs-min-version emacs-version))
    (error (concat "Your version of Emacs (%s) is too old. "
                   "Spacemacs requires Emacs version %s or above.")
           emacs-version spacemacs-emacs-min-version)
  (load-file (concat (file-name-directory load-file-name)
                     "core/core-load-paths.el"))
  (require 'core-spacemacs)
  (spacemacs/init)
  (configuration-layer/sync)
  (spacemacs-buffer/display-startup-note)
  (spacemacs/setup-startup-hook)
  (require 'server)
  (unless (server-running-p) (server-start)))

;; Make python have import and from be a different class of keyword than if, raise, def, return etc.
  (defface python-import-face
  '((((class grayscale) (background light)) :foreground "Gray90" :weight bold)
    (((class grayscale) (background dark))  :foreground "DimGray" :weight bold)
    (((class color) (min-colors 88) (background light)) :foreground "brightred")
    (((class color) (min-colors 88) (background dark))  :foreground "brightred")
    (((class color) (min-colors 16) (background light)) :foreground "brightred")
    (((class color) (min-colors 16) (background dark))  :foreground "brightred")
    (((class color) (min-colors 8)) :foreground "green")
    (t :weight bold :underline t))
  "Font Lock mode face used to highlight type and classes."
  :group 'python-faces)
(defcustom python-import-face 'python-import-face
"Face for the import keyword"
  :group 'python
  :type 'face)

(eval-after-load "python"
  '(progn
     (setcar python-font-lock-keywords
             (rx symbol-start
                 (or
                  "and" "del" "not" "as" "elif" "global" "or" "with"
                  "assert" "else" "if" "pass" "yield" "break" "except" "while" "class"
                  "in" "raise" "continue" "finally" "is" "return" "def" "for" "lambda"
                  "try"
                  ;; Python 2:
                  "print" "exec"
                  ;; Python 3:
                  ;; False, None, and True are listed as keywords on the Python 3
                  ;; documentation, but since they also qualify as constants they are
                  ;; fontified like that in order to keep font-lock consistent between
                  ;; Python versions.
                  "nonlocal"
                  ;; Python 3.5+ PEP492
                  (and "async" (+ space) (or "def" "for" "with"))
                  "await"
                  ;; Extra:
                  "self")
                 symbol-end))
     (setcdr python-font-lock-keywords (cons '("\\_<from\\_>" (0 python-import-face)) (cons '("\\_<import\\_>" (0 python-import-face)) (cdr python-font-lock-keywords))))))
