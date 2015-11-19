(require 'cl)

(defun invert-t-or-f ()
  ; Changes false to true and true to false at the
  ; current cursor position. Keybinding defaults to
  ; M-~, replacing the former binding
  (interactive)
  (let* ((truePoint (+ (point) 4))
		(falsePoint (+ (point) 5))
		(true (buffer-substring (point) truePoint))
		(false (buffer-substring (point) falsePoint)))

	(if (equal true "true")
		(progn
		  (delete-char 4)
		  (insert "false"))
	  (if (equal false "false")
		(progn
		  (delete-char 5)
		  (insert "true")))

	)))

(global-unset-key "\M-~")
(global-set-key (kbd "M-~") 'invert-t-or-f)
