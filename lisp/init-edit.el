;; -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; selection
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package expand-region
  :bind
  (("C-=" . 'er/expand-region)))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; navigation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(use-package avy
  :bind
  (("C-." . #'avy-goto-char-2)))


;;; structure navigation

(global-set-key (kbd "<f7>") #'consult-imenu)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; edit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(delete-selection-mode 1)

(use-package undo-tree
  :init
  (global-undo-tree-mode 1)
  :config
  (progn
    (define-key undo-tree-visualizer-mode-map (kbd "RET") 'undo-tree-visualizer-quit)))

(use-package atomic-chrome)

(use-package hungry-delete
  :config
  (global-set-key (kbd "C-<backspace>") #'hungry-delete-backward)
  (global-set-key (kbd "C-c <backspace>") #'backward-kill-word))

(use-package git-gutter
  :config
  (add-hook 'prog-mode-hook 'git-gutter-mode))

(provide 'init-edit)
