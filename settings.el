;; Window
(if (window-system)
    (progn
      (if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
      (if (fboundp 'tabbar-mode) (tabbar-mode -1))
      (color-theme-zenburn))
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))

;; Cusom settings
(setq history-length 500)
(setq history-delete-duplicates t)
(setq backup-directory-alist (quote ((.* . "/tmp/emacs~/"))))
(setq show-parent-delay 0)
(setq ac-auto-start nil)
(setq make-backup-files nil)

;; Enabled disabled shortcuts
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; More cutstom settings
(custom-set-variables
  '(global-linum-mode t)
  '(column-number-mode t)
  '(font-use-system-font t)
  '(inhibit-startup-screen t)
  '(scroll-bar-mode (quote right))
  '(truncate-lines t)
  '(delete-selection-mode t))

;; Setup custom modes
(show-paren-mode 1)
(global-linum-mode t)
(autopair-global-mode)
(shell-command-completion-mode)
(dired-details-install)

;; Dired hooks / ommiting files
(require 'dired-x)

(setq dired-omit-files 
      (rx (or (seq bol (? ".") "#")           ;; emacs autosave files 
              (seq "~" eol)                   ;; backup-files 
              (seq bol "CVS" eol)             ;; CVS dirs
	      (seq bol "\.svn" eol)           ;; SVN dirs
	      (seq bol "\.git" eol)           ;; GIT dir
	      (seq bol ".eproject" eol)       ;; eproject files
	      (seq "\.py(c|o)" eol)           ;; python compiled files
	      (seq "\.rbc" eol)               ;; rubinius compiled files
	      (seq "\.s?(o|a)" eol)           ;; c/c++ shit
	      (seq "\.l(a|o)" eol)            ;; ...
	      (seq "\.in" eol)                ;; autotools files...
	      (seq "\.status" eol)            ;; ...
	      (seq bol "\.deps" eol)          ;; ...
	      (seq bol "\.libs" eol)          ;; ...
	      (seq bol "stamp-h1" eol)        ;; ...
	      (seq bol "libtool" eol)         ;; ...
	      (seq bol "autom4te.cache" eol)  ;; ...
	      (seq bol "aclocal.m4" eol)      ;; m4 files
	      (seq bol "build-m4" eol)        ;; ...
	      (seq bol "build-aux" eol)       ;; ...
	      (seq "\.log" eol)               ;; log files
              ))) 

(add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1)))

;; CoffeeScript hooks
(defun coffee-custom ()
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook '(lambda() (coffee-custom)))

;; Markdown mode settings
(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdt" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; Disable line numbers in given modes
(setq linum-disabled-modes-list
      '(eshell-mode
	wl-summary-mode
	dired-mode
	term-mode
	compilation-mode
	org-mode
	text-mode))
(setq linum-format
      (lambda (line)
	(propertize (format
		     (let ((w (length (number-to-string
				       (count-lines (point-min) (point-max))))))
		       (concat " %" (number-to-string w)
			       (if (window-system) "d" "d ")))
		     line)
		    'face 'linum)))

;; IDO mode settings
(if (and (boundp 'use-ido-mode) use-ido-mode)
    ((require 'ido)
     (ido-mode t)
     (setq ido-enable-prefix nil
	   ido-enable-flex-matching t
	   ido-create-new-buffer 'always
	   ido-use-filename-at-ppoint nil
	   ido-max-prospects 10)))

;; Autocompletion
(add-to-list 'load-path (concat nu7macs-path "/vendor/auto-complete"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat nu7macs-path "/vendor/auto-complete/dict"))
(ac-config-default)
(setq ac-auto-start 0)

;; Make the server start on load
(server-start)

;; Magit settings
(setq magit-git-executable "/usr/bin/git")

;; Better buffor search
(require 'bs)
(add-to-list 'bs-configurations
             '("channels" nil nil "^[^#]" nil nil))
(add-to-list 'bs-configurations
             '("targets" nil nil nil
               (lambda (buf)
                 (with-current-buffer buf
                   (not (erc-default-target)))) nil))

;; Productivity helpers like recent files
(require 'cl)
(require 'saveplace)
(require 'ffap)
(require 'uniquify)
(require 'ansi-color)

(require 'recentf)
(recentf-mode 1)

;; Windmove (switch buffers with shift + Arrow)
(when (fboundp 'windmove-default-keybindings)
      (windmove-default-keybindings))
