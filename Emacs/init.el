;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(load-file "/home/splatdem/.emacs.d/enlight.el")
(require 'enlight)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(set-frame-font "Fantasque Sans Mono-15" nil t)
(xterm-mouse-mode 1)

(setq explicit-shell-file-name "/usr/bin/fish")
(setq shell-file-name "/usr/bin/fish")
(setenv "SHELL" "/usr/bin/fish")

(add-hook 'eshell-mode-hook
          (lambda ()
            (setq eshell-prefer-lisp-functions t)
            (setq eshell-destroy-buffer-when-process-dies t)
            (setq eshell-prompt-function
                  (lambda ()
                    (concat
                     (propertize (format-time-string "%H:%M") 'face 'font-lock-comment-face)
                     " "
                     (propertize (getenv "USER") 'face 'font-lock-keyword-face)
                     " "
                     (propertize (eshell/pwd) 'face 'font-lock-constant-face)
                     " "
                     (propertize "λ" 'face 'font-lock-function-name-face)
                     " ")))))

;; Shell clear fix
(defun my-shell-hook ()
  (local-set-key "\C-cl" 'erase-buffer))

(add-hook 'shell-mode-hook 'my-shell-hook)


;; Melpa
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Rust features
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq rust-format-on-save t)

;; (use-package rustic
;;  :ensure t)


;; Clang fmt
(use-package clang-format+)

;; Tabs
(use-package smart-tab
  :ensure t
  :config
  (smart-tab-mode 1))
(add-hook 'rust-mode-hook #'smart-tab-mode)

;; Load nord theme
;; (load-theme 'kanagawa-wave' t) ;; <- Kanagawa
;; (load-theme 'kanagawa-dragon' t) ;; <- kanagawa?!
(load-theme 'gruber-darker' t)

;; Awesome eaf
(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)
(require 'eaf-browser)
(require 'eaf-pdf-viewer)
(require 'eaf-video-player)

;; Markdown mode
(setq markdown-live-preview-window-function #'my-markdown-preview-function)
(setq markdown-split-window-direction 'right)
(setq markdown-split-window-direction 'below)

;; delete exported HTML file after markdown-live-preview-export is called
(setq markdown-live-preview-delete-export 'delete-on-export)

;; Icons
(use-package all-the-icons
  :ensure t)

;; Doom Modeline
;;(require 'doom-modeline)
;;(doom-modeline-mode 1)

;; Org Mode
(use-package org
  :defer t
  :custom 
  (org-log-done t))

;; Images
;; (use-package uimage
;;  :ensure t
;;  :diminish
;;  :custom 
;;  (org-startup-with-inline-images t)
;;  :hook
;;  (org-mode . uimage-mode))

; Emacs evil-mode
;; (require 'evil)
;; (evil-mode 1)

;; Delete ~ files
(setq make-backup-files nil)





;; Pkgs
(require 'rust-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("01a9797244146bbae39b18ef37e6f2ca5bebded90d9fe3a2f342a9e863aaa4fd" "35d6a724654bf374bacd64aad295abcd03cd2911da7bf08c633c56bb5d1f8715" "daa27dcbe26a280a9425ee90dc7458d85bd540482b93e9fa94d4f43327128077" "d2ab3d4f005a9ad4fb789a8f65606c72f30ce9d281a9e42da55f7f4b9ef5bfc6" "c20728f5c0cb50972b50c929b004a7496d3f2e2ded387bf870f89da25793bb44" "69d207602169248adc23d5bc22d71c55414e16005bc3854c10eb385419019533" default))
 '(package-selected-packages
   '(magit-find-file magit telega listen enlight gruber-darker-theme lua-mode smart-tab lsp-mode grandshell-theme ## pdf-tools tree-sitter-langs kanagawa-themes clang-format+ clang-format org-modern uimage doom-modeline all-the-icons-nerd-fonts all-the-icons dashboard srcery-theme evil expand-region markdown-mode rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
