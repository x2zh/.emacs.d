;;; init.el --- Iintialization file for Emacs
;;; Commentary:
;;; Emacs Startup File --- initialization fro Emacs

;;; Code:
;;; hello
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'init-package)
(require 'init-meow)
(require 'init-pl)
;; (require 'init-ivy-pack)
(require 'init-vertico-pack)

(require 'use-package)
(use-package emacs
  :config
  (load-theme 'modus-operandi t)
  (setq scroll-conservatively 2)
  (setq inhibit-startup-screen 1)
  (setq-default cursor-type 'bar)
  (setq make-backup-files nil)
  (setq ring-bell-function 'ignore)
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t)
  (global-hl-line-mode 1))

(use-package restart-emacs)

;; (use-package doom-themes
;;   :config
;;   (setq doom-themes-enable-bold t
;; 	doom-themes-enable-italic t)
;;   (load-theme 'doom-gruvbox-light t))

;; (use-package gruvbox-theme
;;   :config
;;   (load-theme 'gruvbox-light-soft t))


;; window mangement
(use-package ace-window
  :bind (("M-o" . ace-window)))

(use-package which-key
  :config
  (which-key-mode 1))

;; Buffer Management
(use-package ibuffer
  :bind (("C-x C-b" . ibuffer)))

(use-package avy
  :bind (("s-." . avy-goto-char)))

(use-package crux
  :ensure t
  :bind
  (("C-a" . crux-move-beginning-of-line)
   ("s-;" . crux-find-user-init-file)))

(global-set-key (kbd "<f5>") 'eval-buffer)

(let ((custom-file-path "~/.emacs.d/emacs-custom.el"))
  (unless (file-exists-p custom-file-path)
    (with-temp-file custom-file-path))
  (setq custom-file custom-file-path)
  (load custom-file))

(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
