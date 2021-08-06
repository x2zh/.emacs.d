;; -*- lexical-binding: t; -*-

(use-package emacs
  :config
  (setq scroll-conservatively 2)
  (setq inhibit-startup-screen 1)
  (setq make-backup-files nil)
  (setq ring-bell-function 'ignore)
  (setq display-line-numbers-type t)
  (global-display-line-numbers-mode t)
  (show-paren-mode 1)
  (global-hl-line-mode 1)
  (scroll-bar-mode -1))

(use-package modus-themes
  :config)

(use-package doom-themes)

(use-package gruvbox-theme
  :config)

(load-theme 'modus-operandi t)


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





