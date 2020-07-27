(require 'package)

(setq package-archives '(("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))

(package-initialize)

(setq package-enable-at-startup nil)

(tool-bar-mode -1)

(package-refresh-contents)
(package-install 'use-package)
(package-install 'hydra)
(package-install 'company)
(use-package company
  :ensure t)

(use-package emr
  :ensure t)
(define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)

(cua-mode t)

(setq-default frame-title-format '("%F"))
(load "~/.emacs.d/config/config.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-swoop helm which-key elcord dumb-jump emr company hydra use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )















































































































