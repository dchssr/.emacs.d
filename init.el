(require 'package)
(add-to-list 'package-archives (cons "melpa" "https://melpa.org/packages/") t)

;; Starting with Emacs 27, packages are now activated before loading
;; this init script.
(when (< emacs-major-version 27)
  (package-initialize))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(setq use-package-always-ensure t)

(unbind-key "C-z")

(use-package magit
  :bind ("<f12>" . magit-status))
