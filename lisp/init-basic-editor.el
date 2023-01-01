

(use-package crux
  :ensure t
  :bind
  (("C-a" . crux-move-beginning-of-line)))


(use-package avy
  :bind (("s-." . avy-goto-char)))

(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let* ((name (buffer-name))
        (filename (buffer-file-name))
        (basename (file-name-nondirectory filename)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " (file-name-directory filename) basename nil basename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))
(global-set-key (kbd "<f6>") 'rename-current-buffer-file)


(use-package multiple-cursors)
(require 'multiple-cursors)
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "ml" 'mc/edit-lines)
(key-chord-define-global "mk" 'mc/mark-next-like-this-word) 
 

(provide 'init-basic-editor)
