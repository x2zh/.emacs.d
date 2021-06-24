;;; init-meow.el --- Initialize meow modal configurations.	-*- lexical-binding: t -*-
;;; Commentary:
;;
;; Emacs Modal management configurations.
;;
;;; Code:

(require 'use-package)

(use-package xah-fly-keys
  :config
  (xah-fly-keys-set-layout "qwerty"))

(use-package key-chord
  :ensure t
  :config
  (key-chord-mode 1)
  (key-chord-define-global ",." 'keyboard-quit)
  (key-chord-define-global " b" 'consult-buffer))
(provide 'init-meow)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-meow.el ends here
