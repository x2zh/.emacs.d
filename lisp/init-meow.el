;;; init-meow.el --- Initialize meow modal configurations.	-*- lexical-binding: t -*-
;;; Commentary:
;;
;; Emacs Modal management configurations.
;;
;;; Code:

(require 'use-package)

(defun meow-setup ()
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-motion-overwrite-define-key)
  (meow-leader-define-key
   '("?" . meow-cheatsheet)
   '("3" . delete-other-windows)
   '("b" . consult-buffer))
  (meow-normal-define-key
   '("j" . meow-left)
   '("l" . meow-right)
   '("i" . meow-prev)
   '("k" . meow-next)
   '("f" . meow-insert)
   '("n" . meow-search)
   '("a" . meow-M-x)
   '("y" . meow-undo)))

(use-package meow
  :demand t
  :init
  (meow-global-mode 1)
  :config
  (meow-setup)
  (meow-setup-indicator))

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode 1)
  (key-chord-define-global ",." (kbd "<escape>")))
(provide 'init-meow)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-meow.el ends here
