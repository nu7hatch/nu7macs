;; Themes configuration
(setq nu7macs-themes-path (concat nu7macs-path "/themes"))
(load-file (concat nu7macs-themes-path "/init.el"))

;; Plugins
(setq nu7macs-plugins-path (concat nu7macs-path  "/plugins"))
(load-file (concat nu7macs-plugins-path "/init.el"))

;; Packages manager (ELPA)
(setq nu7macs-packages-path (concat nu7macs-path "/packages"))
(load-file (concat nu7macs-packages-path "/init.el"))

;; Lium (visual line number support)
(require 'linum)
(global-linum-mode t)
(custom-set-variables '(global-linum-mode t))

;; Dired ls-lisp
(require 'ls-lisp)
(setq ls-lisp-use-insert-directory-program nil) 
(setq ls-lisp-dirs-first t)
(setq ls-list-ignore-case t)