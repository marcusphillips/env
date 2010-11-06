;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
(setq transient-mark-mode t)
;

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; disable startup message
(setq inhibit-splash-screen t)

;; always end a file with a newline
;(setq require-final-newline 'query)

;(load-file "/home/build/public/eng/elisp/google.el")
;(setq p4-use-p4config-exclusively t)

(setq load-path (cons "/home/boehmeron/.elisp/" load-path))
(set 'nxml-path "/home/boehmeron/.elisp/nxml/")

(load (concat nxml-path "rng-auto.el"))

;(require 'show-wspace)
;(add-hook 'font-lock-mode-hook 'show-ws-highlight-tabs)

(require 'ido)
(ido-mode t)
;(xsetq ido-enable-flex-matching t)

(require 'css-mode)
(require 'php-mode)
(require 'javascript-mode)
(require 'actionscript-mode)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


(add-hook 'css-mode-hook
          (lambda ()
            (define-key cssm-mode-map (kbd "{") 'self-insert-command)
            (define-key cssm-mode-map (kbd "(") 'self-insert-command)
            (define-key cssm-mode-map (kbd "[") 'self-insert-command)
            (define-key cssm-mode-map (kbd "\"") 'self-insert-command)
            (define-key cssm-mode-map (kbd "RET") 'newline-and-indent)))

(add-hook 'python-mode-hook
          (lambda ()
            (define-key python-mode-map (kbd "RET") 'newline-and-indent)))

(add-hook 'c-mode-hook
          (lambda ()
            (define-key c-mode-map (kbd "RET") 'newline-and-indent)
            (define-key c-mode-map (kbd "C-c >") 'c-indent-line-or-region)))

(add-hook 'actionscript-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)))

(setq default-truncate-lines t)

(setq cssm-indent-function #'cssm-c-style-indenter)
(setq cssm-indent-level 4)

(setq default-tab-width 2)

(global-set-key (kbd "C-c c") (quote count-words-region))
(global-set-key (kbd "C-c w") (quote delete-trailing-whitespace))
(global-set-key (kbd "C-#") (quote comment-region))
(global-set-key (kbd "M-#") (quote uncomment-region))
(global-set-key (kbd "M-o") (quote find-file-at-point))
(global-set-key (kbd "M-l") (quote goto-line))
(global-set-key (kbd "M-c") (quote compile))
(global-set-key (kbd "<home>") (lambda () (interactive) (bookmark-jump "quick")))
(global-set-key (kbd "<end>") (lambda () (interactive) (bookmark-set "quick")))
(global-set-key (kbd "<f9>") (quote ido-switch-buffer))
(global-set-key (kbd "<f12>") (quote call-last-kbd-macro))
(global-set-key (kbd "M-/") (quote hippie-expand))
(global-set-key (kbd "M-z") (quote zap-up-to-char))
(global-set-key (kbd "M-Z") (quote zap-to-char))
(global-set-key (kbd "C-c ?") (quote blink-matching-open))
(global-set-key (kbd "C-c >") (quote indent-region))
(global-set-key (kbd "C-x p") (quote (other-window -1)))

;(windmove-default-keybindings 'shift)
(global-set-key "[1;2C" 'windmove-right)
(global-set-key "[1;2D" 'windmove-left)
(global-set-key "[1;2A" 'windmove-up)
(global-set-key "[1;2B" 'windmove-down)

(defun d-add-mode (pair)
  (setq auto-mode-alist (cons pair auto-mode-alist)))

(d-add-mode '(".*\.hh$" . c++-mode))
(d-add-mode '(".*\.py$" . python-mode))
(d-add-mode '(".*\.py-[a-zA-Z0-9]+" . python-mode))
(d-add-mode '(".*\.xml$" . nxml-mode))
(d-add-mode '(".*\.xhtml$" . nxml-mode))
(d-add-mode '(".*\.css$" . css-mode))
(d-add-mode '(".*\.as$" . actionscript-mode))
(d-add-mode '(".*\.php$" . php-mode))

(bookmark-delete "quick")

(put 'narrow-to-region 'disabled nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 2)
 '(c-echo-syntactic-information-p nil)
 '(column-number-mode t)
 '(comment-column 32)
 '(frame-background-mode (quote dark))
 '(global-disable-point-adjustment nil t)
 '(hippie-expand-try-functions-list (quote (try-expand-all-abbrevs try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill try-expand-line try-expand-list try-complete-file-name-partially try-complete-file-name try-complete-lisp-symbol-partially try-complete-lisp-symbol)))
 '(ido-enable-tramp-completion nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(mouse-wheel-mode t nil (mwheel))
 '(mouse-yank-at-point t)
 '(nxml-auto-insert-xml-declaration-flag t)
 '(ps-default-bg 1.0)
 '(ps-default-fg 0.0)
 '(ps-print-color-p (quote black-white))
 '(scheme-mit-dialect nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t nil (paren))
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil nil (tool-bar))
 '(tramp-default-method "ssh2")
 '(visible-bell t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((nil (:foreground "red"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "cyan"))))
 '(font-lock-string-face ((nil (:foreground "green"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow")))))

(define-derived-mode cheetah-mode html-mode "Cheetah"
  (make-face 'cheetah-variable-face)
  (font-lock-add-keywords
   nil
   '(
     ("\(#\(from\|else\|try\|pass\|silent\|except\|include\|set\|import\|for\|if\|end\)+\)\>" 1 font-lock-type-face)
     ("\(#\(from\|for\|end\)\).*\<\(for\|import\|if\|try\|in\)\>" 3 font-lock-type-face)
     ("\(\$\(?:\sw\|}\|{\|\s_\)+\)" 1 font-lock-variable-name-face))
   )
  (font-lock-mode 1)
  )

;;(setq auto-mode-alist (cons '( "\.tmpl'" . cheetah-mode ) auto-mode-alist ))
(add-to-list 'auto-mode-alist '("\\.tmpl$" . cheetah-mode ))

(autoload 'longlines-mode
  "longlines.el"
  "Minor mode for automatically wrapping long lines." t)

(require 'uniquify)
(setq
 uniquify-buffer-name-style 'post-forward
 uniquify-separator ":")

(add-hook 'js2-mode-hook 'space-indent)
(add-hook 'js2-mode-hook (setq c-basic-offset 4))

;; recentf stuff
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(defun prev-window ()
  (interactive)
  (other-window -1)
)

;; My Keys
(global-set-key (kbd "C-M-o") 'prev-window)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "C-x C-b") 'next-buffer)

(setq auto-mode-alist (cons '("BUILD" . python-mode) auto-mode-alist))