(use-package ivy
  :ensure t
  :init (ivy-mode 1)

  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) "))


(use-package ivy-rich
  :ensure t
  :after (ivy counsel swiper)
  :config
  (ivy-rich-mode 1))


(use-package swiper
  :ensure t
  :bind (("C-s" . 'swiper)))

(use-package counsel
  :ensure t
  :config
  (counsel-mode 1))


(provide 'init-ivy-pack)




