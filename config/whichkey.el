(use-package which-key
  :ensure t
  :init
  (setq which-key-idle-delay 0.4)
  (setq which-key-add-column-padding 3)
  (setq which-key-separator " " )
  (setq which-key-prefix-prefix "... " )
  
  :config
  (which-key-mode))
