;; -*- lexical-binding: t; -*-


(delete-selection-mode 1)

(use-package undo-tree
  :init
  (global-undo-tree-mode 1))

(use-package expand-region
  :bind
  (("C-=" . 'er/expand-region)))

(provide 'init-edit)
