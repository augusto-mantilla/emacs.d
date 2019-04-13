;; This is all kinds of necessary
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
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (assemblage)))
 '(custom-safe-themes
   (quote
    ("a18d8e969618814c45706df10c7f61b78678d9280b5b7cb463b834a86584902e" "9707c6c98f563dd75777444bc8fc6120e0469ae9962e72678b90b5aadf04d934" "6f89bdfc8b26e2815351629ed8822748c7b1ffc2a2087d46f70af963ec68a500" "8e71296183c846941832fc35f545df01586d75169fc8175651cbdc9d9d84e01c" "8a4eeff636975030f1f06d826fd3b14befe21e52c745e9b40cc13493e120caa2" "3743aa8b25703132194cb054efd3824996bfa7bd8c6ec772efa28ed1df5cee83" "58337a8aec3800a866f40b7142a18c22dd662a0eda7afcde380fcede2590c124" "946f52561edb2f94fb52e30ed4a36b760d1399b12f7958e0342e3f03fb3c497e" "b3fd337286d312bad303e247d237c53c4210f6c8a3d22ed06255cf130ac57f21" "d4070d09aa61b7c4bbdb2151c1d2486ed30adcb59d99acc15126a5da2183f855" "c8e369173e5543a3494be25ecee9780cf2866e04c3916e97d02f1f4e895e0a79" "1177fe4645eb8db34ee151ce45518e47cc4595c3e72c55dc07df03ab353ad132" default)))
 '(fringe-mode 10 nil (fringe))
 '(linum-format " %3i ")
 '(main-line-color1 "#222912")
 '(main-line-color2 "#09150F")
 '(package-selected-packages
   (quote
    (multiple-cursors magit go-mode org-link-minor-mode org-pdfview pdf-tools web-mode diminish spaceline auto-complete dashboard sudo-edit hungry-delete switch-window rainbow-delimiters rainbow-mode avy smex org-bullets beacon which-key abyss-theme use-package)))
 '(pdf-view-midnight-colors (quote ("#FDF4C1" . "#282828")))
 '(pos-tip-background-color "#36473A")
 '(pos-tip-foreground-color "#FFFFC8")
 '(powerline-color1 "#222912")
 '(powerline-color2 "#09150F")
 '(safe-local-variable-values
   (quote
    ((eval when
	   (require
	    (quote rainbow-mode)
	    nil t)
	   (rainbow-mode 1))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#cccccc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))
(add-to-list 'default-frame-alist '(background-color . "#000000"))
