(use-package org-bullets)
(setq org-log-done 'note)
(add-hook 'org-mode-hook 'org-bullets-mode)
(add-hook 'org-mode-hook 'org-indent-mode)

(provide 'init-org)
