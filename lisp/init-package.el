;;; init-package.el --- Initialize package configurations.	-*- lexical-binding: t -*-
;;; Commentary:
;;
;; Emacs Package management configurations.
;;
;;; Code:

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(if (eq system-type 'darwin)
    (use-package exec-path-from-shell
      :init (exec-path-from-shell-initialize)))


(provide 'init-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-package.el ends here
