(package-initialize)
;; Org mode stuff
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-directory "~/org")
(setq org-mobile-inbox-for-pull "~/org/flagged.org")
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(setq org-log-done t)
(setq org-agenda-files (list "~/org/general.org"
			     "~/org/specific.org"
			     "~/org/svg.org"
			     "~/org/rjm.org"
			     "~/org/mh.org"
			     "~/org/personal.org"))
;; cycle through buffers with Ctrl-Tab (like Firefox)
(global-set-key (kbd "C-]") 'next-buffer)
(global-set-key (kbd "C-[") 'previous-buffer)
(load "~/packages/ESS/lisp/ess-site")

(kill-buffer "*scratch*")
