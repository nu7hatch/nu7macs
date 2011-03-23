(defvar package-user-dir
  (expand-file-name (convert-standard-filename nu7macs-packages-path)))

(load-file (concat nu7macs-packages-path "/package.el"))
(package-initialize)