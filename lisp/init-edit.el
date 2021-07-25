;; -*- lexical-binding: t; -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; selection
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package expand-region
  :bind
  (("M-=" . 'er/expand-region)))

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; encoding
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(set-language-environment "UTF-8")





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; view
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(use-package beacon
  :config
  (setq-default beacon-lighter "")
  (setq-default beacon-size 80)
  (setq beacon-color "#ff0d0d")
  (add-hook 'after-init-hook 'beacon-mode))


(provide 'init-edit)
