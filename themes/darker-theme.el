;;; theme.el --- Jbeans theme for GNU Emacs 24 (deftheme)
;;; Commentary:
;; Author: Adam Olsen <arolsen@gmail.com>
;; URL: <https://github.com/synic/jbeans-emacs>
;; Version: 1.3
;; Package-Requires: ((Emacs "24"))
;; Based On: ujelly by Mark Tran
;; Package-Version: 20151208.2136
;; "What do you mean, no one calls you JBeans?!  I call you JBeans!"
;; -- Wilbur

;; Based on ujelly by Mark Tran <mark.tran@gmail.com>
;; Orig-URL: http://github.com/marktran/color-theme-ujelly
;; Inspired by jellybeans: http://www.vim.org/scripts/script.php?script_id=2555.


;; Copyright (c) 2017 Adam Olsen <arolsen@gmail.com>
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.
;;; Code:
(deftheme darker "The darker color theme")

(let ((class '((class color) (min-colors 89)))
      ;;                                            GUI       TER
      (fg                        (if (display-graphic-p) "#ffffff" "#ffffff"))
      (bg                        (if (display-graphic-p) "#000000" "#000000"))
      (grey-0                    (if (display-graphic-p) "#202020" "#202020"))
      (grey-2                    (if (display-graphic-p) "#050505" "#050505"))
      (grey-3                    (if (display-graphic-p) "#333344" "#444455"))
      (grey-4                    (if (display-graphic-p) "#363636" "#363636"))
      (grey-5                    (if (display-graphic-p) "#444444" "#444444"))
      (grey-6                    (if (display-graphic-p) "#666666" "#666666"))
      (grey-7                    (if (display-graphic-p) "#888888" "#888888"))
      (grey-org                  (if (display-graphic-p) "#DDDDDD" "#DDDDDD"))
      (purple-org                (if (display-graphic-p) "#9966FF" "#9966FF"))
      (blue-org                  (if (display-graphic-p) "#00EAFF" "#00EAFF"))
      (dark-blue                 (if (display-graphic-p) "#004499" "#004499"))
      (green-org                 (if (display-graphic-p) "#33FF55" "#33FF55"))
      (dark-powerline            (if (display-graphic-p) "#151515" "#151515"))
      (powerline-main            (if (display-graphic-p) "#202020" "#202020"))
      (green-add-magit           (if (display-graphic-p) "#006655" "#006655"))
      (yellow-org                (if (display-graphic-p) "#ffff66" "#ffff66"))
      (orange-org                (if (display-graphic-p) "#FFBF66" "#FFBF66"))
      (red-org                   (if (display-graphic-p) "#FF0055" "#FF0055"))
      (red-delete-magit          (if (display-graphic-p) "#660022" "#660022"))
      (doom-modeline-active      (if (display-graphic-p) "#202020" "#202020")))

      (custom-theme-set-variables
        'darker)
      (custom-theme-set-faces
       'darker
       `(default                             ((,class (:foreground ,fg :background ,bg))))
;;;;; ACE/Avy
       `(aw-leading-char-face                ((,class (:foreground ,blue-org :height 1.2 :box (:line-width 1 :color , fg)))))
       `(avy-lead-face                       ((,class (:background ,red-org))))
;;;;; Alchemist
       `(alchemist-test--failed-face         ((,class (:foreground ,red-org))))
       `(alchemist-test--success-face        ((,class (:foreground ,green-org))))
;;;;; Company
       `(company-preview-common              ((,class (:foreground nil :background ,purple-org))))
       `(company-scrollbar-bg                ((,class (:background ,grey-0))))
       `(company-scrollbar-fg                ((,class (:background ,grey-7))))
       `(company-tooltip                     ((,class (:background ,grey-0 :foreground ,fg :weight bold))))
       `(company-tooltip-annotation          ((,class (:inherit company-tooltip :foreground ,blue-org))))
       `(company-tooltip-common              ((,class (:inherit company-tooltip :weight bold :underline nil))))
       `(company-tooltip-common-selection    ((,class (:inherit company-tooltip-selection :foreground ,fg :underline nil :weight bold))))
       `(company-tooltip-selection           ((,class (:background ,purple-org))))
;;;;; Compilation
       `(compilation-error                   ((,class (:foreground ,red-org))))
       `(compilation-info                    ((,class (:foreground ,green-org))))
       `(compilation-line-number             ((,class (:foreground ,grey-7))))
       `(compilation-mode-line-exit          ((,class (:foreground ,green-org))))
       `(compilation-mode-line-fail          ((,class (:foreground ,red-org))))
       `(compilation-mode-line-run           ((,class (:foreground ,green-org))))
;;;;; Dired
       `(diredp-compressed-file-name         ((,class (:foreground ,fg))))
       `(diredp-compressed-file-suffix       ((,class (:foreground ,fg))))
       `(diredp-date-time                    ((,class (:foreground ,green-org))))
       `(diredp-deletion                     ((,class (:foreground ,blue-org :background ,bg))))
       `(diredp-dir-heading                  ((,class (:foreground ,green-org :background ,bg))))
       `(diredp-dir-priv                     ((,class (:foreground ,purple-org :background ,bg))))
       `(diredp-exec-priv                    ((,class (:foreground ,orange-org :background ,bg))))
       `(diredp-file-name                    ((,class (:foreground ,green-org))))
       `(diredp-file-suffix                  ((,class (:foreground ,fg))))
       `(diredp-flag-mark                    ((,class (:foreground ,blue-org :weight bold))))
       `(diredp-flag-mark-line               ((,class (:foreground ,purple-org :weight bold))))
       `(diredp-link-priv                    ((,class (:foreground ,fg))))
       `(diredp-number                       ((,class (:foreground ,grey-6))))
       `(diredp-no-priv                      ((,class (:foreground ,fg :background ,bg))))
       `(diredp-rare-priv                    ((,class (:foreground ,blue-org :background ,bg))))
       `(diredp-read-priv                    ((,class (:foreground ,green-org :background ,bg))))
       `(diredp-symlink                      ((,class (:foreground ,blue-org))))
       `(diredp-dir-name                     ((,class (:foreground ,blue-org))))
       `(diredp-write-priv                   ((,class (:foreground ,blue-org :background ,bg))))
;;;;; Emmet
       `(emmet-preview-output                ((,class (:background ,purple-org))))
;;;;; Elixir
       `(elixir-atom-face                    ((,class (:foreground ,blue-org))))
;;;;; ERC
       `(erc-notice-face                     ((,class (:foreground ,green-org))))
       `(erc-prompt-face                     ((,class (:foreground ,fg))))
       `(erc-timestamp-face                  ((,class (:foreground ,blue-org))))
;;;;;; EShell
       `(eshell-prompt                       ((,class (:foreground ,blue-org :bold t))))
       `(eshell-ls-directory                 ((,class (:weight normal :foreground ,blue-org))))
       `(eshell-ls-executable                ((,class (:weight normal :foreground ,purple-org))))
       `(eshell-ls-product                   ((,class (:foreground ,fg))))
       `(eshell-ls-symlink                   ((,class (:weight normal :foreground ,red-org))))
       `(eshell-ls-backup                   ((,class (:weight normal :foreground ,yellow-org))))
       `(eshell-ls-archive                   ((,class (:weight normal :foreground ,red-org))))
;;;;; Evil
       `(evil-visual-mark-face               ((,class (:weight ultra-bold :box ,blue-org :foreground ,green-org))))
;;;; FCI Ruler
 ;; As of now, this does nothing, because fci-rule-color is not a face yet.
       `(fci-rule-color                      ((,class (:foreground ,grey-4 :background ,grey-4))))
;;;;; Fonts
       `(font-lock-builtin-face              ((,class (:foreground ,red-org))))
       `(font-lock-comment-face              ((,class (:slant italic :foreground ,grey-7))))
       `(font-lock-constant-face             ((,class (:foreground ,red-org))))
       `(font-lock-doc-face                  ((,class (:foreground ,purple-org))))
       `(font-lock-function-name-face        ((,class (:foreground ,green-org :bold t))))
       `(font-lock-keyword-face              ((,class (:foreground ,blue-org :bold t))))
       `(font-lock-preprocessor-face         ((,class (:foreground ,fg))))
       `(font-lock-string-face               ((,class (:foreground ,purple-org))))
       `(font-lock-type-face                 ((,class (:foreground ,yellow-org :bold t))))
       `(font-lock-variable-name-face        ((,class (:foreground ,yellow-org))))
       `(font-lock-warning-face              ((,class (:foreground ,red-org))))
       `(font-lock-regexp-grouping-construct ((,class (:foreground ,green-org :bold t))))
       `(font-lock-regexp-grouping-backslash ((,class (:foreground ,blue-org :bold t))))
;;;;; Fringe
       `(fringe                              ((,class (:foreground ,fg :background ,bg))))
;;;;; Header
       `(header-line                         ((,class (:foreground ,fg))))
;;;;; Helm
       `(helm-visible-mark                   ((,class (:background ,green-org :foreground ,bg))))
       `(helm-buffer-file                    ((,class (:foreground ,fg))))
       `(helm-buffer-directory               ((,class (:foreground ,blue-org))))
       `(helm-buffer-process                 ((,class (:foreground ,green-org))))
       `(helm-buffer-size                    ((,class (:foreground ,fg))))
       `(helm-candidate-number               ((,class (:foreground ,fg :background ,bg))))
       `(helm-grep-lineno                    ((,class (:foreground ,fg))))
       `(helm-grep-finish                    ((,class (:foreground ,blue-org))))
       `(helm-match                          ((,class (:foreground ,red-org :background ,bg))))
       `(helm-moccur-buffer                  ((,class (:foreground ,green-org))))
       `(helm-selection                      ((,class (:background ,grey-4))))
       `(helm-source-header                  ((,class (:foreground ,green-org :background ,grey-0))))
       `(helm-swoop-target-line-face         ((,class (:foreground ,fg :background ,grey-4))))
       `(helm-swoop-target-word-face         ((,class (:foreground ,red-org))))
       `(helm-ff-file                        ((,class (:foreground ,fg))))
       `(helm-ff-directory                   ((,class (:foreground ,blue-org))))
       `(helm-ff-executable                  ((,class (:foreground ,purple-org))))
;;;;; Highlight
       `(highlight                           ((,class (:foreground, fg :background , grey-4))))
       `(hl-line                             ((,class (:background ,grey-0))))
;;;;; iSearch
       `(isearch                             ((,class (:foreground ,fg :background ,red-org))))
       `(isearch-fail                        ((,class (:background ,red-org))))
;;;;; Ido
       `(ido-first-match                     ((,class (:foreground ,blue-org))))
       `(ido-only-match                      ((,class (:foreground ,purple-org))))
       `(ido-subdir                          ((,class (:foreground ,fg))))
       `(ido-virtual                         ((,class (:foreground ,blue-org))))
;;;;; Ivy
       `(ivy-current-match                   ((,class (:background ,grey-3))))
       `(ivy-minibuffer-match-face-1         ((,class (:foreground ,green-org))))
       `(ivy-minibuffer-match-face-2         ((,class (:foreground ,orange-org))))
       `(ivy-minibuffer-match-face-3         ((,class (:foreground ,blue-org))))
       `(ivy-minibuffer-match-face-4         ((,class (:foreground ,purple-org))))
       `(ivy-subdir                          ((,class (:foreground ,green-org))))
       `(ivy-modified-buffer                 ((,class (:foreground ,red-org))))
;;;;; Jabber
       `(jabber-activity-personal-face       ((,class (:foreground ,purple-org :weight bold))))
       `(jabber-activity-face                ((,class (:foreground ,red-org :weight bold))))
       `(jabber-roster-user-online           ((,class (:foreground ,blue-org))))
       `(jabber-roster-user-dnd              ((,class (:foreground ,red-org))))
       `(jabber-chat-prompt-system           ((,class (:foreground ,purple-org))))
       `(jabber-chat-prompt-local            ((,class (:foreground ,blue-org))))
       `(jabber-chat-prompt-foreign          ((,class (:foreground ,green-org))))
;;;;; Lazy highlight
       `(lazy-highlight                      ((,class (:foreground ,red-org :background nil))))
;;;;; Linum
       `(linum                               ((,class (:foreground ,grey-5 :background ,grey-2))))
;;;;; Display line numbers
       `(line-number                         ((,class (:foreground ,grey-6 :background ,grey-2 ))))
;;;;; Ediff
       `(ediff-even-diff-A                   ((,class (:background ,grey-2 :foreground ,fg))))
       `(ediff-even-diff-B                   ((,class (:background ,grey-3 :foreground ,fg))))
       `(ediff-even-diff-C                   ((,class (:background ,grey-3 :foreground ,fg))))
       `(ediff-odd-diff-A                    ((,class (:background ,grey-2 :foreground ,fg))))
       `(ediff-odd-diff-B                    ((,class (:background ,grey-3 :foreground ,fg))))
       `(ediff-odd-diff-C                    ((,class (:background ,grey-5 :foreground ,fg))))
       `(powerline-active1                   ((,class (:inherit mode-line :background ,dark-powerline))))
       `(powerline-active2                   ((,class (:inherit mode-line :background ,grey-0))))
       `(powerline-inactive1                 ((,class (:inherit mode-line :background ,grey-0))))
       `(powerline-inactive2                 ((,class (:inherit mode-line :background ,grey-3))))
;;;;; flycheck
       `(flycheck-error                      ((((supports :underline (:style wave)))
                                               (:underline (:style wave :color ,red-org) :inherit unspecified))
                                              (,class (:underline (:style line :color ,red-org)))))
       `(flycheck-warning                    ((((supports :underline (:style wave)))
                                               (:underline (:style wave :color ,green-org) :inherit unspecified))
                                              (,class (:underline (:style line :color ,green-org)))))
       `(flycheck-info                       ((((supports :underline (:style wave)))
                                               (:underline (:style wave :color ,blue-org) :inherit unspecified))
                                              (,class (:underline (:style line :color ,blue-org)))))
       `(flycheck-fringe-error               ((,class (:foreground ,red-org :weight bold))))
       `(flycheck-fringe-warning             ((,class (:foreground ,green-org :weight bold))))
       `(flycheck-fringe-info                ((,class (:foreground ,blue-org :weight bold))))
;;;;; flyspell
       `(flyspell-duplicate                  ((((supports :underline (:style wave)))
                                               (:underline (:style wave :color ,orange-org) :inherit unspecified))
                                              (,class (:underline (:style line :color ,orange-org)))))
       `(flyspell-incorrect                  ((((supports :underline (:style wave)))
                                               (:underline (:style wave :color ,red-org) :inherit unspecified))
                                              (,class (:underline (:style line :color ,red-org)))))
;;;;; Git
       `(git-commit-comment-file             ((,class (:background ,bg :foreground ,fg))))
       `(git-commit-summary                  ((,class (:background ,bg :foreground ,blue-org))))
       `(git-commit-comment-heading          ((,class (:foreground ,green-org))))
;;;;; Git-gutter
       `(git-gutter-fr+-modified             ((,class (:foreground ,blue-org :background ,bg))))
       `(git-gutter-fr+-added                ((,class (:foreground ,green-org :background ,bg))))
       `(git-gutter-fr+-deleted              ((,class (:foreground
                                                       ,red-org :background ,bg))))
;;;;; Highlighting
       `(hi-yellow                            ((,class (:box ,yellow-org :foreground ,yellow-org :background, grey-4))))
;;;;; Magit
       `(magit-blame-heading                 ((,class (:background ,grey-2 :box ,purple-org :weight bold :foreground ,fg))))
       `(magit-blame-date                    ((,class (:background ,grey-0 :box ,red-org :weight bold :foreground ,red-org))))
       `(magit-blame-name                    ((,class (:background ,grey-0 :box ,red-org :weight bold :foreground ,red-org))))
       `(magit-blame-hash                    ((,class (:background ,grey-0 :box ,red-org :weight bold :foreground ,blue-org))))
       `(magit-bisect-bad                    ((,class (:foreground ,red-org))))
       `(magit-bisect-good                   ((,class (:foreground ,red-org))))
       `(magit-bisect-skip                   ((,class (:foreground ,yellow-org))))
       `(magit-blame-summary                 ((,class (:inherit magit-blame-heading))))
       `(magit-branch-current                ((,class (:inherit magit-branch-local :box 1))))
       `(magit-branch-local                  ((,class (:foreground ,blue-org))))
       `(magit-branch-remote                 ((,class (:foreground ,red-org))))
       `(magit-cherry-equivalent             ((,class (:foreground ,purple-org))))
       `(magit-cherry-unmatched              ((,class (:foreground ,blue-org))))
       `(magit-diff-added                    ((,class (:background ,green-add-magit :foreground ,fg))))
       `(magit-diff-added-highlight          ((,class (:background ,green-add-magit :foreground ,fg))))
       `(magit-diff-base                     ((,class (:background ,red-delete-magit :foreground ,yellow-org))))
       `(magit-diff-base-highlight           ((,class (:background ,red-delete-magit :foreground ,yellow-org))))
       `(magit-diff-conflict-heading         ((,class (:inherit magit-diff-hunk-heading))))
       `(magit-diff-context                  ((,class (:background ,bg :foreground ,fg))))
       `(magit-diff-context-highlight        ((,class (:background ,bg :foreground ,fg))))
       `(magit-diff-file-heading             ((,class (:foreground ,blue-org :weight bold))))
       `(magit-diff-file-heading-highlight   ((,class (:foreground ,blue-org :weight normal))))
       `(magit-diff-file-heading-selection   ((,class (:background ,bg :foreground ,fg))))
       `(magit-diff-hunk-heading             ((,class (:background ,grey-3 :box ,grey-3  :foreground ,fg :weight bold))))
       `(magit-diff-hunk-heading-highlight   ((,class (:background ,grey-3 :box ,grey-7 :weight bold :foreground ,fg))))
       `(magit-diff-hunk-heading-selection   ((,class (:inherit magit-diff-hunk-heading-highlight :foreground ,red-org))))
       `(magit-diff-lines-boundary           ((,class (:inherit magit-diff-lines-heading))))
       `(magit-diff-lines-heading            ((,class (:inherit magit-diff-hunk-heading-highlight :background ,red-delete-magit :foreground ,bg))))
       `(magit-diff-our                      ((,class (:inherit magit-diff-removed))))
       `(magit-diff-our-highlight            ((,class (:inherit magit-diff-removed-highlight))))
       `(magit-diff-removed                  ((,class (:background ,red-delete-magit :foreground ,fg))))
       `(magit-diff-removed-highlight        ((,class (:background ,red-delete-magit :foreground ,fg))))
       `(magit-diff-their                    ((,class (:inherit magit-diff-added))))
       `(magit-diff-their-highlight          ((,class (:inherit magit-diff-added-highlight))))
       `(magit-diff-whitespace-warning       ((,class (:inherit trailing-whitespace))))
       `(magit-diffstat-added                ((,class (:foreground ,green-add-magit))))
       `(magit-diffstat-removed              ((,class (:foreground ,red-delete-magit))))
       `(magit-dimmed                        ((,class (:background ,bg :foreground ,grey-6))))
       `(magit-filename                      ((,class (:foreground ,yellow-org :weight normal))))
       `(magit-hash                          ((,class (:foreground ,grey-5))))
       `(magit-head                          ((,class (:inherit magit-branch-local))))
       `(magit-header-line                   ((,class (:inherit magit-section-heading))))
       `(magit-log-author                    ((,class (:foreground ,blue-org))))
       `(magit-log-date                      ((,class (:foreground ,red-org))))
       `(magit-log-graph                     ((,class (:foreground ,fg))))
       `(magit-popup-argument                ((,class (:inherit font-lock-warning-face))))
       `(magit-popup-disabled-argument       ((,class (:inherit shadow))))
       `(magit-popup-heading                 ((,class (:inherit font-lock-keyword-face))))
       `(magit-popup-key                     ((,class (:inherit font-lock-builtin-face))))
       `(magit-popup-option-value            ((,class (:inherit font-lock-string-face))))
       `(magit-process-ng                    ((,class (:inherit magit-section-heading :foreground ,red-org))))
       `(magit-process-ok                    ((,class (:inherit magit-section-heading :foreground ,green-org))))
       `(magit-reflog-amend                  ((,class (:foreground ,purple-org))))
       `(magit-reflog-checkout               ((,class (:foreground ,blue-org))))
       `(magit-reflog-cherry-pick            ((,class (:foreground ,green-org))))
       `(magit-reflog-commit                 ((,class (:foreground ,green-org))))
       `(magit-reflog-merge                  ((,class (:foreground ,green-org))))
       `(magit-reflog-other                  ((,class (:foreground ,blue-org))))
       `(magit-reflog-rebase                 ((,class (:foreground ,purple-org))))
       `(magit-reflog-remote                 ((,class (:foreground ,blue-org))))
       `(magit-reflog-reset                  ((,class (:foreground ,red-org))))
       `(magit-refname                       ((,class (:background ,bg :foreground ,green-org))))
       `(magit-refname-stash                 ((,class (:inherit magit-refname))))
       `(magit-refname-wip                   ((,class (:inherit magit-refname))))
       `(magit-section-heading               ((,class (:background ,bg :foreground ,grey-org))))
       `(magit-section-highlight             ((,class (:background ,bg))))
       `(magit-section-secondary-heading     ((,class (:background ,bg :weight bold))))
       `(magit-sequence-done                 ((,class (:inherit magit-hash))))
       `(magit-sequence-drop                 ((,class (:foreground ,red-org))))
       `(magit-sequence-head                 ((,class (:foreground ,blue-org))))
       `(magit-sequence-onto                 ((,class (:inherit magit-sequence-done))))
       `(magit-sequence-part                 ((,class (:foreground ,yellow-org))))
       `(magit-sequence-pick                 ((,class (:inherit default))))
       `(magit-sequence-stop                 ((,class (:foreground ,red-org))))
       `(magit-signature-bad                 ((,class (:foreground ,red-org))))
       `(magit-signature-good                ((,class (:foreground ,green-org))))
       `(magit-signature-untrusted           ((,class (:foreground ,blue-org))))
       `(magit-tag                           ((,class (:foreground ,yellow-org))))
;;;;; Markdown
       `(markdown-header-face-1              ((,class (:inherit default :weight bold))))
       `(markdown-header-face-2              ((,class (:inherit default :weight bold))))
       `(markdown-header-face-3              ((,class (:inherit default :weight bold))))
       `(markdown-header-face-4              ((,class (:inherit default :weight bold))))
       `(markdown-header-face-5              ((,class (:inherit default :weight bold))))
       `(markdown-header-face-6              ((,class (:inherit default :weight bold))))
       `(markdown-pre-face                   ((,class (:inherit default :foreground "#eeeeee" :weight semibold))))
       `(markdown-inline-code-face           ((,class (:inherit default :foreground "#aaaaaa"))))
       `(markdown-markup-face                ((,class (:inherit default :foreground ,blue-org))))
;;;;; Match
       `(match                               ((,class (:background ,red-org))))
;;;;; Minibuffer
       `(minibuffer-prompt                   ((,class (:foreground ,blue-org))))
;;;;; Modeline
       `(mode-line                           ((,class (:foreground ,fg
                                                                   :background ,doom-modeline-active :box (:line-width 1 :color ,grey-5)))))

       `(header-line                           ((,class (:inherit mode-line))))
       `(mode-line-inactive                  ((,class (:foreground ,grey-6 :background ,powerline-main :box (:line-width 1 :color ,grey-6)))))
;;;;; NeoTree
       `(neo-dir-link-face                   ((,class (:foreground ,blue-org))))
       `(neo-file-link-face                  ((,class (:foreground ,fg))))
;;;;; Org
       `(org-checkbox                        ((,class (:foreground ,green-org :weight bold))))
       `(org-date                            ((,class (:foreground ,blue-org))))
       `(org-document-title                  ((,class (:foreground ,red-org))))
       `(org-done                            ((,class (:foreground ,green-org))))
       `(org-level-1                         ((,class (:foreground ,blue-org :weight bold))))
       `(org-level-2                         ((,class (:foreground ,purple-org :weight bold))))
       `(org-level-3                         ((,class (:foreground ,yellow-org))))
       `(org-level-4                         ((,class (:foreground ,green-org))))
       `(org-link                            ((,class (:foreground ,blue-org))))
       `(org-special-keyword                 ((,class (:foreground ,blue-org))))
       `(org-table                           ((,class (:foreground ,yellow-org))))
       `(org-todo                            ((,class (:foreground ,yellow-org))))
       `(org-ellipsis                        ((,class (:foreground ,grey-7))))
;;;;; Region
       `(region                              ((,class (:background ,grey-3))))
;;;;; SHM
       `(shm-current-face                    ((,class (:background ,grey-4))))
       `(shm-quarantine-face                 ((,class (:background ,red-org))))
;;;;; Smerge
       `(smerge-markers                      ((,class (:foreground ,green-org :background ,grey-0))))
       `(smerge-refined-change               ((,class (:foreground ,red-org))))
;;;;; SmartParens
       `(sp-pair-overlay-face                ((((class color) (min-colors 89)) (:background ,grey-2))))
       `(sp-show-pair-match-face             ((((class color) (min-colors 89)) (:background ,grey-5))))
;;;;; Spaceline
       `(spaceline-evil-normal               ((,class (:foreground ,bg :background ,orange-org))))
       `(spaceline-evil-motion               ((,class (:foreground ,bg :background ,purple-org))))
       `(spaceline-evil-insert               ((,class (:foreground ,bg :background ,green-org))))
       `(spaceline-evil-visual               ((,class (:foreground ,bg :background ,grey-5)))) `(spaceline-evil-replace              ((,class (:foreground ,bg :background ,blue-org))))
       `(spaceline-evil-emacs                ((,class (:foreground ,bg :background ,blue-org))))
;;;;; Spacemacs
       `(spacemacs-normal-face               ((,class (:foreground ,bg :background ,orange-org))))
       `(spacemacs-motion-face               ((,class (:foreground ,bg :background ,purple-org))))
       `(spacemacs-insert-face               ((,class (:foreground ,bg :background ,green-org))))
       `(spacemacs-visual-face               ((,class (:foreground ,bg :background ,grey-5))))
       `(spacemacs-lisp-face                 ((,class (:foreground ,bg :background ,purple-org))))
       `(spacemacs-replace-face              ((,class (:foreground ,bg :background ,blue-org))))
       `(spacemacs-iedit-face                ((,class (:foreground ,bg :background ,red-org))))
       `(spacemacs-iedit-insert-face         ((,class (:foreground ,bg :background ,red-org))))
       `(spacemacs-evilified-face            ((,class (:foreground ,bg :background ,red-org))))
       `(spacemacs-emacs-face                ((,class (:foreground ,bg :background ,blue-org))))
;;;;; TabBar
       `(tabbar-default                      ((,class (:inherit variable-pitch :background ,bg :foreground ,fg :height 0.8))))
       `(tabbar-modified                     ((,class (:inherit tabbar-default :foreground ,purple-org :box (:line-width 1 :color ,grey-5 style: released-button)))))
       `(tabbar-selected                     ((,class (:inherit tabbar-default :foreground ,blue-org :box (:line-width 1 :color ,fg style: released-button)))))
       `(tabbar-unselected                   ((,class (:inherit tabbar-default :box (:line-width 1 :color ,grey-6 style: released-button)))))
;;;;; Term
       `(term-color-black                    ((,class (:foreground ,bg :background ,bg))))
       `(term-color-red                      ((,class (:foreground ,red-org :background ,red-org))))
       `(term-color-green                    ((,class (:foreground ,green-org :background ,red-org))))
       `(term-color-yellow                   ((,class (:foreground ,green-org :background ,yellow-org))))
       `(term-color-blue                     ((,class (:foreground ,blue-org :background ,blue-org))))
       `(term-color-magenta                  ((,class (:foreground ,purple-org :background ,purple-org))))
       `(term-color-white                    ((,class (:foreground ,fg :background ,fg))))
       `(term-default-fg-color               ((,class (:inherit term-color-white))))
       `(term-default-bg-color               ((,class (:inherit term-color-black))))
;;;;; Whitespace
       `(trailing-whitespace                 ((,class (:background ,red-org))))
;;;;; Vertical border
       `(vertical-border                     ((,class (:foreground , grey-6 ))))
       `(fringe                              ((,class (:background , fg))))
;;;;; Web Mode
       `(web-mode-builtin-face               ((,class (:foreground ,blue-org))))
       `(web-mode-html-attr-name-face        ((,class (:foreground ,blue-org))))
       `(web-mode-html-tag-face              ((,class (:foreground ,orange-org))))
       `(web-mode-symbol-face                ((,class (:foreground ,blue-org))))
       `(web-mode-function-name-face         ((,class (:foreground ,orange-org))))
       `(web-mode-block-control-face         ((,class (:foreground ,blue-org))))
       `(web-mode-variable-name-face         ((,class (:foreground ,blue-org))))
;;;;; More Whitespace
       `(whitespace-trailing                 ((,class (:background ,red-org))))))
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'darker)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; darker-theme.el ends here
