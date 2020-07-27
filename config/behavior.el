(setq-default frame-title-format '("%F"))
(tool-bar-mode -1)

(show-paren-mode)

(setq electric-pair-pairs '((?\{ . ?\})
			    (?\( . ?\))
			    (?\[ . ?\])
			    (?\" . ?\")
			    (?\¡ . ?\!)
			    (?\¿ . ?\?)
			    (?\` . ?\`)))

(electric-pair-mode t)

(cua-mode t)

(setq scroll-conservatively 100)

(defalias 'yes-or-no-p 'y-or-n-p)
