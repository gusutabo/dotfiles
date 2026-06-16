(require 'package)

(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))

(package-initialize)

(setq initial-scratch-message ";; Olá! Você sabia que duas vacas fazem muh muhhh? ;D\n\n")

(use-package nyan-mode
  :ensure t
  :init (nyan-mode 1)
  :config
  (setq nyan-animate-nyancat t)
  (setq nyan-wavy-trail t)
  (nyan-start-animation))

(use-package ligature
  :ensure t
  :config
  (ligature-set-ligatures 't '("www"))
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))

  (global-ligature-mode t))

(use-package gruvbox-theme
  :ensure t
  :config (load-theme 'gruvbox-dark-hard t))

(use-package lsp-mode
  :ensure t
  :hook (c-mode . lsp)
  :commands lsp)

(use-package corfu
  :ensure t
  :init (global-corfu-mode))

(use-package cape
  :ensure t)

(use-package org
  :ensure nil
  :hook (org-mode . visual-line-mode)
  :config
  (setq org-startup-indented t)
  (setq org-hide-leading-stars t)
  (setq org-ellipsis " ▾")
  (setq org-src-fontify-natively t))

(use-package org-modern
  :ensure t
  :hook (org-mode . org-modern-mode))

(use-package olivetti
  :ensure t
  :hook (org-mode . olivetti-mode))

(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package which-key
  :ensure t
  :init (which-key-mode))

(use-package smartparens
  :ensure t
  :hook (prog-mode . smartparens-mode)
  :config (require 'smartparens-config))

(use-package treemacs
  :ensure t
  :bind ("C-c t" . treemacs))

(use-package clang-format
  :ensure t
  :hook (c-mode . (lambda ()
                    (add-hook 'before-save-hook #'clang-format-buffer nil t))))

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font-11")

(setq completion-cycle-threshold 3)
(setq tab-always-indent 'complete)

(setq corfu-auto t)
(setq corfu-cycle t)

(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(setq visible-bell nil)
(column-number-mode 1)
(set-fringe-mode 0)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'default-frame-alist '(undecorated . t)) ;; Remove barra de título
