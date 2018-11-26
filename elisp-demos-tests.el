(require 'ert)
(require 'elisp-demos)

(ert-deftest elisp-demos--search ()
  (should (stringp (elisp-demos--search 'mapcar)))
  (should (null (elisp-demos--search 'tom-and-jerry))))

(ert-deftest elisp-demos--symbols ()
  "Test if the return value is sorted alphabetically."
  (should (equal (elisp-demos--symbols)
                 (sort (elisp-demos--symbols) #'string<))))
