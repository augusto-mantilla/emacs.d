(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("ELPA"  . "http://tromey.com/elpa/")
						 ("gnu"   . "http://elpa.gnu.org/packages/")
						 ("melpa-stable" . "https://stable.melpa.org/packages/")
						 ("melpa" . "https://melpa.org/packages/")
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
   '(ivy ido-vertical-mode typescript-mode eglot ido-vertical mini-frame org-wild-notifier org-tree-slide wgrep company-tern esup scad-mode cargo arduino-mode prettier-js expand-region org-bullets ox-md markdown-mode ripgrep all-the-icons-ibuffer projectile evil-collection all-the-icons shell-switcher go-complete company-go company racer evil-mc evil-surround org-evil evil emojify graphql-mode web-mode flymd json-mode flycheck-rust rust-mode flycheck magit org-link-minor-mode diminish sudo-edit hungry-delete switch-window rainbow-mode avy smex beacon which-key use-package))
 '(safe-local-variable-values
   '((eval when
		   (require 'rainbow-mode nil t)
		   (rainbow-mode 1)))))
(set-face-attribute 'default nil :family "Hack" :height 96)
(put 'upcase-region 'disabled nil)
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

;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format nil)

(use-package mini-frame
  :custom
  (mini-frame-ignore-commands
   '(eval-expression
	 "edebug-eval-expression"
	 debugger-eval-expression
	 swiper
	 swiper-backward
	 swiper-thing-at-point
	 completion-at-point))
  (mini-frame-resize 'only-grow)
  (mini-frame-resize-min-height 3)
  :config
  (custom-set-variables
   '(mini-frame-show-parameters
	 '((top . 180)
	   (width . 70)
	   (height . 3)
	   (left . 0.5))))
  (mini-frame-mode t))

(setq comp-async-report-warnings-errors nil)

(setq package-native-compile t)

