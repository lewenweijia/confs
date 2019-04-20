;; Customizations
(global-set-key (kbd "C-c <f12>") 'customize-save-variable)

;; Elpa
(require 'package)

(setq package-archives
      '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Ivy, Counsel, Swiper
(use-package counsel
  :ensure t
  :bind ("C-s" . swiper)s
  :init
  (ivy-mode)
  (counsel-mode)
  (use-package avy :ensure t))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (avy counsel use-package)))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 1000))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
