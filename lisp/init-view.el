;; -*- lexical-binding: t; -*-

(use-package emacs
  :config
  ;; (load-theme 'modus-operandi t)
  (setq scroll-conservatively 2)
  (setq inhibit-startup-screen 1)
  (setq-default cursor-type 'bar)
  (setq make-backup-files nil)
  (setq ring-bell-function 'ignore)
  (setq display-line-numbers-type t)
  (global-display-line-numbers-mode t)
  (show-paren-mode 1)
  (global-hl-line-mode 1)
  (scroll-bar-mode -1))

(use-package modus-themes
  :config
  (load-theme 'modus-operandi t))


(provide 'init-view)





