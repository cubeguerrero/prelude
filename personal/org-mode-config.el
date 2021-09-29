;;; Commentary:
;;; Code:
(prelude-require-packages '(org-bullets org-roam))

(setq org-ellipsis " ▾"
      org-agenda-start-with-log-mode t
      org-log-done 'time
      org-log-into-drawer t)

(setq org-roam-directory (file-truename "~/Notes")
      org-roam-v2-ack t
      org-roam-capture-templates '(("l" "literature notes" plain
                                    "%?\n\nReferences:\n-"
                                    :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: literature")
                                    :unnarrowed t)
                                   ("p" "permanent notes" plain
                                    "%?"
                                    :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n#+filetags: permanent")
                                    :unnarrowed t)))

(global-set-key (kbd "C-c z l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c z f") 'org-roam-node-find)
(global-set-key (kbd "C-c z i") 'org-roam-node-insert)
(define-key org-mode-map (kbd "C-M-i") 'completion-at-point)

(org-roam-db-autosync-mode 1)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)
                           (org-indent-mode 1)
                           (visual-line-mode 1)))
