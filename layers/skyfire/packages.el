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
  '(
    auto-complete
    company-dcd
    d-mode
    format-all
    company-tabnine
    graphviz-dot-mode
    counsel-etags
    )
  )


(defun skyfire/init-auto-complete()
  (progn
    )
  )

(defun skyfire/init-company-dcd()
  (progn
    (require 'company-dcd)
    (add-hook 'd-mode-hook 'company-dcd-mode)
    )
  )

(defun skyfire/init-d-mode()
  (progn

    )
  )

(defun skyfire/init-format-all()
  (progn
    (add-hook 'before-save-hook 'format-all-buffer
              )
    )
  )

(defun skyfire/init-company-tabnine()
  (progn
    (require 'company-tabnine)
    (setq company-tabnine-insert-arguments nil)
    (setq company-tabnine-wait 0.5)
    (add-to-list 'company-backends #'company-tabnine)
    )
  )

(defun skyfire/init-counsel-etags()
  (progn
    (global-set-key (kbd "<f12>") 'counsel-etags-find-tag-at-point)
    )
  )
