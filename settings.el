(setq history-length 500)
(setq history-delete-duplicates t)
(setq backup-directory-alist (quote ((.* . "/tmp/emacs~/"))))
(setq confirm-kill-emacs 'y-or-n-p)
(setq show-parent-delay 0)
(setq ac-auto-start nil)
(setq make-backup-files nil)

(setq linum-format "%d ")
(setq linum-disabled-modes-list '(eshell-mode wl-summary-mode dired-mode term-mode compilation-mode org-mode text-mode))

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

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'tabbar-mode) (tabbar-mode -1))
(if (and (fboundp 'menu-bar-mode) (not window-system)) (menu-bar-mode -1))

(if (window-system) (toggle-fullscreen))