(define-prefix-command 'my-keys)
(global-set-key (kbd "C-c m") my-keys)
(define-key my-keys "a" 'org-agenda)
(define-key my-keys "c" 'org-capture)

(global-set-key (kbd "M-a") 'switch-window)
(global-set-key (kbd "M-e") 'ido-switch-buffer)
(global-set-key (kbd "M-z") 'ido-switch-buffer-other-window)

(setq inhibit-startup-message t)

(defun my-font-adjustment () (interactive)
	   (if (<= (face-attribute 'default :height) 98) (set-face-attribute 'default nil :height 100)
		 (set-face-attribute 'default nil :height 96)))
(global-set-key (kbd "C-c m f") 'my-font-adjustment)

(defvar my-term-shell "/bin/bash")
(defadvice ansi-term (before force-bash)
  (interactive (list my-term-shell)))
(ad-activate 'ansi-term)

(use-package shell-switcher
  :ensure t
  :config (setq shell-switcher-mode t)
  :bind ("<C-iso-lefttab>" . 'shell-switcher-switch-buffer-other-window)
  ("<C-M-tab>" . 'shell-switcher-new-shell))

(setq ring-bell-function nil)

(tool-bar-mode -1)

(menu-bar-mode -1)

(scroll-bar-mode -1)

(use-package which-key
  :ensure t
  :config
  (setq which-key-pupup-type 'side-window)
  (setq which-key-side-window-location 'top)
  (which-key-mode))

(use-package beacon
  :ensure t
  :config
  (beacon-mode 1))

(use-package org
  :pin org
  :ensure t
  :config
  (setq org-startup-folded t)
  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)
  (setq org-ellipsis " ▼")
  (setq org-refile-targets '(("archive.org" :maxlevel . 1)))
  (advice-add 'org-refile :after 'org-save-all-org-buffers)
  (setq org-agenda-files '("~/Documents/agenda/agenda.org"))
  (setq org-capture-templates
		`(("t" "Tasks / Projects")
		  ("tt" "Task" entry (file+olp "~/Documents/agenda/agenda.org" "Quick Tasks")
		   "* TODO %?\n  %U\n  %a\n  %i" :empty-lines 1)

		  ("j" "Journal Entries")
		  ("jj" "Journal" entry
		   (file+olp+datetree "~/Documents/agenda/journal.org")
		   "\n* %<%I:%M %p> - Journal :journal:\n\n%?\n\n"
		   ;; ,(dw/read-file-as-string "~/Notes/Templates/Daily.org")
		   :clock-in :clock-resume
		   :empty-lines 1)
		  ("jm" "Meeting" entry
		   (file+olp+datetree "~/Documents/agenda/journal.org")
		   "* %<%I:%M %p> - %a :meetings:\n\n%?\n\n"
		   :clock-in :clock-resume
		   :empty-lines 1)

		  ("m" "Metrics Capture")
		  ("mw" "Task" table-line (file+headline "~/Documents/agenda/metrics.org" "Task")
		   "| %U | %^{Task} | %^{Notes} |" :kill-buffer t)))
  (add-hook
   'org-mode-hook
   (lambda ()
	 (setq-local electric-pair-inhibit-predicate
				 `(lambda (c)
					(if (char-equal c ?<) t (,electric-pair-inhibit-predicate c)))))))

(with-eval-after-load 'org
  ;; This is needed as of Org 9.2
  (require 'org-tempo)

  (add-to-list 'org-structure-template-alist '("sh" . "src shell"))
  (add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
  (add-to-list 'org-structure-template-alist '("rs" . "src rust")))

(use-package org-wild-notifier
  :ensure t
  :config
  (setq alert-default-style 'libnotify))

(use-package org-bullets
  :after org
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode)))
  :custom
  (org-bullets-bullet-list '("○")))

(with-eval-after-load 'org
  (require 'ox-latex)
  (unless (boundp 'org-latex-classes)
	(setq org-latex-classes nil))
  (add-to-list 'org-latex-classes
			   '("article"
				 "\\documentclass{article}"
				 ("\\section{%s}" . "\\section*{%s}"))))

(defun present-start()
  (org-display-inline-images)
  (setq text-scale-mode-amount 3)
  (text-scale-mode t)
  (display-line-numbers-mode 0))

(defun present-end()
  (display-line-numbers-mode t)
  (text-scale-mode 0))

(use-package org-tree-slide
  :hook ((org-tree-slide-play . present-start)
		 (org-tree-slide-stop . present-end))
  :custom
  (org-image-actual-width nil))

(org-babel-do-load-languages 'org-babel-load-languages
	'(
		(shell . t)
		(emacs-lisp . t)
		(js . t)
	)
)

(defun org-babel-execute:rust (body params)
  (ob-rust-eval (ob-rust-prep body)))

(defun ob-rust-eval (body)
  (let ((src-tmp (org-babel-temp-file "rust-"))
		(output-tmp (org-babel-temp-file "rustc-")))
	(with-temp-file src-tmp (insert body))
	(shell-command-to-string
	 (format "rustc -A dead_code -o %s %s && %s"
			 output-tmp src-tmp output-tmp))))

(defun ob-rust-prep (body)
  (with-current-buffer (get-buffer-create "*ob-rust-src*")
	(erase-buffer)
	(insert "fn main() {\n")
	(insert body)
	(goto-char (point-max))
	(beginning-of-line)
	(while (looking-at "\\(^[\t ]*//\\|^[\t ]*$\\)")
	  (forward-line -1))
	(if (looking-at "[\t ]*\\(println\\|}\\)")
		(end-of-line)
	  (insert "println!(\"{:?}\", ")
	  (when (search-forward-regexp ";[\t ]*$" nil t)
		(replace-match "" t t))
	  (end-of-line)
	  (insert ");"))
	(insert "\n}")
	(buffer-string)))

(setq ido-enable-flex-matching t)
(setq ido-create-new-buffer 'always)
(setq ido-everywhere t)
(ido-mode 1)

(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode t))

(global-set-key (kbd "C-x C-f") 'ido-find-file)
(global-set-key (kbd "C-x C-x") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-a") 'ido-switch-buffer-other-window)
(global-set-key (kbd "C-x b") 'ibuffer-other-window)

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))
(global-set-key (kbd "C-x k") 'kill-current-buffer)

(defun kill-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))
(global-set-key (kbd "C-M-s-k") 'kill-all-buffers)

(use-package avy
  :ensure t
  :bind
  ("M-s" . avy-goto-char))

(use-package ivy
  :ensure t
  :diminish
  :config
  (ivy-mode 1)
  :bind
  ("C-c m v" . ivy-push-view)
  ("C-c m V" . ivy-switch-view)
  ("C-s" . swiper))

(use-package counsel
  :ensure t
  :bind (("M-x" . counsel-M-x)
		 :map minibuffer-local-map
		 ("C-r" . 'counsel-minibuffer-history)))

(use-package ivy-rich
  :ensure t
  :init
  (ivy-rich-mode t)
  :custom
  (ivy-rich-display-transformers-list
   '(ivy-switch-buffer
	 (:columns
	  ((ivy-switch-buffer-transformer (:width 0.35))
	   (ivy-rich-switch-buffer-size (:width 7))
	   (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
	   (ivy-rich-switch-buffer-major-mode (:width 12 :face warning))
	   (ivy-rich-switch-buffer-project (:width 0.18 :face success))
	   (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
	  :predicate
	  (lambda (cand) (get-buffer cand)))
	 counsel-find-file
	 (:columns
	  ((ivy-read-file-transformer)
	   (ivy-rich-counsel-find-file-truename (:face font-lock-doc-face))))
	 counsel-M-x
	 (:columns
	  ((counsel-M-x-transformer (:width 70)))
	  counsel-describe-function
	  (:columns
	   ((counsel-describe-function-transformer (:width 0.4))
		(ivy-rich-counsel-function-docstring (:face font-lock-doc-face))))
	  counsel-describe-variable
	  (:columns
	   ((counsel-describe-variable-transformer (:width 0.4))
		(ivy-rich-counsel-variable-docstring (:face font-lock-doc-face))))
	  counsel-recentf
	  (:columns
	   ((ivy-rich-candidate (:width 0.8))
		(ivy-rich-file-last-modified-time (:face font-lock-comment-face))))
	  counsel-bookmark
	  (:columns ((ivy-rich-candidate (:width 0.3))
				 (ivy-rich-bookmark-type)
				 (ivy-rich-bookmark-info)))
	  package-install
	  (:columns
	   ((ivy-rich-candidate (:width 30))
		(ivy-rich-package-version (:width 16 :face font-lock-comment-face))
		(ivy-rich-package-archive-summary (:width 7 :face font-lock-builtin-face))
		(ivy-rich-package-install-summary (:face font-lock-doc-face))))))))

  (use-package helpful
	:ensure t
	:commands (helpful-callable helpful-variable helpful-command helpful-key)
	:custom
	(counsel-describe-function-function #'helpful-callable)
	(counsel-describe-variable-function #'helpful-variable)
	:bind
	([remap describe-function] . counsel-describe-function)
	([remap describe-command] . helpful-command)
	([remap describe-variable] . counsel-describe-variable)
	([remap describe-key] . helpful-key))

(use-package ivy-prescient
  :ensure t
  :config
  (ivy-prescient-mode 1))

(defun  config-visit ()
  (interactive)
  (find-file-other-window "~/.emacs.d/config.org"))
(define-key my-keys "e" 'config-visit)

(defun config-reload ()
  "Reload ~/.emacs.d/config.org at runtime"
  (interactive)
  (org-babel-load-file (expand-file-name "~/.emacs.d/config.org")))
(define-key my-keys "r" 'config-reload)

(use-package rainbow-mode
  :commands rainbow-mode
  :ensure t
  :diminish rainbow-mode)

(use-package switch-window
  :ensure t
  :config
  ;;(setq switch-window-input-style 'minibuffer)
  (setq switch-window-increase 4)
  (setq switch-window-threshold 2)
  (setq switch-window-shortcut-style 'qwerty)
  (setq switch-window-querty-shortcuts
		'("a", "s", "d", "f", "j", "k", "l", ";"))
  :bind
  ([remap other-window] . switch-window))
(global-set-key (kbd "C-x C-o") 'switch-window)
(global-set-key (kbd "C-x o") 'delete-blank-lines)

(defun split-and-follow-horizontally ()
  (interactive)
  (split-window-below)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x y") 'split-and-follow-horizontally)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x x") 'split-and-follow-vertically)

(defun my-delete-window ()
  (interactive)
  (delete-window)
  (balance-windows))
(global-set-key (kbd "C-x w") 'my-delete-window)

(global-set-key (kbd "C-x l") 'delete-other-windows)

(advice-add 'describe-mode :after '(lambda (&rest args) (call-interactively 'other-window)))
(advice-add 'man :after '(lambda (&rest args) (call-interactively 'other-window)))
(setq help-window-select t)

(global-subword-mode 1)

(setq electric-pair-pairs '((?\{. ?\})
							(?\(. ?\))
							(?\[. ?\])
							(?\". ?\")
							(?\`. ?\`)))
(electric-pair-mode t)

(use-package hungry-delete
  :ensure t
  :config
  (global-hungry-delete-mode)
  :diminish hungry-delete)

(setq-default tab-width 4)

(global-set-key (kbd "C-c p") 'pwd)

(column-number-mode 1)

(use-package sudo-edit
  :ensure t
  :bind ("C-c m s" . sudo-edit))

(use-package company
  :hook (prog-mode . company-mode)
  :diminish company-mode
  :ensure t)

(global-set-key (kbd "C-c c") 'compile)

(use-package all-the-icons
  :ensure t)

(use-package all-the-icons-ibuffer
  :after all-the-icons
  :ensure t
  :init (all-the-icons-ibuffer-mode 1))

(use-package diminish
  :ensure t
  :config
  (diminish 'hungry-delete-mode)
  (diminish 'beacon-mode)
  (diminish 'which-key-mode)
  (diminish 'subword-mode)
  (diminish 'projectile-mode)
  (diminish 'eldoc-mode)
  (diminish 'company-mode)
  (diminish 'ivy-mode)
  (diminish 'auto-revert-mode)
  (diminish 'abbrev-mode)
  (diminish 'flymake-mode " μ")
  (diminish 'undo-tree-mode)
  (diminish 'rainbow-mode))

(put 'view-lossage 'isearch-scroll t)

(font-lock-add-keywords
 'c-mode
 '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))

(font-lock-add-keywords
 'c++-mode
 '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))

(font-lock-add-keywords
 'java-mode
 '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))

(font-lock-add-keywords
 'python-mode
 '(("\\<\\(\\sw+\\) ?(" 1 'font-lock-function-name-face)))

(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
;;(set-fontset-font t '(#x1000 . #xf000) '("all-the-icons" . "iso10646-1"))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook (lambda ()
						  (local-set-key (kbd "C-c C-i") 'go-remove-unused-imports)))

;; (add-hook 'go-mode-hook (lambda ()
;; 						  (define-key evil-normal-state-local-map (kbd "g d") 'godef-jump)
;; 						  (define-key evil-normal-state-local-map (kbd "g o") 'godef-jump)
;; 						  (define-key evil-normal-state-local-map (kbd "g i") 'go-goto-imports)))

(add-hook 'go-mode-hook 'eglot-ensure)
(add-hook 'go-mode-hook (lambda () (flycheck-mode -1)))

(use-package company-go
  :hook (go-mode . company-mode)
  :ensure t
  :config
  (add-hook 'go-mode-hook (lambda ()
							(set (make-local-variable 'company-backend) '(company-go))
							(company-mode)))
  (add-hook 'completion-at-point-functions 'go-complete-at-point))

(add-to-list 'load-path "~/.emacs.d/themes")
(load "darker-theme")
(load-theme 'darker t)

(use-package magit
  :ensure t
  :bind ("C-c g" . magit-status))

(use-package flycheck
  :hook (prog-mode . flycheck-mode)
  :ensure t
  :diminish flycheck-mode " Φ"
  :config
  (define-key flycheck-mode-map flycheck-keymap-prefix nil)
  (setq flycheck-keymap-prefix (kbd "C-c f"))
  (define-key flycheck-mode-map flycheck-keymap-prefix
	flycheck-command-map))

(add-hook 'prog-mode-hook (lambda ()
							(flyspell-prog-mode)
							(diminish 'flyspell-mode " α")))

(add-hook 'org-mode-hook (lambda () (flyspell-mode)(diminish 'flyspell-mode " α")))
(add-hook 'text-mode-hook (lambda () (flyspell-mode)(diminish 'flyspell-mode " α")))

(setenv "PATH" (concat (getenv "PATH") ":" "~/go/bin"))
(setenv "PATH" (concat (getenv "PATH") ":" "~/.cargo/bin"))
(setq exec-path (append exec-path '("~/go/bin")))
(setq exec-path (append exec-path '("~/.cargo/bin")))

(add-hook 'js-mode-hook 'eglot-ensure)

(use-package typescript-mode
  :mode "\\.ts\\'"
  :hook (typescript-mode . eglot-ensure)
  :config
  (setq typescript-indent-level 2))

(use-package prettier-js
  :hook (js-mode . prettier-js-mode)
  :ensure t
  :diminish prettier-js-mode "pjs"
  :config
  (setq prettier-js-args '(
						   "--tab-width"
						   "2"
						   "--no-semi"
						   "--single-quote"
						   "--arrow-parens"
						   "avoid"
						   )))

(use-package rust-mode
  :ensure t
  :init
  (setq racer-rust-src-path
		(concat (string-trim
				 (shell-command-to-string "rustc --print sysroot"))
				"/lib/rustlib/src/rust/library"))
  :config
  (add-hook 'rust-mode-hook #'racer-mode)
  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  (setq company-tooltip-align-annotations t))

(use-package cargo
  :after rust-mode
  :init
  (add-hook 'rust-mode-hook 'cargo-minor-mode)
  (add-hook 'rust-mode-hook (lambda () (diminish 'racer-mode)))
  (add-hook 'toml-mode-hook 'cargo-minor-mode)
  :diminish cargo-minor-mode)

(with-eval-after-load 'rust-mode
  (setq rust-format-on-save t)
  (add-hook 'rust-mode-hook (lambda ()
							  (define-key evil-normal-state-local-map (kbd "g b") 'pop-tag-mark)
							  (define-key evil-normal-state-local-map (kbd "g d") 'racer-find-definition)
							  (define-key evil-normal-state-local-map (kbd "g o") 'racer-find-definition-other-window)
							  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
							  (add-hook 'racer-mode-hook #'eldoc-mode)
							  (add-hook 'racer-mode-hook #'company-mode))))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))

(use-package web-mode
  :mode "\\.html?\\'"
  :ensure t
  :config
  (add-hook 'web-mode-hook 'my-web-mode-hook)
  (add-hook 'web-mode-hook 'prettier-js-mode))

(defun comment-auto-fill ()
  (setq-local comment-auto-fill-only-comments t)
  (auto-fill-mode 1))
(add-hook 'prog-mode-hook 'comment-auto-fill)
(add-hook 'prog-mode-hook (lambda () (diminish 'auto-fill-function)))

(setq display-line-numbers-type 'relative)

(require 'display-line-numbers)

(defcustom display-line-numbers-exempt-modes '(vterm-mode
											   eshell-mode
											   shell-mode
											   term-mode
											   cargo-process-mode
											   ansi-term-mode
											   eww-mode
											   compilation-mode
											   ripgrep-search-mode
											   grep-mode
											   Custom-mode
											   xref--xref-buffer-mode
											   help-mode)
  "Major modes on which to disable the linum mode, exempts them from global requirement"
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "turn on line numbers but excempting certain majore modes defined in `display-line-numbers-exempt-modes'"
  (if (and
	   (not (member major-mode display-line-numbers-exempt-modes))
	   (not (minibufferp)))
	  (display-line-numbers-mode)))

(global-display-line-numbers-mode)

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-disable-insert-state-bindings t)
  :config
  (evil-mode 1)
  (winner-mode 1)
  (evil-set-initial-state 'vterm-mode 'insert)
  (setq evil-want-fine-undo t)
  (evil-define-key '(normal visual motion) 'global "*" 'swiper-thing-at-point)
  (evil-define-key '(normal visual motion) 'global "j" 'evil-next-visual-line)
  (evil-define-key '(normal visual motion) 'global "k" 'evil-previous-visual-line)
  (evil-define-key '(normal visual motion) 'global (kbd "g d") 'xref-find-definitions)
  (evil-define-key '(normal visual motion) 'global (kbd "g o") 'xref-find-definitions-other-window)
  (evil-define-key '(normal visual motion) 'global (kbd "g a") 'xref-find-references)
  (evil-define-key '(normal visual motion) 'global (kbd "g b")'pop-tag-mark)
  (evil-define-key '(normal visual motion) 'global "{" 'beginning-of-defun)
  (evil-define-key '(normal visual motion) 'global "}" 'end-of-defun)
  (evil-define-key '(normal visual motion) 'global "/" 'swiper)
  (evil-define-key '(normal visual motion) 'global "?" 'swiper-backward)
  (evil-define-key '(normal visual motion) 'global (kbd "g p") 'winner-undo)
  (evil-define-key '(normal visual motion) 'global (kbd "g n") 'winner-redo))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init 'ibuffer)
  (evil-collection-init 'ansi-term)
  (evil-collection-init 'term)
  (evil-collection-init 'calendar)
  (evil-collection-init 'messages)
  (evil-collection-init 'custom))

(use-package undo-tree
  :after evil
  :ensure t
  :diminish undo-tree-mode
  :config (global-undo-tree-mode)
  (evil-set-undo-system 'undo-tree))

(with-eval-after-load 'evil
  (defun activate-workman () (interactive)
		 (evil-define-key '(normal visual operator motion) 'global
		   "y" 'evil-backward-char
		   "n" 'evil-next-visual-line
		   "N" 'evil-join
		   "e" 'evil-previous-visual-line
		   "o" 'evil-forward-char
		   "k" 'evil-open-below
		   "K" 'evil-open-above
		   "l" 'evil-forward-word-end
		   "L" 'evil-forward-WORD-end
		   "j" 'evil-yank
		   "J" 'evil-yank-line
		   "h" 'evil-search-next
		   "H" 'evil-search-previous))
  (global-set-key (kbd "C-c m w") 'activate-workman)

  (defun desactivate-workman () (interactive)
		 (evil-define-key '(normal visual operator motion) 'global
		   "h" 'evil-backward-char
		   "j" 'evil-next-visual-line
		   "J" 'evil-join
		   "k" 'evil-previous-visual-line
		   "l" 'evil-forward-char
		   "o" 'evil-open-below
		   "O" 'evil-open-above
		   "e" 'evil-forward-word-end
		   "E" 'evil-forward-WORD-end
		   "y" 'evil-yank
		   "Y" 'evil-yank-line
		   "n" 'evil-search-next
		   "N" 'evil-search-previous))
  (global-set-key (kbd "C-c m q") 'desactivate-workman))

(evil-global-set-key 'visual (kbd "TAB" ) 'indent-region)

(use-package evil-surround
  :after evil
  :ensure t
  :config
  (global-evil-surround-mode t))

(setq evil-emacs-state-cursor '(box "#00EAFF")
	  evil-normal-state-cursor '(box "#fff")
	  evil-insert-state-cursor '(box "#00EAFF")
	  evil-visual-state-cursor '(box "#999999"))

(use-package evil-mc
  :after evil
  :ensure t
  :config
  (global-evil-mc-mode 1))

(use-package projectile
  :ensure t
  :diminish projectile-mode
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
  (define-key projectile-command-map (kbd "s") 'projectile-ripgrep))

(use-package markdown-mode
  :ensure t
  :hook (markdown-mode . flyspell-mode)
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
		 ("\\.md\\'" . markdown-mode)
		 ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown")
  :config (define-key markdown-mode-map (kbd "DEL") 'evil-delete-backward-char))

(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-vertically)

(use-package expand-region
  :ensure t
  :bind
  ("C-c m o" . er/contract-region)
  ("C-c m x" . er/expand-region))

(use-package emojify
  :ensure t
  :custom
  (emojify-composed-text-p nil)
  (emojify-display-style 'unicode)
  (emojify-emoji-styles '(unicode)))

(defun abbreviate-path (path)
  "Abbreviate the PATH to take only the last element"
  (if (string= path "/") "/"
	(car (last (split-string path "/")))))

(setq eshell-prompt-function
	  (lambda ()
		(concat
		 (abbreviate-path (abbreviate-file-name ( eshell/pwd)))
		 (if (= (user-uid) 0) " # " " $ "))))

(add-hook 'eshell-mode-hook
		  (lambda () (local-set-key (kbd "C-l")
									(lambda ()
									  (interactive)
									  (eshell/clear 1)
									  (eshell-emit-prompt)))))

(setq esup-depth 0)

(use-package ripgrep
  :ensure t)
(define-key evil-normal-state-map (kbd "g s") 'ripgrep-regexp)

(use-package wgrep
  :ensure t)

(use-package eglot
  :ensure t
  :custom
  (add-hook 'eglot-server-initialized-hook (lambda () (flycheck-mode 0)))
  (eldoc-idle-delay 1.0))
(setq flymake-mode-line-title "μ")

(add-to-list 'eglot-server-programs '((c-mode c++-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook (lambda () (flycheck-mode 0)))
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook (lambda () (flycheck-mode 0)))

(setq max-mini-window-height 0.1)

(add-hook 'python-mode-hook 'eglot-ensure)
(add-hook 'auto-revert-mode-hook (lambda () (diminish 'auto-revert-mode)))

(use-package vterm
  :ensure t
  :config
  (define-key vterm-mode-map (kbd "M-a") 'switch-window)
  (define-key vterm-mode-map (kbd "M-e") 'ido-switch-buffer)
  (define-key vterm-mode-map (kbd "M-z") 'ido-switch-buffer-other-window)
  :bind
  ("C-c m m" . vterm))

(defun my-emoji-fonts ()
  (set-fontset-font t 'unicode (face-attribute 'default :family))
  (set-fontset-font t '(#x2300 . #x27e7) "Twemoji")
  (set-fontset-font t '(#x2300 . #x27e7) "Noto Color Emoji" nil 'append)
  (set-fontset-font t '(#x27F0 . #x1FAFF) "Twemoji")
  (set-fontset-font t '(#x27F0 . #x1FAFF) "Noto Color Emoji" nil 'append)
  (set-fontset-font t 'unicode "Symbola" nil 'append))

(use-package unicode-fonts
  :ensure t
  :init
  (setq use-default-font-for-symbols nil)
  :config
  (unicode-fonts-setup)
  (my-emoji-fonts))

(use-package company-emoji
  :config
  (company-emoji-init))
