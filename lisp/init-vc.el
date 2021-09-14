(use-package magit
  :ensure t
  :defer t
  :bind)

(use-package git-gutter
  :config
  (add-hook 'prog-mode-hook 'git-gutter-mode))

(provide 'init-vc)
