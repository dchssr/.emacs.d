(require 'package)

;; Emacs implicitly initializes packages starting with version 27.1.
(when (< emacs-major-version 27)
  (package-initialize))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") :append)

(unless (require 'use-package nil :no-error)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name (concat user-emacs-directory "README.org")))
