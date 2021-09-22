(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)
(setq default-frame-alist '((font . "Cascadia Mono 14")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(global-display-line-numbers-mode)

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
 '(custom-enabled-themes '(esh-theme))
 '(custom-safe-themes
   '("5c8d7dbe92243c898789f4b8930948813a6ddad438b2b14e92a83c5b59fc8abf" "5966aa78c0d94460f61c073ef6b6cf66e0439ac18fb62d6bd42579441706f353" "91ec0786d2dcfb97fac00d863f7b427817c3ca27eae863da21b3aecf2928bd25" "c64ebaf7179fa504655d0afc63a00a1b83fd05c374861d49f8b1d58171e57e56" "8f9a56026088bce6d6b0479ad95c474fa1bda1355b780089b34ce8bc8e878e6b" "f9db4b9b56913534f58db175e4a12cb2c67362a8b7a4cfb648132e97bf6d9e6e" "dc4f39313a1e1255c980b835fca0869e03422f03f0348287833e383d7095f81a" "7e190603485aa7e6364d9aba9fdf6f0f43158ef956f2f8154d13ad8ca081be4f" "dbef65f713053f9820ade36c5e399c9d9874bc03877325fb7efd6cc671f55ed6" "5e8c5f12deeba8baccae1a5bf8f3fa8494d3b57e63cccab6bf4d6342dc5f7cfe" "18a148cc5bb079cbdb90f75e156a57514a8c4d66911b99f82b2eeb8c2d0873ba" "7ce2ff7338bad2d48aca13c6831bb441e9956109e964b2d0063f5a794381b4a8" "3ab1b1ece35b665b5c158bc9d609927aafa469f473f2f940ea2a8e578226fc79" "4834b88959529d919305d95af227e49035176ed4f299dfe9ebc5a3f933906844" "95cccf6e384b3e9b256208e787a2a461d5c45921a6dde1ed777a6f66e830946d" "acd9609d516ef0b3edec6ebbdbf6b48d7e6fdb1c55f7093251f9880b0021a442" "df9b84be73705f88aad57e7855e657ec29740e7eecca8c7afe32df5a7fcff260" "3daff4b6ea0e03f2bb64ae77c93a615ed5d9a6fe8c2bf60bd4284ea754893b63" "301df46a7c1347bdecc97f662c53f50d2073081364eb30ba67cd1ed1df150439" "dd8860775da021e0e720290dc4dab15c3184b9b3cd3125bc96525b249bc7898e" "5086b62a47106fa75ae44c4fb9cda57660ddbaebe8709a610f376f17c27c53ed" "3a495cce309946a5851ee5763c01c2bef43feb9d6390faffec45a11f9fed2e4f" "2fb820dfc1506da6dbf73cb2ce8f2f955e7ceda80c3fc811196415acd2fa863a" "ee98699fccbfda4f8cbb1c8e48db6d17d0ec71309e8d22905bf13041b9290561" "5f5099e82d167894dacc9ca55297320aac345cb1d2b3f3d4b4e3060add385eaf" "7f8ab8e8e36a55c3f77e7bc246f923c36b334f372ea3d8f5e715096fb212b2c4" "d111fa4784324b30fe511ec6a9985b1d470beb210013c842e934d872810b06c4" "23683751b4a16bb76af33f85499bde48f337c8a8af9df0fd405733d022713ca5" "b3d250bdf09f1e5482039a437627a2cb9a36f07e9d2ca8d75578383d1f7f9abf" "3f6e22816a3ffd19880a9b8e99edb947dfbe4e18c23a6c0908e569c1b8c4f99c" "8179e16215de40b13b24811d0fc8a47d1e3c438664d75ef0161b221ec43b61b6" "984d3fb3a7cd26d624767169f6a5b5685f0a3190e1c103e4075df2c3480c756f" "0e5a32a22712dc36b4a0c047f37ac583b2fc2db12a1f3a8fee8e1c8a587cbbd9" "e218fef8feb2ef35b7b71054fbf69cdd78e74158b81e708aa0e133b07d24244c" "68c22cdbe4fe456d6ae365b5f4820e9c0624fa2a9f53286931f14cc98c9fb84c" "bc85ca436e316c634a1529f0e32781323cfb3ba27869a8207fdaad628bafef16" "fe4f5aa89789105c3b0258f44015386c1b57044c11314517765a63e18ce7387c" "29e4152f82212957f0c59d4b97d3b7f0faee7eb23ec42b7fb681cb0584135396" "07b4cb4f4283c7735a047d9bdba899c7577c547dbcae1b223ed2fe1750db1e15" "5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" "59d9e7ed3da7f7f6aec79396dce8e3b137c8fb73f6343d1b5d6ddd264e20d2bc" default))
 '(frame-brackground-mode 'dark)
 '(package-selected-packages
   '(magit gruber-darker-theme use-package smex multiple-cursors clang-format auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-cursor-color "#00ff00")
