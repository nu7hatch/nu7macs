;; fullscreen.el - toggle fullscreen helpers.

(defun toggle-fullscreen ()
  (interactive)
  (if (eq 'system-type "darwin")
      (progn
       (setq maxframe-maximized-p (not maxframe-maximized-p))
       (cond (maxframe-maximized-p (maximize-frame))
	     (t (restore-frame))))
    (progn
     (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
     (x-send-client-message nil 0 nil "_NET_WM_STATE" 32 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))))
