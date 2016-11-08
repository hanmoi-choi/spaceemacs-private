;;; Turn on syntax highlighting for all buffers:
(global-font-lock-mode t)
(setq read-file-name-completion-ignore-case t)

(setq-default fill-column 100)
(setq-default default-tab-width 2)
(setq-default indent-tabs-mode nil)

;; add no new lines when "arrow-down key" at the end of a buffer
(setq next-line-add-newlines nil)

;; remove trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; set text-mode as the default major mode, instead of fundamental-mode
;; The first of the two lines in parentheses tells Emacs to turn on Text mode
;; when you find a file, unless that file should go into some other mode, such
;; as C mode.
(setq-default major-mode 'org-mode)

;; delete the selection with a keypress
(delete-selection-mode t)

;; 50 files ought to be enough.
(setq recentf-max-saved-items 50)

(add-hook 'mouse-leave-buffer-hook 'stop-using-minibuffer)

(setq tab-width 2)
(setq-default js2-basic-offset 4)
(setq-default elisp-basic-offset 2)
(setq-default indent-tabs-mode nil)

(add-hook 'prog-mode-hook 'font-lock-comment-annotations)
(defun private/save-all ()
  (interactive)
  (save-some-buffers t))
(add-hook 'evil-insert-state-exit-hook 'private/save-all)

;;Dired
;; I want this for dired-jump
(setq x-select-enable-clipboard t)
