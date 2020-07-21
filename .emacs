(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;; Remove Splash Screen
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

(use-package evil
  :ensure t
  :config

  (evil-mode 1)
  (use-package evil-org
    :ensure t
    :config
    (evil-org-set-key-theme
     '(textobjects insert navigation additional shift todo heading))
    (add-hook 'org-mode-hook (lambda () (evil-org-mode))))

  (use-package powerline-evil
    :ensure t
    :config
    (powerline-evil-vim-color-theme)))

(use-package ispell
  :ensure t
  :bind
  (("C-c w" . 'ispell-word)
   ("C-c r" . 'ispell-region)))

(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  :bind
  (("C-c p" . 'projectile-command-map)))

(use-package magit
  :ensure t)

(use-package treemacs
  :ensure t
  :config
  (use-package treemacs-evil
    :ensure t)
  (use-package treemacs-magit
    :ensure t)
  (use-package treemacs-projectile
    :ensure t)
  )

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
