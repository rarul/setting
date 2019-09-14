;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
(setq require-final-newline 'query)

(load-library "kermit")
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)

(column-number-mode t)
(setq scroll-step 0)

;(defvar gud-gud-gdb-history (list "aarch64-linux-gdb  --fullname"))
(defvar gud-gud-gdb-history (list "arm-linux-gnueabihf-gdb  --fullname"))
;(require 'git)

(autoload 'perl-debug "perl-debug" nil t)
(autoload 'perl-debug-lint "perl-debug" nil t)

(transient-mark-mode 2)
(show-paren-mode t)
(setq show-paren-style 'expression)
(put 'scroll-left 'disabled nil)
(require 'hl-line)
(global-hl-line-mode)
(setq hl-line-face 'underline)

(setq split-height-threshold nil)
(setq split-width-threshold nil)
(menu-bar-mode 0)
(tool-bar-mode 0)

;(which-func-mode t)
;(setq which-func-modes t)
;(delete (assoc 'which-func-mode mode-line-format) mode-line-format)
;(setq which-func-header-line-format
;      '(which-func-mode
;        ("" which-func-format)))
;(defadvice which-func-ff-hook (after header-line activate)
;  (when which-func-mode
;    (delete (assoc 'which-func-mode mode-line-format) mode-line-format)
;    (setq header-line-format which-func-header-line-format)))

; open file as read-only mode
; please change the mode as dynamic by 'M-x toggle-read-only'
; please change per file by 'C-x C-q'
(add-hook 'find-file-hooks 'view-mode)

; indent words, coding style
(add-hook 'c-mode-common-hook
        (lambda ()
;                (c-set-style "bsd")
                (setq c-basic-offset 4)))
(custom-set-variables
 '(tab-width 4))
;stop to use tab. always space.
(setq-default indent-tabs-mode nil)


