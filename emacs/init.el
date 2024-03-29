(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)

(global-auto-revert-mode)
(set-face-attribute 'default nil :font "Liberation Mono" :weight 'light :height 130)
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(setq-default cursor-type 'box) 
(transient-mark-mode 0)
(set-default 'truncate-lines nil)

(setq ido-ignore-files '("\\.meta\\'"))

(setq-default indent-tabs-mode nil)
(setq compile-command ".\\build.bat")

(setq auto-save-default nil)
(setq make-backup-files nil)

(setq c-default-style "bsd")
(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq dabbrev-case-replace nil)

(load "C:/Users/clibc/AppData/Roaming/.emacs.d/jai-mode.el")

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
(global-set-key (kbd "M-;") 'comment-region)
(global-set-key (kbd "M-'") 'uncomment-region)
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
;;(require 'swiper)
;;(global-set-key (kbd "C-s") 'swiper-all)

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

(defun shigi-find ()
  (interactive)
  (compile (message "findref.bat %s" (read-string "Search for: ")))
)

(global-set-key (kbd "M-m") 'shigi-compile)
(global-set-key (kbd "M-/") 'shigi-find)
(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )
(global-set-key (kbd "M-d") 'duplicate-line)

;; Theme start
(setq TextColor '"#B0B76B")
(setq BGColor '"#1F2227")
(setq StringColor '"#D69D85")
(setq KeywordColor '"#569CD6")
(set-background-color BGColor)
(set-face-background 'mode-line  "tan2")
(set-cursor-color "#00ff00")
(set-foreground-color TextColor)
(set-face-background 'hl-line "black")
(set-face-attribute 'region nil :background "SlateGray" :foreground "black")
(set-face-background 'font-lock-keyword-face  BGColor)
(set-face-background 'font-lock-keyword-face  BGColor)
(set-face-foreground 'font-lock-keyword-face "#D8A0DF")
(set-face-foreground 'font-lock-string-face  StringColor)
(set-face-foreground 'font-lock-type-face  "#FFD700")
(set-face-foreground 'font-lock-variable-name-face  TextColor)
(set-face-foreground 'font-lock-preprocessor-face  "#9B9B9B")
(set-face-foreground 'font-lock-function-name-face  "#FF8000")
(set-face-foreground 'font-lock-constant-face  "#BD63C5")
(set-face-foreground 'line-number  TextColor)
(set-face-foreground 'vertical-border TextColor)
(set-face-background 'fringe  nil)
(set-face-foreground 'font-lock-comment-face  "#57A64A")
(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-type-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
(defvar function-call-keywords
  '(("\\<\\([a-zA-Z0-9_]*\\) *("1 font-lock-function-name-face)))
(defvar override-keywords
  '(("\\<\\(if\\|for\\|while\\|switch\\|return\\)\\>" 1 'font-lock-keyword-face)))
(font-lock-add-keywords 'c++-mode function-call-keywords)
(font-lock-add-keywords 'c-mode function-call-keywords)
(font-lock-add-keywords 'csharp-mode function-call-keywords)
(font-lock-add-keywords 'c++-mode override-keywords)
(font-lock-add-keywords 'c-mode override-keywords)
(font-lock-add-keywords 'csharp-mode override-keywords)
;;Theme end
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(use-package swiper spacegray-theme smex popup multiple-cursors magit gruber-darker-theme flycheck flatland-theme f elfeed doom-themes csharp-mode color-theme-sanityinc-tomorrow clang-format autopair)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'compilation-mode-hook
          '(lambda()
             ;;(setq compilation-auto-jump-to-first-error t)
             (setq compilation-scroll-output t)
             (define-key compilation-mode-map (kbd "n") 'compilation-next-error)
             (define-key compilation-mode-map (kbd "p") 'compilation-previous-error)))

;; MSBuild output settings
;; VS 2019
;; C:\...\my.cpp(26,21): error C2544: ... [c:\...\.vcxproj]
(add-to-list
 'compilation-error-regexp-alist
  (list (concat
        "^"
        "\\([^(]+\\)"                                ; 1
        "(\\([0-9]+\\)\\(?:,\\([0-9]+\\)\\)?) ?: "   ; 2,(3)
        "\\(\\(?:error\\|\\(warning\\)\\) [^ :]+\\)" ; 4,(5)
        )
       1                          ;FILE
       2                          ;LINE
       3                          ;COLUMN
       '(5)                       ;ERROR is warning if 5 matched, else error.
       nil                        ;HYPERLINK
       '(4 font-lock-comment-face)
       ) )


;; Always put compilation window on side. Split vertically
(setq split-height-threshold 120000
      split-width-threshold 1)
