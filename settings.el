(if (window-system)
    (progn
      (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
      (if (fboundp 'tabbar-mode) (tabbar-mode -1))
      (toggle-fullscreen)
      (color-theme-zenburn))
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))

(setq history-length 500)
(setq history-delete-duplicates t)
(setq backup-directory-alist (quote ((.* . "/tmp/emacs~/"))))
(setq show-parent-delay 0)
(setq ac-auto-start nil)
(setq make-backup-files nil)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

(custom-set-variables
  '(global-linum-mode t)
  '(column-number-mode t)
  '(font-use-system-font t)
  '(inhibit-startup-screen t)
  '(scroll-bar-mode (quote right))
  '(truncate-lines t)
  '(delete-selection-mode t))

(show-paren-mode 1)
(autopair-global-mode)
(global-linum-mode t)

(add-hook 'dired-load-hook
	  (lambda () (load "dired-x")))

(add-hook 'dired-mode-hook
	  (function (lambda ()
		      (setq dired-omit-files-p t)
		      (setq dired-omit-files ".*[.].pyc"))))

(setq linum-disabled-modes-list '(eshell-mode wl-summary-mode dired-mode term-mode compilation-mode org-mode text-mode))
(setq linum-format
      (lambda (line)
	(propertize (format
		     (let ((w (length (number-to-string
				       (count-lines (point-min) (point-max))))))
		       (concat " %" (number-to-string w)
			       (if (window-system) "d" "d ")))
		     line)
		    'face 'linum)))

