; Package Related
(require 'cl)

; Custom files
(load "~/.emacs.d/default.el")

(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

(require 'evil)
(evil-mode 1)

(require 'helm)
(require 'helm-config)
(helm-mode 1)

(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)

(projectile-global-mode)

(ac-config-default)

; End of Package config


; Key Bindings
(global-set-key (kbd "C-x w") 'other-window)

; Helm Specific
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)



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
(setq confirm-kill-emacs 'y-or-n-p) ; Prompt when closing emacs
(setq auto-save-default nil) ; Don't autosave files

; Delete whitespace from buffer when saved
(add-hook 'write-file-functions 'delete-trailing-whitespace)

; Indentation

(setq-default indent-tabs-mode nil) ; don't use tabs for indentation
(setq-default tab-width 2) ; Good tab width

; User Interface

(global-hl-line-mode 1) ; Highlight current line
(set-face-attribute 'region nil :background "#558855" :foreground "#111111") ; Selection color
(set-face-background 'hl-line "#111111") ; Highlight color
(set-face-foreground 'highlight nil) ; Keep syntax highlighting
(menu-bar-mode -1)
(tool-bar-mode -1)

; Windows

(setq column-number-mode t) ; Show column number in the mode line

(windmove-default-keybindings) ; Use Shift + Arrow keys to move between windows

; Org Mode
(setq-default org-M-RET-may-split-line nil) ; don't split current line when adding next sub-item
