;;; #init-rust.el
;;; Commentary
;;; Code:
(use-package rust-mode)
(use-package flymake-rust)
(use-package racer)
(use-package company)
(use-package cargo
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))
(provide 'init-rust)
;;; init-rust.el ends here
