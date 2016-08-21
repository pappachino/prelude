;;
;;; Personal keybindings - pappachino
;;

;; usual search
(global-set-key [f2] 'isearch-forward)
(global-set-key [f3] 'isearch-repeat-forward)
(global-set-key [(shift f3)] 'isearch-repeat-backward)

;; symbol at point
(global-set-key [f4] 'isearch-forward-symbol-at-point)

;; ibuffer
(global-set-key [f5] 'helm-for-files)

;; switch windows
(global-set-key [(shift f5)] 'winner-undo)
(global-set-key [(shift f6)] 'winner-redo)

;; look up for a symbol
(global-set-key [f6] 'prelude-goto-symbol)

;; delete file and buffer window
(global-set-key [f7] 'delete-window)

;; find and load file / buffer in another window
(global-set-key [f8] 'ido-find-file-other-window)
(global-set-key [f11] 'ido-find-file)
(global-set-key [(shift f8)] 'ido-switch-buffer-other-window)
(global-set-key [(shift f11)] 'ido-switch-buffer)

;; goto a specific line
(global-set-key [f9] 'goto-line)

;; f10??

;; Switching windows (TODO:  Needs some fix)
;;(global-set-key [M-up] 'windmove-up)              ; move to upper window
;;(global-set-key [M-down] 'windmove-down)          ; move to downer window
(global-set-key [M-left] 'windmove-left)          ; move to left window
(global-set-key [M-right] 'windmove-right)        ; move to right window
;; remap the smartparent keybinding with SHIFT - DO NOT WORK
;;(global-set-key [(shift up)] 'sp-splice-sexp-killing-backward)
;;(global-set-key [(shift down)] 'sp-splice-sexp-killing-forward)


;; override keybindings using my-mode-map
;; up and down are being overriden by smartparens. Hence the my-mode-map
;; http://emacs.stackexchange.com/questions/352/how-to-override-major-mode-bindings
;; http://nullprogram.com/blog/2013/02/06/
(define-key my-mode-map [M-up] 'windmove-up)
(define-key my-mode-map [M-down] 'windmove-down)

(provide 'personal_keybindings)
;;;
