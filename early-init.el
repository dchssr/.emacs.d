(require 'seq)
(require 'D (concat user-emacs-directory "D.el"))

(let ((chosen-font-face
       (concat (D-available-preferred-font)
                "-" (number-to-string D-preferred-font-size))))
  (setq initial-frame-alist
        `((width . 80) ; 80-character lines are common in style guides
          (tool-bar-lines . 0)
          (font . ,chosen-font-face))
        inhibit-startup-screen t
        default-frame-alist initial-frame-alist))
