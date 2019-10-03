;;; package --- caniuse

;;; Commentary:

;;; Code:
(defun caniuse (query)
  "Search on caniuse for QUERY."
  (browse-url (format "https://www.caniuse.com/#search=%s" query)))

(defun caniuse-search (query)
  "Search on caniuse interactively for QUERY."
  (interactive "sFeature to query: ")
  (caniuse query))

(defun caniuse-at-point ()
  "Search `thing-at-point` on caniuse."
  (interactive)
  (caniuse (thing-at-point 'symbol)))

(provide 'caniuse)
;;; caniuse ends here
