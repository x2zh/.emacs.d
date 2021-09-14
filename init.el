;;; init.el --- Iintialization file for Emacs  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Emacs Startup File --- initialization fro Emacs

;;; Code:
;;; hello
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(defconst *is-windows (eq system-type 'windows-nt))
(defconst *is-mac (eq system-type 'darwin))

(setq gc-cons-threshold (* 50 1000 1000))
;; 做一个测试
(require 'init-package)

(require 'init-basic)
(require 'init-edit)
(require 'init-modal)
(require 'init-pl)
;; (require 'init-ivy-pack)
(require 'init-vertico-pack)

;; windows 平台的特殊配置
(if *is-windows
    (require 'init-windows-nt))

;; org-mode 配置
(require 'init-org)

;; 基本的样式和主题配置
(require 'init-view)
(require 'init-tools)


(require 'init-vc)

;; (require 'init-mini-frame)
(use-package restart-emacs)


(use-package esup
  :ensure t
  :pin melpa)


;; window mangement
(if (>= emacs-major-version 28)
    (use-package window
      :ensure nil
      :custom
      (display-buffer-alist
       '(("\\*e?shell\\*"
	  ;; note sample with more functions, executed sequentially
	  (display-buffer-in-side-window)
	  (window-height . 0.382)
	  (side . bottom)
	  (slot . -1))
	 ("\\*\\(BackTrace\\|Warnings\\|Compile-Log\\|[Hh]elp\\|Messages\\)\\*"
	  (display-buffer-in-side-window)
	  (window-height . 0.382)
	  (side . bottom)
	  (slot . 1))))))


(use-package ace-window
  :bind (("M-o" . ace-window)))

(use-package winner
  :ensure nil
  :hook (after-init . winner-mode)
  :bind (("<s-right>" . winner-redo)
	 ("<s-left>" . winner-undo)))


(use-package which-key
  :config
  (which-key-mode 1)
  (which-key-setup-minibuffer))

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

;;(setq gc-cons-threshold (* 2 1000 1000))
(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
