;; Package --- Summary
;;; Commentary:
;; This is all kinds of necessary
;;; Code:
(require 'package)
(setq package-enable-at-startup nil)

;;; remove SC if you are not using sunrise commander and org if you like outdated packages
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq gc-cons-threshold 100000000)

(add-hook 'emacs-startup-hook 'my/set-gc-threshold)
(defun my/set-gc-threshold ()
  "Reset `gc-cons-threshold' to its default value."
  (setq gc-cons-threshold 800000))
;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-color-icons nil)
 '(all-the-icons-ibuffer-color-icon nil)
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes '(darker))
 '(custom-safe-themes
   '("03feffeb92cc7037883e84a36ced1b8343a0e293f77ad473efb06bb54d66a345" "23391967481f09965d6e02eea9378a484c384e92e5b7380e5ef87e80379ee9a4" "af4373f77d77e8b1e8bf337b7bb98e06c1a7870041db5b3c8b326bc52cb832bf" "7ec7ca6e3f8cf7b627eb79af638ff47f45caed2ffa2053af0e28b9c5e4fc1a26" "cee5db7f1bf3d7d95020cbc4fa8c061d763a868cbf0afd43c83df1297dd20d90" "e303e3083c0e56483dde6be81c1dcf982b53aedfcc5dcb5b729aa4df5c4b2d8f" "0262db86654c95f89a26912b697a26e3eb0770ea1baf449f64d1c86b21afe50f" "f46ed5a9efe793265e0fdb4a5c33ebd59fe16da648eb5ee6bb115c539981c39a" "dfa309ca082a3fae0855fec6f1c77c8470a8b44bff643067345288eeb89eff0a" "e7df6ec27f8777ab90a0ecd86445077023d8f33bd38277e86e559ec94c89d70f" "367c04fdf93fce7c2de6f0f103f3afff5d54dce494e0f304c138f481bb20633c" "ca2815bb96278de966643932f9d67befc70df99ac21324e102fe4e9c5114d701" "9e067dc3fad503c1cb8bb07afb2e41f47321fbfe6567c85f284e4c7c636f3440" "8d75f01bc549c87053206ac23f09fcdd5f01468eaa2bfdfaabf3651fe50811a9" "2f807db91aa295972bdff9ffe88152f55f890aa78f6f0e075486655d28185a30" "e4238fbeac3437ca4353961e95975e0134349b69e4c2e3e92244a8e38a905054" "5be655d040620989d8b9d868a4ac49634266ed2adb54090558609e45a6e9834a" "6ef8efe1bb3ca227e7fb17cabdb7228ed2bdad6d7b0a29bac68e574c5ad5e2f3" "b4795fb638cfb0fcab59aa466b837ceed73722a471f7257d9aac5f31c2cdc1e2" "b9cb7d9a5d22620d33f93a9f40f80bbe38b55919c9bc8a4295f9de5a06fc9da6" "cea6d26499ffa938584b6eb203a61f8d840796371d3ed31dd1c07bd2682ee0c7" "a18d8e969618814c45706df10c7f61b78678d9280b5b7cb463b834a86584902e" "9707c6c98f563dd75777444bc8fc6120e0469ae9962e72678b90b5aadf04d934" "6f89bdfc8b26e2815351629ed8822748c7b1ffc2a2087d46f70af963ec68a500" "8e71296183c846941832fc35f545df01586d75169fc8175651cbdc9d9d84e01c" "8a4eeff636975030f1f06d826fd3b14befe21e52c745e9b40cc13493e120caa2" "3743aa8b25703132194cb054efd3824996bfa7bd8c6ec772efa28ed1df5cee83" "58337a8aec3800a866f40b7142a18c22dd662a0eda7afcde380fcede2590c124" "946f52561edb2f94fb52e30ed4a36b760d1399b12f7958e0342e3f03fb3c497e" "b3fd337286d312bad303e247d237c53c4210f6c8a3d22ed06255cf130ac57f21" "d4070d09aa61b7c4bbdb2151c1d2486ed30adcb59d99acc15126a5da2183f855" "c8e369173e5543a3494be25ecee9780cf2866e04c3916e97d02f1f4e895e0a79" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" default))
 '(describe-char-unidata-list
   '(name old-name general-category canonical-combining-class bidi-class decomposition decimal-digit-value digit-value numeric-value mirrored iso-10646-comment uppercase lowercase titlecase))
 '(package-selected-packages
   '(org-wild-notifier epresent org-tree-slide wgrep lsp-mode company-tern esup scad-mode cargo arduino-mode prettier-js expand-region org-bullets ivy ox-md markdown-mode ripgrep all-the-icons-ibuffer projectile evil-collection all-the-icons shell-switcher go-complete company-go company racer evil-mc evil-surround org-evil evil emojify graphql-mode web-mode flymd json-mode flycheck-rust rust-mode flycheck magit org-link-minor-mode diminish sudo-edit hungry-delete switch-window rainbow-mode avy smex beacon which-key use-package))
 '(safe-local-variable-values
   '((eval when
		   (require 'rainbow-mode nil t)
		   (rainbow-mode 1)))))
(set-face-attribute 'default nil :family "Hack" :height 120)
(put 'upcase-region 'disabled nil)
(provide 'init)
;;; init.el ends here

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-negation-char-face ((t (:inherit font-lock-warning-face))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#9966FF"))))
 '(italic ((t (:underline nil :slant italic))))
 '(line-number-current-line ((t (:inherit default))))
 '(rust-question-mark-face ((t (:inherit font-lock-string-face :weight bold))))
 '(which-key-key-face ((t (:inherit font-lock-variable-name-face)))))
(put 'list-timers 'disabled nil)
