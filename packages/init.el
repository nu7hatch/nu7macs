(defvar package-user-dir
  (expand-file-name (convert-standard-filename nu7macs-packages-path)))

(load-file (concat nu7macs-packages-path "/package.el"))
(package-initialize)

;; Color themes support for fucking mac...
(add-to-list 'load-path (concat nu7macs-packages-path "/color-theme-6.6.0"))
(require 'color-theme-autoloads)
