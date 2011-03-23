;; dired-find.el - helpers for searching files in dired mode.

(defun find-in-workspace (pattern)
  "Run `find-name-dired' in `workspace-dir' for the given PATTERN."
  (interactive "sFind file: ")
  (find-name-dired (dired-current-directory) pattern))
