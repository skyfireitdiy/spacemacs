
(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     html
     javascript
     python
     (go :variables go-tab-width 4)
     sql
     lua
     d
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            )     helm
     (auto-completion
      :variables
      auto-completion-return-key-behavior 'complete
      auto-completion-tab-key-behavior 'complete
      auto-completion-enable-snippets-in-popup t
      auto-completion-enable-help-tooltip t
      auto-completion-enable-sort-by-usage t)
     (better-defaults
      :variables
      better-defaults-move-to-beginning-of-code-first t
      better-defaults-move-to-end-of-code-first t
      )
     emacs-lisp
     git
     (markdown :variables
               )
     org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-term-shell "/bin/bash"
            shell-default-full-span nil
            shell-enable-smart-eshell t
            )
     spell-checking
     syntax-checking
     version-control
     (chinese :variables
              chinese-enable-youdao-dict t))
   dotspacemacs-additional-packages '(
                                      company-tabnine
                                      graphviz-dot-mode
                                      counsel-etags
                                      format-all
                                      ob-go
                                      paredit
                                      )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-install-packages 'used-only))
(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'emacs
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'emacs-lisp-mode
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1
                               "微软雅黑"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1
                               )
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-helm-resize nil
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-helm-use-fuzzy 'always
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup t
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup nil
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers t
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server t
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup t
   ))
(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq configuration-layer--elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
  (setq-default git-magit-status-fullscreen t)
  )
