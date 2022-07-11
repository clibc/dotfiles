(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)

(setq default-frame-alist '((font . "Liberation Mono 13")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(setq-default cursor-type 'box) 
(transient-mark-mode 0)

(setq ido-ignore-files '("\\.meta\\'"))

(setq-default indent-tabs-mode nil)
(setq compile-command ".\\build.bat")

(setq auto-save-default nil)
(setq make-backup-files nil)

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
(global-set-key (kbd "S-<tab>") 'dabbrev-expand)
(global-set-key (kbd "C-<tab>") 'indent-region)

(defun find-project-directory-recursive ()
  "Recursively search for a makefile."
  (interactive)
  (if (file-exists-p "build.bat") t
    (cd "../")
    (find-project-directory-recursive)))

(defun shigi-compile ()
  (interactive)
  (find-project-directory-recursive)
  (compile ".\\build.bat")
  )

(global-set-key (kbd "M-m") 'shigi-compile)

(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)

(setq TextColor '"tan")
(setq BGColor '"grey12")
(setq StringColor '"LightBlue")

(set-background-color BGColor)
(set-face-background 'mode-line  "tan2")
(set-cursor-color "#00ff00")
(set-foreground-color TextColor)
(set-face-background 'hl-line "DarkSlateBlue")
(set-face-attribute 'region nil :background "SlateGray" :foreground "black")
(set-face-background 'font-lock-keyword-face  BGColor)
(set-face-foreground 'font-lock-keyword-face "LightBlue")
(set-face-foreground 'font-lock-string-face  StringColor)
(set-face-foreground 'font-lock-type-face  TextColor)
(set-face-foreground 'font-lock-variable-name-face  TextColor)
(set-face-foreground 'font-lock-preprocessor-face  TextColor)
(set-face-foreground 'font-lock-function-name-face  TextColor)
(set-face-foreground 'line-number  TextColor)
(set-face-foreground 'font-lock-comment-face  "Green")
(set-face-foreground 'vertical-border TextColor)
(set-face-background 'fringe  nil)
