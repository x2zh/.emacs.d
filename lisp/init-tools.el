;; -*- lexical-binding: t; -*-

(use-package restclient
  :config
  (setq auto-mode-alist
	(append '(("\\.http\\'" . restclient-mode))
		auto-mode-alist)))


(use-package youdao-dictionary
  :bind
  ("<f6>" . 'youdao-dictionary-search-at-point-posframe))

;;; used by youdao-dictionary
(use-package posframe)

(provide 'init-tools)
