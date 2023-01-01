;; -*- lexical-binding: t; -*-
(use-package org-bullets
  :defer t
  :init
  (add-hook 'org-mode-hook 'org-bullets-mode)
  (add-hook 'org-mode-hook 'org-indent-mode)
  (setq org-log-done 'note))

(provide 'init-pl-org)
