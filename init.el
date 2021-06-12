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


(require 'use-package)
(use-package emacs
  :config
  (setq scroll-conservatively 2)
  (setq inhibit-startup-screen 1)
  (setq-default cursor-type 'bar)
  (setq make-backup-files nil)
  (setq ring-bell-function 'ignore)
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t)
  (global-hl-line-mode 1))

(use-package restart-emacs
  :ensure)

;; (use-package doom-themes
;;   :ensure t
;;   :config
;;   (setq doom-themes-enable-bold t
;; 	doom-themes-enable-italic t)
;;   (load-theme 'doom-gruvbox-light t))

(use-package gruvbox-theme
  :ensure t
  :config
  (load-theme 'gruvbox-light-soft t))

(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

;; window mangement
(use-package ace-window
  :ensure t
  :bind (("M-o" . ace-window)))

(use-package ivy
  :ensure t
  :init (ivy-mode 1)

  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) "))


(use-package ivy-rich
  :ensure t
  :after (ivy counsel swiper)
  :config
  (ivy-rich-mode 1))


(use-package swiper
  :ensure t
  :bind (("C-s" . 'swiper)))

(use-package counsel
  :ensure t
  :init (counsel-mode 1))

(use-package which-key
  :ensure t
  :config
  (which-key-mode 1))

;; Buffer Management
(use-package ibuffer
  :ensure t
  :bind (("C-x C-b" . ibuffer)))

(use-package avy
  :ensure t
  :bind (("s-." . avy-goto-char)))


(defun open-emacs-settings ()
  "Hello."
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(use-package crux
  :ensure t
  :bind
  (("C-a" . crux-move-beginning-of-line)
   ("s-;" . crux-find-user-init-file)))

;; (global-set-key (kbd "s-;") 'open-emacs-settings)
(global-set-key (kbd "<f5>") 'eval-buffer)


(unless (file-exists-p "~/.emacs.d/emacs-custom.el")
  (with-temp-file "~/.emacs.d/emacs-custom.el"))
(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)
(provide 'init)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
