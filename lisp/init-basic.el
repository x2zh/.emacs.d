;; -*- lexical-binding: t; -*-
(if (eq system-type 'darwin)
    (progn  (setq mac-command-modifier 'meta)
	    (setq mac-option-modifier 'super)))
(provide 'init-basic)
