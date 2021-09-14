;; -*- lexical-binding: t; -*-

(use-package emacs
  :init
  (add-hook 'prog-mode-hook #'display-line-numbers-mode)
  (add-hook 'text-mode-hook #'display-line-numbers-mode))

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

(use-package dired-sidebar
  :bind (("M-1" . dired-sidebar-toggle-sidebar))
  :ensure t
  :commands (dired-sidebar-toggle-sidebar)
  :init
  (add-hook 'dired-sidebar-mode-hook
            (lambda ()
              (unless (file-remote-p default-directory)
                (auto-revert-mode))
	      (hide-mode-line-mode)
	      (display-line-numbers-mode -1)))
  :config
  (setq vscode-icon-size 16)
  (push 'toggle-window-split dired-sidebar-toggle-hidden-commands)
  (push 'rotate-windows dired-sidebar-toggle-hidden-commands)

  (setq dired-sidebar-subtree-line-prefix "__")
  (setq dired-sidebar-theme 'vscode)
  (setq dired-sidebar-use-term-integration t)
  (setq dired-sidebar-use-custom-font t))




(use-package doom-modeline
  :config
  (setq doom-modeline-height 1)
  (setq doom-modeline-icon nil)
  :hook (after-init . doom-modeline-mode))

;;; chinese font align settings 
;; (use-package cnfonts)

;; (set-face-attribute
;;  'default nil
;;  :font (font-spec :name "-outline-Courier New-bold-italic-normal-mono-*-*-*-*-c-*-iso10646-1"
;;                   :weight 'normal
;;                   :slant 'normal
;;                   :size 10.0))
;; (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;   (set-fontset-font
;;    (frame-parameter nil 'font)
;;    charset
;;    (font-spec :name "-outline-微软雅黑-normal-normal-normal-sans-*-*-*-*-p-*-iso10646-1"
;;               :weight 'normal
;;               :slant 'normal
;;               :size 12.0)))

;; (unless (eq system-type 'windows-nt)
;;   (progn
;;     (set-face-attribute
;;      'default nil
;;      :font (font-spec :name "-*-Fira Code-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
;;                       :weight 'normal
;;                       :slant 'normal
;;                       :size 12.5))
;;     (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;       (set-fontset-font
;;        (frame-parameter nil 'font)
;;        charset
;;        (font-spec :name "-*-Hiragino Sans GB-normal-normal-normal-*-*-*-*-*-p-0-iso10646-1"
;; 		  :weight 'normal
;; 		  :slant 'normal
;; 		  :size 14.0)))))



(provide 'init-view)





