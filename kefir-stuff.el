(require 'tools/backup)

(defun font-exists-p (font)
  "check if a font is available"
  (if (null (x-list-fonts font))
      nil
    t))

(defun kefir-stuff-config ()
  (interactive)

  (setq
   ;; backup settings
   backup-by-copying t
   backup-directory-alist
   '(("." . "~/.emacs-saves/"))
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   indent-tabs-mode nil
   dired-listing-switches "-alFh")

  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

(provide 'kefir-stuff)
