;; Some basic settings
(setq frame-title-format '("%b"))
(setq ring-bell-function 'ignore)
(setq use-short-answers t)
(setq initial-buffer-choice t) ; always start with *scratch*
(delete-selection-mode 1)

(load-theme 'modus-operandi t)

(require 'package)
;; All variables are for Emacs 28+
(setq package-name-column-width 40)
(setq package-version-column-width 14)
(setq package-status-column-width 12)
(setq package-archive-column-width 8)
(add-hook 'package-menu-mode-hook #'hl-line-mode)

;; Also read: <https://protesilaos.com/codelog/2022-05-13-emacs-elpa-devel/>
(setq package-archives
      '(("elpa" . "https://elpa.gnu.org/packages/")
        ("elpa-devel" . "https://elpa.gnu.org/devel/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))

;; Highest number gets priority (what is not mentioned has priority 0)
(setq package-archive-priorities
      '(("elpa" . 2)
        ("nongnu" . 1)))

;; (global-display-line-numbers-mode 1)
;; (global-hl-line-mode 1)

(setq backup-directory-alist '(("" . "~/.config/emacs/backups")))

(use-package which-key :ensure t :init (which-key-mode 1))
(use-package ivy :ensure t :init (ivy-mode 1))
(use-package expand-region :ensure t :config (global-set-key (kbd "C-=") 'er/expand-region))
(use-package editorconfig :ensure t :init (editorconfig-mode 1))
(use-package ansi-color :ensure t :hook (compilation-filter . ansi-color-compilation-filter))
(use-package savehist :init (savehist-mode))
(use-package magit :ensure t)
(use-package move-text :ensure t :init (move-text-default-bindings))

;; Whether to save existing clipboard text into kill ring before replacing it.
;; (setq save-interprogram-paste-before-kill t)

;; (use-package vertico
;;   :straight t
;;   :init
;;   (vertico-mode)
;;   ;; Optionally enable cycling for `vertico-next' and `vertico-previous'.
;;   (setq vertico-cycle t))

;; (use-package orderless
;;   :straight t
;;   :init
;;   (setq completion-styles '(orderless basic)
;;         completion-category-defaults nil
;;         completion-category-overrides '((file (styles partial-completion)))))

;; ;; Enable rich annotations using the Marginalia package
;; (use-package marginalia
;;   :straight t
;;   ;; Either bind `marginalia-cycle' globally or only in the minibuffer
;;   :bind (("M-A" . marginalia-cycle)
;;          :map minibuffer-local-map
;;          ("M-A" . marginalia-cycle))
;;   :init (marginalia-mode))

(global-set-key [f5] #'compile)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(move-text magit ansi-color which-key use-package ivy expand-region editorconfig)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
