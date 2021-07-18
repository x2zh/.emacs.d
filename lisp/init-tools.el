;; -*- lexical-binding: t; -*-

(use-package restclient
  :config
  (setq auto-mode-alist
	(append '(("\\.http\\'" . restclient-mode))
		auto-mode-alist)))

(provide 'init-tools)
