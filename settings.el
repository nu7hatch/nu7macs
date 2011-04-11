(if (window-system)
    (progn
      (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
      (if (fboundp 'tabbar-mode) (tabbar-mode -1))
      ;;(toggle-fullscreen)
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
(global-linum-mode t)
(autopair-global-mode)
(shell-command-completion-mode)
(dired-details-install)

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
(require 'ido)
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-ppoint nil
      ido-max-prospects 10)

;; MAGIT CONFIG
(setq magit-git-executable "/usr/local/bin/git")

;;PAREDIT CONFIG
(autoload 'paredit-mode "paredit"
    "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))


(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
;; Stop SLIME's REPL from grabbing DEL,
    ;; which is annoying when backspacing over a '('
    (defun override-slime-repl-bindings-with-paredit ()
    (define-key slime-repl-mode-map
        (read-kbd-macro paredit-backward-delete-key) nil))
        (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (paredit-mode t)
            (turn-on-eldoc-mode)
            (eldoc-add-command
             'paredit-backward-delete
             'paredit-close-round)
            (local-set-key (kbd "RET") 'electrify-return-if-match)
            (eldoc-add-command 'electrify-return-if-match)
	      (show-paren-mode t)))