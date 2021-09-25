;;; Commentary:
;;; Code:
(prelude-require-packages '(org-bullets visual-fill-column))

(dolist (face '((org-level-1 . 1.2)
                (org-level-2 . 1.1)
                (org-level-3 . 1.05)
                (org-level-4 . 1.0)
                (org-level-5 . 1.1)
                (org-level-6 . 1.1)
                (org-level-7 . 1.1)
                (org-level-8 . 1.1)))
  (set-face-attribute (car face) nil :font "Helvetica" :weight 'regular :height (cdr face)))

  ;; Ensure that anything that should be fixed-pitch in Org files appears that way
(set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
(set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)

(setq visual-fill-column-width 100
      visual-fill-column-center-text t)

(setq org-ellipsis " ▾"
      org-agenda-start-with-log-mode t
      org-log-done 'time
      org-log-into-drawer t)

(setq org-agenda-files
      '("~/.org/index.org"))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)
                           (org-indent-mode 1)
                           (variable-pitch-mode 1)
                           (visual-line-mode 1)
                           (visual-fill-column-mode 1)))
