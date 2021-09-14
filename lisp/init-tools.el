;; -*- lexical-binding: t; -*-

(use-package restclient
  :config
  (setq auto-mode-alist
	(append '(("\\.http\\'" . restclient-mode))
		auto-mode-alist)))


(use-package youdao-dictionary
  :defer t
  :bind
  ("<f6>" . 'youdao-dictionary-search-at-point-posframe))

;;; used by youdao-dictionary
(use-package posframe
  :ensure t
  :defer t)

(provide 'init-tools)
