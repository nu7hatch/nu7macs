;; refresh.el - Buffer refreshing helpers

(defun refresh-file ()
  (interactive)
  (revert-buffer t t t))