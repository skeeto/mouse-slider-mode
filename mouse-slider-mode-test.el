(require 'ert)

(ert-deftest mouse-slider-replace-number ()
  (with-temp-buffer
    (insert "(setf foo 102)")
    (goto-char 11)
    (mouse-slider-replace-number "-34.4")
    (should (equal "(setf foo -34.4)" (buffer-string)))))
