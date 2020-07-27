(use-package helm
  :ensure t				
  :init 
  (helm-mode t)
  :bind
  ("M-x" . helm-M-x))

(use-package helm-swoop
  :ensure t
  :bind
  ("C-f" . helm-swoop))
