;; -*- lexical-binding: t; -*-

(use-package restclient
  :config
  (setq auto-mode-alist
	(append '(("\\.http\\'" . restclient-mode))
		auto-mode-alist)))


(use-package restart-emacs)

(use-package magit
  :defer t)

(provide 'init-tools)
