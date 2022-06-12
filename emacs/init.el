(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)
(setq default-frame-alist '((font . "JetBrains Mono 12")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(global-display-line-numbers-mode)
(global-auto-revert-mode 1)
(transient-mark-mode 0)

(setq-default cursor-type 'box) 

(add-hook 'dired-mode-hook (lambda () (text-scale-increase 2)))
(add-to-list 'auto-mode-alist '("\\.cs\\'" . c-mode))
(add-to-list 'auto-mode-alist '("\\.shader\\'" . c-mode))
(setq ido-ignore-files '("\\.meta\\'"))

(setq-default indent-tabs-mode nil)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq c-default-style "bsd")
(setq-default tab-width 4)
(setq c-basic-offset 4)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'multiple-cursors)
(require 'cc-mode)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "S-<delete>") 'kill-whole-line)
(global-set-key (kbd "C-z") #'undo-only)
(global-set-key (kbd "C-g") 'goto-line)
(global-set-key (kbd "M-<down>") (lambda () (interactive) (scroll-up 10)))
(global-set-key (kbd "M-<up>") (lambda () (interactive) (scroll-down 10)))
(global-set-key (kbd "M-p") 'other-window)
(global-set-key (kbd "M-b") 'switch-to-buffer)
(global-set-key (kbd "M-o") 'ff-find-other-file)
(global-set-key (kbd "M-f") 'ido-find-file)
(global-set-key (kbd "M-k") 'kill-buffer)
(global-set-key [mouse-2] nil)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "M-m") 'compile)
(global-set-key (kbd "M-c") 'comment-region)
(global-set-key (kbd "C-M-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-<up>") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-s") 'mark-sexp)
(global-set-key (kbd "M-RET") 'open-line)
(global-set-key (kbd "C-q") 'exchange-point-and-mark)
(global-set-key (kbd "M-n") 'next-error)
(global-set-key (kbd "C-n") 'previous-error)
(global-set-key (kbd "C-d") 'delete-region)
(define-key c-mode-base-map (kbd "C-d") 'delete-region)

(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)

(global-auto-complete-mode t)

(set-background-color "gray10")
(set-face-background 'mode-line  "blue")
(set-cursor-color "#00ff00")
(set-foreground-color "burlywood3")
(set-face-background 'hl-line "navy")
(set-face-attribute 'region nil :background "SlateGray" :foreground "black")
(set-face-background 'font-lock-keyword-face  "#1E1E1E")
(set-face-foreground 'font-lock-keyword-face  "burlywood3")
(set-face-foreground 'font-lock-string-face  "SeaGreen")
(set-face-foreground 'font-lock-type-face  "burlywood3")
(set-face-foreground 'font-lock-variable-name-face  "burlywood3")
(set-face-foreground 'font-lock-preprocessor-face  "#b87c42")
(set-face-foreground 'font-lock-function-name-face  "burlywood3")
