(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)

;; Starting with Emacs 27, packages are now activated before loading
;; this init script.
(when (< emacs-major-version 27)
  (package-initialize))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(defun D-prog-mode-hook ()
  "Set up a buffer for programming as opposed to prose or general text."
  (display-line-numbers-mode +1)
  (visual-line-mode +1)
  (hl-line-mode +1))

(add-hook 'prog-mode-hook #'D-prog-mode-hook)

(unbind-key "C-z")

(use-package magit
  :bind ("<f12>" . magit-status))

(use-package ripgrep
  :bind ("<f9>" . ripgrep-regexp))
