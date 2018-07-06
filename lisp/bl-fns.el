;;; #fns.el
;;; Comentary:
;;; My own personal fns
;;; Code:

;; From the emacs wiki
(defun neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (ffip-project-root))
	(file-name (buffer-file-name)))
    (if project-dir
	(progn
	  (neotree-dir project-dir)
	  (neotree-find file-name))
      (message "Could not find git project root."))))

(provide 'bl-fns)
;;; fns.el ends here
