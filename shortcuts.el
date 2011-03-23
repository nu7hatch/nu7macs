;; Resizing windows with no fuss
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)

;; Text moving
(global-set-key (kbd "C-S-<up>") 'move-text-up)
(global-set-key (kbd "C-S-<down>") 'move-text-down)

;; Terminal
(global-set-key (kbd "C-x t t") 'multi-term-dedicated-toggle)
(global-set-key (kbd "C-x t n") 'multi-term-next)
(global-set-key (kbd "C-x t s") 'multi-term-prev)
(global-set-key (kbd "C-x t o") 'multi-term)

;; Redo/Undo
(global-set-key (kbd "C-R") 'redo)
(global-set-key (kbd "C-u") 'undo)

;; Refreshing
(global-set-key (kbd "<f5>") 'refresh-file)

;; Writing
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key global-map (kbd "C-h") 'backward-delete-char)

;; Dired shortcuts
(add-hook 'dired-mode-hook
	  '(lambda()
	     (define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file)
	     (define-key dired-mode-map (kbd "<delete>") 'dired-do-delete)
	     (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")));
	     (define-key dired-mode-map (kbd "s") 'find-in-workspace)))

