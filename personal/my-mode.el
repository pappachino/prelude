;; Source: http://nullprogram.com/blog/2013/02/06    

;; My minor mode
;; Main use is to have my key bindings have the highest priority

(defvar my-mode-map (make-sparse-keymap)
"Keymap while my-mode is active.")

;;;###autoload
(define-minor-mode my-mode
  "A minor mode so that my key settings override annoying major modes."
  nil
  :lighter " my-mode"
  my-mode-map)

;; Source: http://stackoverflow.com/questions/683425/globally-override-key-binding-in-emacs
(defadvice load (after give-my-keybindings-priority)
  "Try to ensure that my keybindings always have priority."
  (if (not (eq (car (car minor-mode-map-alist)) 'my-mode))
      (let ((mykeys (assq 'my-mode minor-mode-map-alist)))
        (assq-delete-all 'my-mode minor-mode-map-alist)
        (add-to-list 'minor-mode-map-alist mykeys))))
(ad-activate 'load)

;;;###autoload
(defun turn-on-my-mode ()
  "Turns on my-mode."
  (interactive)
  (my-mode 1))

;;;###autoload
(defun turn-off-my-mode ()
  "Turns off my-mode."
  (interactive)
  (my-mode -1))

;;;###autoload
;;(define-globalized-minor-mode global-my-mode my-mode turn-on-my-mode)
(add-hook 'python-mode-hook 'my-mode)

;; Turn off the minor mode in the minibuffer
(add-hook 'minibuffer-setup-hook #'turn-off-my-mode)

(provide 'my-mode)
