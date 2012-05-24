;;;;;;;;;;;;;;;;;;;;
;; set up unicode
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
;; This from a japanese individual.  I hope it works.
(setq default-buffer-file-coding-system 'utf-8)
;; From Emacs wiki
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(setq x-select-enable-clipboard t)

(add-to-list 'load-path "~/.emacs.d/site-lisp")
;; needed to run newest version of org

(setq tab-width 4)
;;; Prevent Extraneous Tabs
(setq-default indent-tabs-mode nil)
(set-default 'indicate-empty-lines t)
(menu-bar-mode 0)
(set-default 'imenu-auto-rescan t)

; default to unified diffs
(setq diff-switches "-u")
; Don't clutter up directories with files~

;; php-mode
(autoload 'php-mode "~/.emacs.d/site-lisp/php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl$" . html-mode))
(defun my-php-mode-common-hook ()
  ;; my customizations for php-mode
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (c-set-offset 'topmost-intro-cont 4)
  (c-set-offset 'class-open 0)
  (c-set-offset 'inline-open 0)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'arglist-intro '+)
  )
(add-hook 'php-mode-hook 'my-php-mode-common-hook)

;; launchpad required by org2blog
(require 'xml-rpc)
;; org2blog
;;(setq load-path (cons "~/.emacs.d/org2blog/" load-path))
(require 'org2blog-autoloads)
(setq org2blog/wp-blog-alist
       '(("wordpress"
          :url "http://readystate4.com/xmlrpc.php"
          :username "admin"
          :default-title "Hello World"
          :tags-as-categories nil)))

;; sass-mode
(autoload 'sass-mode "~/.emacs.d/site-lisp/sass-mode" t)
(add-to-list 'auto-mode-alist '("\\.scss$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\Jakefile$" . js-mode))

(add-hook 'html-mode-hook
          (lambda()
            (setq sgml-basic-offset 4)
           ))

;; Set to the location of your Org files on your local system
(setq org-directory "~/Dropbox/bin/org")
;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/bin/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/MobileOrg")
;;(setq org-export-with-sub-superscripts nil)

;; (setq mac-allow-anti-aliasing nil)
(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen (if (frame-parameter nil 'fullscreen)
                                           nil
                                           'fullboth)))
;;(mac-toggle-max-window)

(defun other-window-reverse ()
 (interactive)
 (other-window -1))

(setq visible-bell t)
;(setq ring-bell-function (lambda () (message "*beep*")))
;(set-message-beep 'silent)

;;(add-to-list 'load-path  "~/Dropbox/emacs/")

(iswitchb-mode 1)
(setq font-lock-maximum-decoration t)
(setq show-trailing-whitespace t)
;(setq visible-bell nil)
(setq ring-bell-function 'ignore-bell)
(setq column-number-mode t)
(setq-default transient-mark-mode t)
(blink-cursor-mode nil)
(setq search-highlight t)
(show-paren-mode 1)
(size-indication-mode t)
(menu-bar-mode -1)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(Info-additional-directory-list (quote ("/usr/share/info")))
 '(asm-comment-char 35)
 '(c-auto-align-backslashes nil)
 '(c-block-comment-prefix "")
 '(c-default-style (quote ((c-mode . "gnu") (objc-mode . "gnu") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(c-echo-syntactic-information-p nil)
 '(c-indent-comments-syntactically-p t)
 '(c-report-syntactic-errors nil)
 '(c-strict-syntax-p t)
 '(comment-auto-fill-only-comments t)
 '(comment-column 0)
 '(comment-fill-column 0)
 '(comment-multi-line t)
 '(comment-padding "")
 '(comment-style (quote indent))
 '(cursor-in-non-selected-windows nil)
 '(display-time-day-and-date nil)
 '(display-time-mode t)
 '(eval-expression-print-length nil)
 '(fringe-mode nil nil (fringe))
 '(global-cwarn-mode nil)
 '(hl-line-face (quote highlight))
 '(indicate-buffer-boundaries nil)
 '(inhibit-startup-echo-area-message "pavel")
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(objc-mode-hook (quote (objc-mode-fixes-hook)))
 '(safe-local-variable-values (quote ((sgml-basic-offset . 4) (tab-always-indent . t) (c-tab-always-indent . t))))
 '(show-paren-style (quote expression))
 '(show-trailing-whitespace t)
 '(vc-follow-symlinks nil))

(setq suggest-key-bindings t)
(global-set-key [?\C-=] 'shrink-window-horizontally)
(global-set-key [?\C-+] 'enlarge-window-horizontally)
(global-set-key [(control tab)] 'delete-backward-char)
(global-set-key [(backtab)] 'backward-kill-word)
;;(global-set-key "\C-cc" 'comment-region)
;;(global-set-key "\C-cu" 'uncomment-region)
;;(global-set-key "\C-cr" 'kill-comment)
(global-set-key [(control meta .)] 'end-of-buffer)
(global-set-key [control meta \,] 'beginning-of-buffer)

(defun other-window-reverse ()
 (interactive)
 (other-window -1))
(global-set-key "\C-xp" 'other-window-reverse)

(setq auto-mode-alist (append '(("\\.mod$" . php-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.tpl$" . php-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.js$" . js-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.html$" . html-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.yaws$" . html-mode)) auto-mode-alist))
(setq auto-mode-alist (append '(("\\.htm$" . html-mode)) auto-mode-alist))

(defalias 'yes-or-no-p 'y-or-n-p)
;; shortcuts
(defalias 'dtw 'delete-trailing-whitespace)
(defalias 'rb 'revert-buffer)

(defun objc-mode-fixes-hook ()
  "Hook to customize objc-mode the way I want it."
  (set 'comment-start "/*")
  (set 'comment-end "*/")
)

(set-cursor-color "#6677FF")

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "#000" :foreground "gray78" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 125 :width normal :family "apple-bitstream vera sans mono"))))
 '(border ((t (:background "black" :foreground "black"))))
 '(cursor ((t (:background "red2"))))
 '(font-lock-builtin-face ((t (:foreground "#00AAFF"))))
 '(font-lock-comment-face ((t (:foreground "darkkhaki"))))
 '(font-lock-doc-face ((t (:foreground "darkkhaki"))))
 '(font-lock-function-name-face ((t (:foreground "green" :background "#000000"))))
 '(font-lock-keyword-face ((t (:foreground "#FF6600"))))
 '(font-lock-string-face ((t (:foreground "#FC0"))))
 '(font-lock-type-face ((t (:foreground "#A9B9F9"))))
 '(font-lock-variable-name-face ((t (:foreground "yellow"))))
 '(fringe ((t (:background "black" :foreground "blue"))))
 '(highlight ((t (:background "#222"))))
 '(minibuffer-prompt ((((background dark)) (:foreground "dark gray"))))
 '(mode-line ((t (:background "black" :foreground "green"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-highlight ((t (:inherit highlight))))
 '(mode-line-inactive ((nil (:background "black" :foreground "white"))))
 '(region ((t (:background "#111"))))
 '(scroll-bar ((t (:background "grey75" :foreground "black"))))
 '(show-paren-match ((((class color)) (:background "#232323"))))
 '(trailing-whitespace ((((class color) (background dark)) (:background "orange"))))
 '(vertical-border ((nil nil)))
 '(volume-bar ((t (:weight bold)))))

;; load these only if using GUI emacs
(when (display-graphic-p)
  (global-font-lock-mode t)
  ;; disables scrollbar
  (scroll-bar-mode -1)
  ;; disable the top toolbar
  (tool-bar-mode -1)
  (display-battery-mode 1))

(put 'narrow-to-region 'disabled nil)

 (defun fullscreen (&optional f)
      (interactive)
      (set-frame-parameter f 'fullscreen
                           (if (frame-parameter f 'fullscreen) nil 'fullboth)))
    (global-set-key [f11] 'fullscreen)
   (add-hook 'after-make-frame-functions 'fullscreen)

; better buffer list by jorge
;(defun my-buffer-list (&optional n)
;  "Display buffer list"   (interactive "p")
;  (switch-to-buffer "*Buffer List*")
;  (list-buffers)
;  (goto-char 1)
;
;  (global-set-key "\C-b" 'my-buffer-list)
;  (if (>= emacs-major-version 23)
;      (progn
;	(require 'ido)
;	(ido-mode t)
;	(setq ido-enable-flex-matching t)))

(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have

;; This tab override shouldn't be necessary given ido's default
;; configuration, but minibuffer-complete otherwise dominates the
;; tab binding because of my custom tab-completion-everywhere
;; configuration.
(add-hook 'ido-setup-hook
          (lambda ()
            (define-key ido-completion-map [tab] 'ido-complete)))

;; ORG MODE STUFF
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; already set
(setq-default transient-mark-mode t)

;; timestamp DONE
;;(setq org-log-done 'time)

(setq-default tab-width 4) ; set tab width to 4 for all buffers

;; Enable syntax highlighting
;;(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
;;disable backup
;;(setq backup-inhibited t)
;;disable auto save
(setq auto-save-default nil)

;; git rid of annoying welcome screen
(setq inhibit-splash-screen t)

;; uniquely identify buffer names
(require 'uniquify)
(autoload 'magit-status "magit" nil t)

;; yasnippet
(add-to-list 'load-path
             "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet-bundle)
(set-face-background  'yas/field-highlight-face nil)
;;(set-face-background  'yas/mirror-highlight-face "Grey10")
(yas/initialize)
(yas/load-directory "~/.emacs.d/site-lisp/yasnippet/snippets")

;;(require 'magit)

(global-set-key "\C-ci" 'magit-status)
(defalias 'gs 'magit-status)

(setq  uniquify-buffer-name-style 'post-forward uniquify-separator ":")

(add-hook 'c-mode-common-hook
		  (lambda()
			(local-set-key (kbd "C-c <right>") 'hs-show-block)
			(local-set-key (kbd "C-c <left>")  'hs-hide-block)
			(local-set-key (kbd "C-c <up>")    'hs-hide-all)
			(local-set-key (kbd "C-c <down>")  'hs-show-all)
			(hs-minor-mode t)))

;; change magit diff colors
(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(eval-after-load 'diff-mode
  '(progn
     (set-face-foreground 'diff-added "green4")
     (set-face-foreground 'diff-removed "red3")))

; to do lists and notes I keep on dropbox
(defun todo ()
  (interactive)
  (find-file "~/Dropbox/bin/org/todo.org"))

(defun emacs ()
  (interactive)
  (find-file "~/Dropbox/bin/org/emacs.org"))

(defun unix ()
  (interactive)
  (find-file "~/Dropbox/bin/org/unix.org"))


; in dired mode you can use 'a' instead of o to open links in same window
(put 'dired-find-alternate-file 'disabled nil)

'(lambda()
   (setq show-trailing-whitespace nil)
   (term-line-mode))

(defvar term-mode-hook
  '(lambda()
     (setq show-trailing-whitespace nil)
     (term-line-mode)))

(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))
