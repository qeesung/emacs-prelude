(require 'key-chord)

(key-chord-define-global "ww" 'er/mark-word)
(key-chord-define-global "ee" 'er/expand-region)
(key-chord-define-global "mm" 'set-mark-command)

(key-chord-mode +1)
