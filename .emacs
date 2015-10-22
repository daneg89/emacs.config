; Package Related
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

(require 'evil)
(evil-mode 1)

(require 'helm)
(helm-mode 1)

(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)

(projectile-global-mode)

(ac-config-default)

; End of Package config


; Key Bindings
(global-set-key (kbd "C-x w") 'other-window)

(global-set-key (kbd "M-x") 'helm-M-x) ; Helm Specific

(setq backup-directory-alist `(("." . "/tmp")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("afc220610bee26945b7c750b0cca03775a8b73c27fdca81a586a0a62d45bbce2" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'slime t)

; General

(setq inhibit-startup-message t) ; Remove startup message

(global-hl-line-mode 1) ; Highlight current line
(set-face-background 'hl-line "#111111") ; Highlight color
(set-face-foreground 'highlight nil) ; Keep syntax highlighting
