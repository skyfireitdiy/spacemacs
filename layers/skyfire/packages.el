;;; packages.el --- skyfire layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: skyfire <skyfire@skyfire-pc>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `skyfire-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `skyfire/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `skyfire/pre-init-PACKAGE' and/or
;;   `skyfire/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst skyfire-packages
  '(company-tabnine
    graphviz-dot-mode
    counsel-etags
    format-all
    ob-go
    paredit
    )
  "The list of Lisp packages required by the skyfire layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")


(defun skyfire/init-company-tabnine()
  (progn
    (require 'company-tabnine)
    (setq company-tabnine-insert-arguments nil)
    (setq company-tabnine-wait 0.5)
    (add-to-list 'company-backends #'company-tabnine)
    )
  )

(defun skyfire/init-graphviz-dot-mode()
  (progn
    )
  )

(defun skyfire/init-counsel-etags()
  (progn
    (global-set-key (kbd "<f12>") 'counsel-etags-find-tag-at-point)
    (global-set-key (kbd "C-c e f") 'counsel-etags-find-tag)
    (global-set-key (kbd "C-c e s") 'counsel-etags-grep)
    (global-set-key (kbd "C-c e l") 'counsel-etags-list-tag)
    (global-set-key (kbd "C-c e r") 'counsel-etags-recent-tag)
    (global-set-key (kbd "C-c e s") 'counsel-etags-scan-code)
    )
  )

(defun skyfire/init-format-all()
  (progn
    (add-hook 'before-save-hook 'format-all-buffer)
    )
  )

(defun skyfire/init-ob-go()
  (progn
    )
  )

(defun skyfire/init-paredit()
  (progn
    )
  )

;;; packages.el ends here
