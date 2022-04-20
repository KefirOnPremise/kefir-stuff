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
   indent-tabs-mode nil)

  (set-frame-font "Terminus 14" nil t)
  (load-theme 'vscode-dark-plus))

(provide 'kefir-stuff)
