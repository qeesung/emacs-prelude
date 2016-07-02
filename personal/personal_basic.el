(global-linum-mode t)

;; set the default font
;(set-default-font "Consolas-12")
(add-to-list 'default-frame-alist
             '(font . "Consolas-12"))
(setq face-font-rescale-alist '(("微软雅黑" . 1.15) ("Microsoft Yahei" . 1.2) ("WenQuanYi Zen Hei" . 1.2)))
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