(defun skyfire-setup-indent (n)
  (setq c-basic-offset n)
  (setq coffee-tab-width n)
  (setq javascript-indent-level n)
  (setq js-indent-level n)
  (setq js2-basic-offset n)
  (setq web-mode-markup-indent-offset n)
  (setq web-mode-css-indent-offset n)
  (setq web-mode-code-indent-offset n)
  (setq css-indent-offset n)
  (setq d-mode-indent-offset n)
  )
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (require 'company-tabnine)
  (setq company-tabnine-insert-arguments nil)
  (setq company-tabnine-wait 0.5)
  (add-to-list 'company-backends #'company-tabnine)
  (require 'org-tempo)
  (with-eval-after-load 'org
    (org-babel-do-load-languages
     'org-babel-load-languages
     '((emacs-lisp . t)
       (C . t)
       (go . t)
       (java . t)
       (js . t)
       (ruby . t)
       (ditaa . t)
       (python . t)
       (shell . t)
       (latex . t)
       (plantuml . t)
       (R . t)))
    )
  (global-git-commit-mode t)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  (global-linum-mode 1)
  (setq inhibit-splash-screen t)
  (global-hl-line-mode t)
  (add-hook 'before-save-hook 'format-all-buffer)
  (skyfire-setup-indent 4)
  (add-hook 'prog-mode-hook
            (lambda () (company-mode 1)))
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (setq company-auto-complete nil)
  (setq company-minimum-prefix-length 1)
  (setq company-auto-complete-chars nil)
  (setq company-tooltip-idle-delay 0.0)
  (setq ring-bell-function 'ignore)
  (electric-indent-mode 1)
  (setq make-backup-files nil)
  (delete-selection-mode t)
  (require 'recentf)
  (recentf-mode 1)
  (setq recentf-max-menu-items 25)
  (global-auto-revert-mode t)
  (add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
  (define-advice show-paren-function
      (:around (fn) fix-show-paren-function)
    "Highlight enclosing parens."
    (cond ((looking-at-p "\\s(")(funcall fn))
          (t (save-excursion (ignore-errors (backward-up-list))(funcall fn)))
          )
    )
  (defun remove-dos-eol()
    "Replace DOS eolns CR LF with Unix eolns CR"
    (interactive)
    (goto-char (point-min))
    (while (search-forward "\r" nil t)(replace-match "")))
  (fset 'yes-or-no-p 'y-or-n-p)
  (setq-default abbrev-mode t)
  (define-abbrev-table 'global-abbrev-table '(
                                              ("wmb", "Wang Maobin")
                                              ))
  (setq hippie-expand-try-functions-list '(
                                           try-expand-debbrev
                                           try-expand-debbrev-all-buffers
                                           try-expand-debbrev-from-kill
                                           try-complete-file-name-partially
                                           try-complete-file-name
                                           try-expand-all-debbrevs
                                           try-expand-list
                                           try-expand-line
                                           try-complete-lisp-symbol-partially
                                           try-complete-lisp-symbol
                                           ))
  (setq dired-recursive-deletes 'always)
  (setq dired-recursive-copies 'always)
  (put 'dired-find-alternate-file 'disabled nil)
  (with-eval-after-load 'dired (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
  (require 'dired-x)
  (sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
  (sp-local-pair 'lisp-interaction-mode "'" nil :actions nil)
  (add-hook 'prog-mode-hook
            (lambda () (company-mode 1)))
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  (setq company-auto-complete nil)
  (setq company-minimum-prefix-length 1)
  (setq company-auto-complete-chars nil)
  (setq company-tooltip-idle-delay 0.0)
  (when (package-installed-p 'indent-guide)
    (progn
      (indent-guide-global-mode)
      )
    )
  (global-set-key (kbd "C-h C-k") 'find-function-on-key)
  (global-set-key (kbd "<f8>") 'neotree-toggle)
  (global-set-key (kbd "C-S-\\") 'indent-region-or-buffer)
  (global-set-key (kbd "C-S-a") 'mark-page)
  (global-set-key (kbd "C-S-c") 'kill-ring-save)
  (global-set-key (kbd "C-S-v") 'yank)
  (global-set-key (kbd "C-S-x") 'kill-region)
  (global-set-key (kbd "C-S-z") 'undo)
  (global-set-key (kbd "C-S-o") 'counsel-find-file)
  (global-set-key (kbd "C-S-p") 'neotree-dir)
  (global-set-key (kbd "C-S-r") 'replace-string)
  (global-set-key (kbd "M-S-r") 'replace-regexp)
  (global-set-key (kbd "C-S-s") 'search-forward)
  (global-set-key (kbd "M-S-s") 'regexp-search)
  (global-set-key (kbd "C-S-g") 'goto-line)
  (global-set-key (kbd "C-?") 'comment-or-uncomment-region)
  (global-set-key (kbd "C-`") 'spacemacs/default-pop-shell)
  (global-set-key (kbd "C-o") 'ace-window)
  (global-set-key (kbd "C-c s c") 'company-mode)
  (global-set-key (kbd "C-c s r") 'recentf-open-files)
  (global-set-key (kbd "C-c s y") 'youdao-dictionary-search-at-point+)
  (global-set-key (kbd "<f12>") 'counsel-etags-find-tag-at-point)
  (global-set-key (kbd "C-c e f") 'counsel-etags-find-tag)
  (global-set-key (kbd "C-c e s") 'counsel-etags-grep)
  (global-set-key (kbd "C-c e l") 'counsel-etags-list-tag)
  (global-set-key (kbd "C-c e r") 'counsel-etags-recent-tag)
  (global-set-key (kbd "C-c e s") 'counsel-etags-scan-code)  )
(custom-set-variables
 '(cursor-type (quote (bar . 1)))
 '(display-raw-bytes-as-hex t)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
    (web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data paredit web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc company-tern tern coffee-mode yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic ob-go vmd-mode company-c-headers disaster cmake-mode clang-format company-quickhelp youdao-dictionary chinese-word-at-point go-guru go-eldoc company-go go-mode sql-indent graphviz-dot-mode format-all counsel-etags company-tabnine unicode-escape names pyim pyim-basedict xr pangu-spacing find-by-pinyin-dired ace-pinyin pinyinlib wgrep smex ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper lua-mode d-mode company-dcd ivy flycheck-dmd-dub xterm-color unfill smeargle shell-pop orgit org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download mwim multi-term mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup htmlize helm-gitignore helm-company helm-c-yasnippet gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit transient git-commit with-editor eshell-z eshell-prompt-extras esh-help diff-hl company-statistics company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(standard-indent 4))
(custom-set-faces
 )
