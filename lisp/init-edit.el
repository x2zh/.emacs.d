;; -*- lexical-binding: t; -*-


(delete-selection-mode 1)

(use-package undo-tree
  :init
  (global-undo-tree-mode 1))

(use-package expand-region
  :bind
  (("C-=" . 'er/expand-region)))

(use-package atomic-chrome)


(use-package git-gutter
  :config
  (add-hook 'prog-mode-hook 'git-gutter-mode))

(provide 'init-edit)
