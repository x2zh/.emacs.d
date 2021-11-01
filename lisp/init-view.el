;; -*- lexical-binding: t; -*-

(use-package emacs
  :init
  (add-hook 'prog-mode-hook #'display-line-numbers-mode)
  (add-hook 'text-mode-hook #'display-line-numbers-mode))

(set-frame-font "Sarasa Mono SC:pixelsize=12:weight=regular:slant=normal:width=normal:spacing=100:scalable=true" nil t)

(add-hook 'after-init-hook
	  (lambda ()
	    (setq scroll-conservatively 2)
	    (setq inhibit-startup-screen 1)
	    (setq make-backup-files nil)
	    (setq ring-bell-function 'ignore)
	    (setq display-line-numbers-type t)
	    (show-paren-mode 1)
	    (global-hl-line-mode 1)
	    (scroll-bar-mode -1)))

(use-package modus-themes
  :config)

(use-package doom-themes)

(use-package gruvbox-theme
  :config)

(load-theme 'modus-operandi t)

(use-package hide-mode-line)

(use-package doom-modeline
  :config
  (setq doom-modeline-icon t)
  :hook (after-init . doom-modeline-mode))

(provide 'init-view)





