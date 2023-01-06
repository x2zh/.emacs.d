;; window mangement
(if (>= emacs-major-version 28)
    (use-package window
      :ensure nil
      :custom
      (display-buffer-alist
       '(("\\*e?shell\\*"
	  ;; note sample with more functions, executed sequentially
	  (display-buffer-in-side-window)
	  (window-height . 0.382)
	  (side . bottom)
	  (slot . -1))
	 ("\\*\\(BackTrace\\|Warnings\\|Compile-Log\\|[Hh]elp\\|Messages\\|vterm\\|Youdao Dictionary\\)\\*"
	  (display-buffer-in-side-window)
	  (window-height . 0.382)
	  (side . bottom)
	  (slot . 1))))))


(use-package ace-window
  :bind (("M-o" . ace-window)))

(use-package winner
  :ensure nil
  :hook (after-init . winner-mode)
  :bind (("<s-right>" . winner-redo)
	 ("<s-left>" . winner-undo)))

(provide 'init-window-and-buffer)
