(require 'key-chord)

(key-chord-mode +1)
(key-chord-define-global "mm" 'set-mark-command)
(key-chord-define-global "kk" 'iy-go-to-char)
(key-chord-define-global "KK" 'iy-go-to-char-bacKkward)
