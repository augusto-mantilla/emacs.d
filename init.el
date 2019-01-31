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
 '(ansi-color-names-vector
   ["#32302F" "#FB4934" "#B8BB26" "#FABD2F" "#83A598" "#D3869B" "#17CCD5" "#EBDBB2"])
 '(custom-enabled-themes (quote (fogus)))
 '(custom-safe-themes
   (quote
    ("3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "85968e61ff2c490f687a8159295efb06dd05764ec37a5aef2c59abbd485f0ee4" "d8dc153c58354d612b2576fea87fe676a3a5d43bcc71170c62ddde4a1ad9e1fb" default)))
 '(linum-format " %5i ")
 '(package-selected-packages
   (quote
    (sublime-themes darktooth-theme web-mode php-mode magit auto-complete yasnippet company-irony company-c-headers diminish spaceline company dashboard rainbow-delimiters sudo-edit hungry-delete switch-window rainbow-mode avy smex org-bullets beacon which-key use-package abyss-theme)))
 '(pdf-view-midnight-colors (quote ("#FDF4C1" . "#282828")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#050000" :foreground "#bbe0f0" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "Terminus"))))
 '(button ((t (:inherit nil :underline t))))
 '(c-annotation-face ((t (:inherit font-lock-constant-face))))
 '(cursor ((t (:inherit nil))))
 '(custom-group-tag-1 ((t (:inherit variable-pitch :foreground "SpringGreen1" :weight bold :height 1.2))))
 '(error ((t (:inherit nil :weight bold))))
 '(font-lock-builtin-face ((t (:inherit nil))))
 '(font-lock-comment-delimiter-face ((t (:inherit nil :slant italic))))
 '(font-lock-comment-face ((t (:foreground "#808080" :slant italic))))
 '(font-lock-constant-face ((t (:inherit nil :weight semi-bold))))
 '(font-lock-doc-face ((t (:inherit nil :weight bold))))
 '(font-lock-function-name-face ((t (:inherit nil :weight semi-bold))))
 '(font-lock-keyword-face ((t (:inherit nil :weight bold))))
 '(font-lock-negation-char-face ((t (:inherit nil))))
 '(font-lock-preprocessor-face ((t (:inherit nil :weight extra-bold))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit nil))))
 '(font-lock-regexp-grouping-construct ((t (:inherit nil))))
 '(font-lock-string-face ((t (:inherit nil))))
 '(font-lock-type-face ((t (:inherit nil :weight semi-bold))))
 '(font-lock-variable-name-face ((t (:inherit nil))))
 '(font-lock-warning-face ((t (:inherit nil))))
 '(ido-subdir ((t (:foreground "dark orange"))))
 '(isearch ((t (:background "chartreuse" :foreground "#000000"))))
 '(mode-line-inactive ((t (:background "#0d1000" :foreground "dim gray" :box nil))))
 '(region ((t (:background "dark orchid" :foreground "#050000"))))
 '(term ((t (:inherit default :weight semi-bold))))
 '(term-color-blue ((t (:background "#55eeff" :foreground "#55eeff"))))
 '(term-color-white ((t (:background "white" :foreground "white"))))
 '(warning ((t (:inherit nil :weight bold)))))


