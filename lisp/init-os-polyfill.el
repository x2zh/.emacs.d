;; -*- lexical-binding: t; -*-
(if (eq system-type 'darwin)
    (progn  (setq mac-command-modifier 'meta)
	    (setq mac-option-modifier 'super)))

(if (eq system-type 'darwin)
    (use-package exec-path-from-shell
      :defer t
      :init (exec-path-from-shell-initialize)))
(provide 'init-os-polyfill)
