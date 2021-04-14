(defgroup D nil
  "Personal settings and tweaks")

(defcustom D-preferred-fonts-list
  '("Sometype Mono"	; https://github.com/dharmatype/Sometype-Mono/
    "Source Code Pro"	; https://github.com/adobe-fonts/source-code-pro
    "Julia Mono" 	; https://github.com/cormullion/juliamono
    "JetBrains Mono"	; https://github.com/JetBrains/JetBrainsMono
    "IBM Plex Mono")	; https://github.com/IBM/plex
  "List of fonts to use in order of preference.")

(defcustom D-preferred-font-size 9
  "Whichever font-size works best for me.")

(defun D-font-available-p (font-name &optional frame)
  "Returns a list where FONT-NAME is at the car if that font is installed. "
  (unless (stringp font-name)
    (signal 'wrong-type-argument '(font-name)))
  (car (member font-name (font-family-list frame))))

(defun D-available-preferred-font (&optional default-font-name)
  "Select the first available font from `D-preferred-fonts-list', falling
back to DEFAULT-FONT-NAME or \"Monospace\" if none of them are installed."
  (seq-find #'D-font-available-p
	    D-preferred-fonts-list
	    (or default-font-name "Monospace")))

(provide 'D)
