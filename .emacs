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

; Key Bindings
(global-set-key (kbd "C-x w") 'other-window)

; Helm Specific
(global-set-key (kbd "M-x") 'helm-M-x)
