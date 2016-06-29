;; helm from https://github.com/emacs-helm/helm
(require 'helm)

(require 'helm-swoop)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; enable the tab key to make auto complete
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
