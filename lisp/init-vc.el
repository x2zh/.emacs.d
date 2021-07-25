(use-package magit
  :bind
  (("M-k" . #'magit-status)))

(use-package git-gutter
  :config
  (add-hook 'prog-mode-hook 'git-gutter-mode))

(provide 'init-vc)
