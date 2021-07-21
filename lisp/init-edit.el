;; -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; selection
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package expand-region
  :bind
  (("C-=" . 'er/expand-region)))

(use-package selected
  :commands selected-minor-mode
  :init
  ;; (selected-global-mode)
  (add-hook 'prog-mode-hook #'selected-minor-mode)
  :bind (:map selected-keymap
              ("u" . upcase-region)
              ("d" . downcase-region)
	      (";" . exchange-point-and-mark)))


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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; encoding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-language-environment "UTF-8")

(provide 'init-edit)
