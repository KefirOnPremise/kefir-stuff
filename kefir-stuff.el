(require 'tools/backup)

(defun font-exists-p (font)
  "check if a font is available"
  (if (null (x-list-fonts font))
      nil
    t))

(defun kefir-stuff-config ()
  (interactive)

  (setq backup-by-copying t)
  (setq backup-directory-alist '(("." . "~/.emacs-saves/")))
   
  (setq delete-old-versions t)
  (setq kept-new-versions 6)
  (setq kept-old-versions 2)
  (setq indent-tabs-mode nil)
  (setq dired-listing-switches "-alFh")

  (menu-bar-mode -1)
  (when (display-graphic-p)
    (scroll-bar-mode -1)
    (tool-bar-mode -1)))



(provide 'kefir-stuff)
