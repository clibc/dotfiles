(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)
(setq default-frame-alist '((font . "JetBrains Mono Regular 14")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(global-display-line-numbers-mode)
(global-auto-revert-mode 1)

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
(global-set-key (kbd "M-RET") 'open-line)

(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)

(global-auto-complete-mode t)
 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-enabled-themes '(doom-dark+))
 '(custom-safe-themes
   '("eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" "333958c446e920f5c350c4b4016908c130c3b46d590af91e1e7e2a0611f1e8c5" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "a6e620c9decbea9cac46ea47541b31b3e20804a4646ca6da4cce105ee03e8d0e" "0d01e1e300fcafa34ba35d5cf0a21b3b23bc4053d388e352ae6a901994597ab1" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "353ffc8e6b53a91ac87b7e86bebc6796877a0b76ddfc15793e4d7880976132ae" "a0be7a38e2de974d1598cf247f607d5c1841dbcef1ccd97cded8bea95a7c7639" "9b54ba84f245a59af31f90bc78ed1240fca2f5a93f667ed54bbf6c6d71f664ac" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "cf922a7a5c514fad79c483048257c5d8f242b21987af0db813d3f0b138dfaf53" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "1d44ec8ec6ec6e6be32f2f73edf398620bb721afeed50f75df6b12ccff0fbb15" "c5ded9320a346146bbc2ead692f0c63be512747963257f18cc8518c5254b7bf5" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "846b3dc12d774794861d81d7d2dcdb9645f82423565bfb4dad01204fa322dbd5" "d6844d1e698d76ef048a53cefe713dbbe3af43a1362de81cdd3aefa3711eae0d" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "da53441eb1a2a6c50217ee685a850c259e9974a8fa60e899d393040b4b8cc922" "f7fed1aadf1967523c120c4c82ea48442a51ac65074ba544a5aefc5af490893b" "a7b20039f50e839626f8d6aa96df62afebb56a5bbd1192f557cb2efb5fcfb662" "835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "246a9596178bb806c5f41e5b571546bb6e0f4bd41a9da0df5dfbca7ec6e2250c" "850bb46cc41d8a28669f78b98db04a46053eca663db71a001b40288a9b36796c" "e6f3a4a582ffb5de0471c9b640a5f0212ccf258a987ba421ae2659f1eaa39b09" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "1704976a1797342a1b4ea7a75bdbb3be1569f4619134341bd5a4c1cfb16abad4" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "4699e3a86b1863bbc695236036158d175a81f0f3ea504e2b7c71f8f7025e19e3" "1278c5f263cdb064b5c86ab7aa0a76552082cf0189acf6df17269219ba496053" "1bddd01e6851f5c4336f7d16c56934513d41cc3d0233863760d1798e74809b4b" "6f4421bf31387397f6710b6f6381c448d1a71944d9e9da4e0057b3fe5d6f2fad" "4a5aa2ccb3fa837f322276c060ea8a3d10181fecbd1b74cb97df8e191b214313" "e19ac4ef0f028f503b1ccafa7c337021834ce0d1a2bca03fcebc1ef635776bea" "0466adb5554ea3055d0353d363832446cd8be7b799c39839f387abb631ea0995" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "84b14a0a41bb2728568d40c545280dbe7d6891221e7fbe7c2b1c54a3f5959289" "e8df30cd7fb42e56a4efc585540a2e63b0c6eeb9f4dc053373e05d774332fc13" "76ed126dd3c3b653601ec8447f28d8e71a59be07d010cd96c55794c3008df4d7" "b5803dfb0e4b6b71f309606587dd88651efe0972a5be16ece6a958b197caeed8" "d47f868fd34613bd1fc11721fe055f26fd163426a299d45ce69bef1f109e1e71" "266ecb1511fa3513ed7992e6cd461756a895dcc5fef2d378f165fed1c894a78c" "23c806e34594a583ea5bbf5adf9a964afe4f28b4467d28777bcba0d35aa0872e" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" "8d7b028e7b7843ae00498f68fad28f3c6258eda0650fe7e17bfb017d51d0e2a2" "6c531d6c3dbc344045af7829a3a20a09929e6c41d7a7278963f7d3215139f6a7" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "a82ab9f1308b4e10684815b08c9cac6b07d5ccb12491f44a942d845b406b0296" "3d47380bf5aa650e7b8e049e7ae54cdada54d0637e7bac39e4cc6afb44e8463b" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "cbdf8c2e1b2b5c15b34ddb5063f1b21514c7169ff20e081d39cf57ffee89bc1e" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "028c226411a386abc7f7a0fba1a2ebfae5fe69e2a816f54898df41a6a3412bb5" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "da186cce19b5aed3f6a2316845583dbee76aea9255ea0da857d1c058ff003546" "a9a67b318b7417adbedaab02f05fa679973e9718d9d26075c6235b1f0db703c8" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "c560237b7505f67a271def31c706151afd7aa6eba9f69af77ec05bde5408dbcd" "d2e44214a7dc0bd5b298413ed6c3ba9719f1d96794d9de3bdf7a9808902fd098" "ad12f67733724e4edada5eaf34fb72441afa36c6604adf533f5db4d759517c5e" "cae6181b05f4624308a41ec209db44bc3e00e8ee74cad3f1eebf5b13cc48d86a" "2c9ffbd8f1691a00862b6356f6aef26b172a0b6171a2b862ff604539999a5690" "4083a1c6d3e41ac37720b27d2490e6b8bd5cf0a9fb2faeeb9e9a8546b0ca82e0" "5c8d7dbe92243c898789f4b8930948813a6ddad438b2b14e92a83c5b59fc8abf" "5966aa78c0d94460f61c073ef6b6cf66e0439ac18fb62d6bd42579441706f353" "91ec0786d2dcfb97fac00d863f7b427817c3ca27eae863da21b3aecf2928bd25" "c64ebaf7179fa504655d0afc63a00a1b83fd05c374861d49f8b1d58171e57e56" "8f9a56026088bce6d6b0479ad95c474fa1bda1355b780089b34ce8bc8e878e6b" "f9db4b9b56913534f58db175e4a12cb2c67362a8b7a4cfb648132e97bf6d9e6e" "dc4f39313a1e1255c980b835fca0869e03422f03f0348287833e383d7095f81a" "7e190603485aa7e6364d9aba9fdf6f0f43158ef956f2f8154d13ad8ca081be4f" "dbef65f713053f9820ade36c5e399c9d9874bc03877325fb7efd6cc671f55ed6" "5e8c5f12deeba8baccae1a5bf8f3fa8494d3b57e63cccab6bf4d6342dc5f7cfe" "18a148cc5bb079cbdb90f75e156a57514a8c4d66911b99f82b2eeb8c2d0873ba" "7ce2ff7338bad2d48aca13c6831bb441e9956109e964b2d0063f5a794381b4a8" "3ab1b1ece35b665b5c158bc9d609927aafa469f473f2f940ea2a8e578226fc79" "4834b88959529d919305d95af227e49035176ed4f299dfe9ebc5a3f933906844" "95cccf6e384b3e9b256208e787a2a461d5c45921a6dde1ed777a6f66e830946d" "acd9609d516ef0b3edec6ebbdbf6b48d7e6fdb1c55f7093251f9880b0021a442" "df9b84be73705f88aad57e7855e657ec29740e7eecca8c7afe32df5a7fcff260" "3daff4b6ea0e03f2bb64ae77c93a615ed5d9a6fe8c2bf60bd4284ea754893b63" "301df46a7c1347bdecc97f662c53f50d2073081364eb30ba67cd1ed1df150439" "dd8860775da021e0e720290dc4dab15c3184b9b3cd3125bc96525b249bc7898e" "5086b62a47106fa75ae44c4fb9cda57660ddbaebe8709a610f376f17c27c53ed" "3a495cce309946a5851ee5763c01c2bef43feb9d6390faffec45a11f9fed2e4f" "2fb820dfc1506da6dbf73cb2ce8f2f955e7ceda80c3fc811196415acd2fa863a" "ee98699fccbfda4f8cbb1c8e48db6d17d0ec71309e8d22905bf13041b9290561" "5f5099e82d167894dacc9ca55297320aac345cb1d2b3f3d4b4e3060add385eaf" "7f8ab8e8e36a55c3f77e7bc246f923c36b334f372ea3d8f5e715096fb212b2c4" "d111fa4784324b30fe511ec6a9985b1d470beb210013c842e934d872810b06c4" "23683751b4a16bb76af33f85499bde48f337c8a8af9df0fd405733d022713ca5" "b3d250bdf09f1e5482039a437627a2cb9a36f07e9d2ca8d75578383d1f7f9abf" "3f6e22816a3ffd19880a9b8e99edb947dfbe4e18c23a6c0908e569c1b8c4f99c" "8179e16215de40b13b24811d0fc8a47d1e3c438664d75ef0161b221ec43b61b6" "984d3fb3a7cd26d624767169f6a5b5685f0a3190e1c103e4075df2c3480c756f" "0e5a32a22712dc36b4a0c047f37ac583b2fc2db12a1f3a8fee8e1c8a587cbbd9" "e218fef8feb2ef35b7b71054fbf69cdd78e74158b81e708aa0e133b07d24244c" "68c22cdbe4fe456d6ae365b5f4820e9c0624fa2a9f53286931f14cc98c9fb84c" "bc85ca436e316c634a1529f0e32781323cfb3ba27869a8207fdaad628bafef16" "fe4f5aa89789105c3b0258f44015386c1b57044c11314517765a63e18ce7387c" "29e4152f82212957f0c59d4b97d3b7f0faee7eb23ec42b7fb681cb0584135396" "07b4cb4f4283c7735a047d9bdba899c7577c547dbcae1b223ed2fe1750db1e15" "5f824cddac6d892099a91c3f612fcf1b09bb6c322923d779216ab2094375c5ee" "59d9e7ed3da7f7f6aec79396dce8e3b137c8fb73f6343d1b5d6ddd264e20d2bc" default))
 '(exwm-floating-border-color "#252526")
 '(fci-rule-color "#383838")
 '(frame-brackground-mode 'dark)
 '(highlight-tail-colors ((("#232a22" "#232a21") . 0) (("#283134" "#243034") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#237AD3"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#579C4C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#777778"))
 '(linum-format " %5i ")
 '(objed-cursor-color "#D16969")
 '(package-selected-packages
   '(flatland-theme doom-themes spacegray-theme omnisharp csharp-mode magit gruber-darker-theme use-package smex multiple-cursors clang-format auto-complete))
 '(pdf-view-midnight-colors (cons "#d4d4d4" "#1e1e1e"))
 '(rustic-ansi-faces
   ["#1e1e1e" "#D16969" "#579C4C" "#D7BA7D" "#339CDB" "#C586C0" "#85DDFF" "#d4d4d4"])
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-cursor-color "#00ff00")
