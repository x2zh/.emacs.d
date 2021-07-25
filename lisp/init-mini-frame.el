

(defun x2zh-set-mini-frame-top ()
  (interactive)
  (custom-set-variables
   `(mini-frame-show-parameters
     `((top . ,(floor (* 0.32 (frame-native-height))))
       (width . 0.7)
       (left . 0.5)))))



(use-package mini-frame
  :config
  (x2zh-set-mini-frame-top)
  (mini-frame-mode))
;;; todo 这里的hook没有生效 hack 一下吧
;; (add-hook 'move-frame-functions (lambda () (x2zh-set-mini-frame-top)))

(defun x2zh-mini-frame-top-function (orig-fun &rest args)
  (x2zh-set-mini-frame-top)
  (apply orig-fun args))

(advice-add 'read-from-minibuffer :around #'x2zh-mini-frame-top-function)


(provide 'init-mini-frame)
