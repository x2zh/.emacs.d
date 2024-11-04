;;; init.el --- Iintialization file for Emacs  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Emacs Startup File --- initialization fro Emacs

;;; Code:
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/key-chord")
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/awesome-tray")

(defconst *is-windows (eq system-type 'windows-nt))
(defconst *is-mac (eq system-type 'darwin))

(setq gc-cons-threshold (* 50 1000 1000))

;; 初始化包管理器: use-package
(require 'init-package-system)

;; 初始化操作系统相关垫片
(require 'init-os-polyfill)

;; 基本的样式和主题配置
(require 'init-view)

;; 初始化基本编辑器
(require 'init-basic-editor)

;; 窗口和buffer管理配置
(require 'init-window-and-buffer)

;; 初始化 mini buffer
(require 'init-vertico-pack)

;; 各种编程语言和文本语言配置
(require 'init-pl)


;; 各种工具
(require 'init-tools)

;; emacs配置工具保存的配置文件
(let ((custom-file-path "~/.emacs.d/emacs-custom.el"))
  (unless (file-exists-p custom-file-path)
    (with-temp-file custom-file-path))
  (setq custom-file custom-file-path)
  (load custom-file))


(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
