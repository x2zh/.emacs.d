;;; init.el --- Iintialization file for Emacs  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Emacs Startup File --- initialization fro Emacs

;;; Code:
;;; hello
;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

(defconst *is-windows (eq system-type 'windows-nt))
(defconst *is-mac (eq system-type 'darwin))

(setq gc-cons-threshold (* 50 1000 1000))

(require 'init-package)
(require 'init-basic)
(require 'init-pl)
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
(use-package restart-emacs)

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
	 ("\\*\\(BackTrace\\|Warnings\\|Compile-Log\\|[Hh]elp\\|Messages\\|vterm\\)\\*"
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
