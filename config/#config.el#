(defun symbol-append (&rest symbols)
  "Multiple symbols into one symbol"
  (intern (apply #'concatenate 'string 
                 (mapcar #'symbol-name symbols))))

(setq lexical-binding t)

(let ((all-config-files
       (list '("i"   . "~/.emacs.d/init.el")
	     '("cfg" . "~/.emacs.d/config/config.el")
	     ; insert here
	     '("b"   . "~/.emacs.d/config/behavior.el")
	     '("cy"  . "~/.emacs.d/config/company.el")
	     '("dj"  . "~/.emacs.d/config/dumbjump.el")
	     '("el"  . "~/.emacs.d/config/elisp.el")
	     '("hlm" . "~/.emacs.d/config/helm.el")
	     '("swp" . "~/.emacs.d/config/swap.el")
	     '("wk"  . "~/.emacs.d/config/whichkey.el")))
      
      (all-config-macros
       (list
	(list "r"
	      (defmacro make-reload (file)
		`(defun ,(symbol-append 'config-reload-
					(intern (file-name-base file))) ()
		   ,(format "Reload %s" file)
		   (interactive)
		   (load ,file))))
	(list "v"
	      (defmacro make-visit (file)
		`(defun ,(symbol-append 'config-visit-
					(intern (file-name-base file))) ()
		   ,(format "Visit %s" file)
		   (interactive)
		   (find-file ,file)))))))
  
  (loop for key-macro-pair in all-config-macros do
	(let ((macro-key (car key-macro-pair))
	      (macro     (car (cdr key-macro-pair))))
	  (loop for key-file-pair in all-config-files do
		(let* ((file-key (car key-file-pair))
		       (file     (cdr key-file-pair))
		       (keybind  (format "\C-c%s%s" macro-key file-key))
		       (func     (eval (list macro file))))
		  (global-set-key keybind func)))))

  (setq most-config-files (cddr all-config-files))
  (defun config-reload-all ()
    "Reload all files specified in config/config.el"
    (interactive)
    (loop for file in (mapcar #'cdr most-config-files) do
	  (if (file-exists-p file)
	      (load file)
	      (find-file file)))))

(config-reload-all)

