;;; #init-rust.el
;;; Commentary
;;; Code:
(use-package rust-mode
  :config
  (add-hook 'rust-mode-hook )
  )
(use-package flymake-rust
  :config
  (add-hook 'flymake-rust-hook )
  )
(use-package racer)
(use-package company)

(provide 'init-rust)
;;; init-rust.el ends here
