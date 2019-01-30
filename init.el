;; This is all kinds of necessary
(require 'package)
(setq package-enable-at-startup nil)

;;; remove SC if you are not using sunrise commander and org if you like outdated packages
(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")
			 ("SC"    . "http://joseito.republika.pl/sunrise-commander/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'abyss-theme)
 (package-refresh-contents)
 (package-install 'abyss-theme))

;;; This is the actual config file. It is omitted if it doesn't exist so emacs won't refuse to launch.
(when (file-readable-p "~/.emacs.d/config.org")
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (abyss)))
 '(custom-safe-themes
   (quote
    ("d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" default)))
 '(package-selected-packages
   (quote
    (web-mode php-mode magit auto-complete yasnippet company-irony company-c-headers diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex org-bullets beacon which-key use-package abyss-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#050000" :foreground "#bbe0f0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "DAMA" :family "Ubuntu Mono"))))
 '(c-annotation-face ((t (:inherit font-lock-constant-face))))
 '(custom-group-tag-1 ((t (:inherit variable-pitch :foreground "SpringGreen1" :weight bold :height 1.2))))
 '(error ((t (:foreground "SpringGreen1" :weight bold))))
 '(font-lock-builtin-face ((t (:foreground "#ff90ff"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#808080" :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#808080" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "#ff0055" :weight semi-bold))))
 '(font-lock-doc-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#cc6644" :weight extra-bold))))
 '(font-lock-keyword-face ((t (:foreground "#cc6644" :weight bold))))
 '(font-lock-negation-char-face ((t (:foreground "#00aaff"))))
 '(font-lock-preprocessor-face ((t (:foreground "#3355ff" :weight extra-bold))))
 '(font-lock-string-face ((t (:foreground "#00ff55"))))
 '(font-lock-type-face ((t (:foreground "#2288ff" :weight semi-bold))))
 '(font-lock-variable-name-face ((t (:foreground "#ff2299"))))
 '(ido-subdir ((t (:foreground "dark orange"))))
 '(term ((t (:inherit default :weight semi-bold))))
 '(term-color-blue ((t (:background "#55eeff" :foreground "#55eeff"))))
 '(term-color-white ((t (:background "white" :foreground "white")))))


