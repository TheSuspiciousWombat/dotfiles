;; bootstrap use package
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(counsel ivy spacemacs-theme treemacs magit doom-themes zenburn-theme company use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Stuff





;; Disable Bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; complete parens
(electric-pair-mode t)

;; Show and highlight line numbers
(global-display-line-numbers-mode)

(use-package treemacs
  :ensure t)


(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0.3))

;; Exchange yes and no with y n
(defalias 'yes-or-no-p 'y-or-n-p)

;; Theme

(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
	doom-theme-enable-italic t)
  (load-theme 'doom-one t)
  (doom-themes-org-config))


;; magit

(use-package magit
  :ensure t)


(use-package ivy
  :ensure t
  :config
  (ivy-mode t))

(use-package counsel
  :ensure t)


