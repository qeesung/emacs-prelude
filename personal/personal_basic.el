(global-linum-mode t)
(setq cygwin-bin "c:\\cygwin64\\bin")
;; set the default font
;(set-default-font "Consolas-12")
(add-to-list 'default-frame-alist
             '(font . "Consolas-12"))
;; Setting Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "微软雅黑" :size 14)))

(prefer-coding-system 'utf-8)

(setq default-directory "~/")

;; set file to auto refresh when change detected (➢ for example: changed by other)
(global-auto-revert-mode 1)

(require 'spaceline-config)
(spaceline-spacemacs-theme)

(add-to-list 'default-frame-alist '(fullscreen . maximized))


;; define my own find and grep exe file in windows
(setq find-program "E:/UserPersonalInstallation/Git/usr/bin/find.exe")
(setq grep-program "E:/UserPersonalInstallation/Git/usr/bin/grep.exe")

;; select current line
(defun select-current-line()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

;; define the key
(global-set-key (kbd "C-;") 'select-current-line)
;;; some basic

;;; enable some basic configuration for neotree
(require 'neotree)
(global-set-key [f1] 'neotree-toggle)

(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))


(require 'ztree)
(global-set-key [f5] 'ztree-dir)
;;

(require 'indent-guide)
(indent-guide-global-mode)
;;;

(setq flyspell-issue-welcome-flag nil) ;; fix flyspell problem
;;;

;;; hook the emmet mode to the web mode
(add-hook 'web-mode-hook 'emmet-mode)

;;;

;;; configure the web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;;; assoicate an engine
(setq web-mode-engines-alist
      '(("php"    . "\\.phtml\\'")
        ("blade"  . "\\.blade\\."))
      )

(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/some/react/path/.*\\.js[x]?\\'" . web-mode))

(setq web-mode-content-types-alist
      '(("json" . "/some/path/.*\\.api\\'")
        ("xml"  . "/other/path/.*\\.api\\'")
        ("jsx"  . "/some/react/path/.*\\.js[x]?\\'")));


(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

;;;
(global-set-key (kbd "C-.") 'er/expand-region)

(nyan-mode 1)
(nyan-start-animation)

(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)
(setq company-dabbrev-downcase nil)
(setq company-dabbrev-other-buffers t)
(setq company-auto-complete nil)
(setq company-dabbrev-code-other-buffers 'all)
(setq company-dabbrev-code-everywhere t)
(setq company-dabbrev-code-ignore-case t)
(global-set-key (kbd "C-<tab>") 'yas-expand)
(global-set-key (kbd "M-<tab>") 'company-complete)
(global-set-key (kbd "C-c C-y") 'company-yasnippet)


(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(global-set-key (kbd "C-x p") 'yas-expand)
