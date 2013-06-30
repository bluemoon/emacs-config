(add-to-list 'load-path "~/.emacs.d/vendor/textmate.el")

(require 'textmate)
(textmate-mode)

(tool-bar-mode -1)
(scroll-bar-mode -1)
;; Hide home screen
(setq inhibit-startup-message t)

;; Line number
(global-linum-mode)

;; Marmalade
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(load-theme 'monokai t)
;; For tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Snippets
(require 'yasnippet)
(yas-global-mode 1)


(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;; set the trigger key so that it can work together with yasnippet on tab key,
;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;;; activate, otherwise, auto-complete will
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(show-paren-mode t)
