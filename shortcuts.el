;; Resizing windows with no fuss
(global-set-key (kbd "C-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-s-<down>") 'shrink-window)
(global-set-key (kbd "C-s-<up>") 'enlarge-window)

;; Text manipulation
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-h") 'backward-delete-char)
(global-set-key (kbd "C-c d") 'duplicate-current-line)
(global-set-key (kbd "C-c b") 'backward-kill-word)
(global-set-key (kbd "C-c f") 'kill-word)
(global-set-key (kbd "C-c k") 'kill-whole-line)

;; Terminal
(global-set-key (kbd "C-x t t") 'multi-term-dedicated-toggle)
(global-set-key (kbd "C-x t n") 'multi-term-next)
(global-set-key (kbd "C-x t s") 'multi-term-prev)
(global-set-key (kbd "C-x t o") 'multi-term)

;; Redo/Undo
(global-set-key (kbd "C-?") 'redo)
(global-set-key (kbd "C-/") 'undo)

;; Refreshing buffers
(global-set-key (kbd "C-S-r") 'refresh-file)

;; Magit
(global-set-key (kbd "C-S-g") 'magit-status)

;; Dired shortcuts
(global-set-key (kbd "C-x C-d") 'dired)
(add-hook 'dired-mode-hook
	  '(lambda()
	     (define-key dired-mode-map (kbd "<return>") 'dired-find-alternate-file)
	     (define-key dired-mode-map (kbd "<delete>") 'dired-do-delete)
	     (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")));
	     (define-key dired-mode-map (kbd "s") 'find-in-workspace)))

