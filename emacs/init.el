(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)
(setq default-frame-alist '((font . "Monospace 13")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(global-display-line-numbers-mode)

(setq-default cursor-type 'box) 

(add-hook 'dired-mode-hook (lambda () (text-scale-increase 2)))

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq-default indent-tabs-mode nil)
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

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "S-<delete>") 'kill-whole-line)
(global-set-key (kbd "C-z") #'undo-only)
(global-set-key (kbd "C-g") 'goto-line)
(global-set-key (kbd "M-<down>") (lambda () (interactive) (scroll-up 10)))
(global-set-key (kbd "M-<up>") (lambda () (interactive) (scroll-down 10)))
(global-set-key (kbd "M-p") 'other-window)
(global-set-key (kbd "M-b") 'buffer-menu)
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

(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)

(global-auto-complete-mode t)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" "59d9e7ed3da7f7f6aec79396dce8e3b137c8fb73f6343d1b5d6ddd264e20d2bc" default))
 '(package-selected-packages
   '(gruber-darker-theme use-package smex multiple-cursors clang-format auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-cursor-color "#00ff00")
