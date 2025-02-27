(include "#.scm")

(check-same-behavior ("" "##" "~~lib/gambit/prim/string#.scm")

;; R4RS

(list->string '(#\a #\b #\c))
(string-length (make-string 5)) (make-string 5 #\x)
(string) (string #\a) (string #\a #\b) (string #\a #\b #\c)
(string->list "abcde")
(string-append) (string-append "a") (string-append "a" "b") (string-append "a" "b" "c")
(string-ci<?) (string-ci<? "a") (string-ci<? "a" "b") (string-ci<? "b" "a") (string-ci<? "a" "b" "c") (string-ci<? "a" "a" "a") (string-ci<? "c" "b" "a") (string-ci<? "a" "A") (string-ci<? "A" "a")
(string-ci<=?)(string-ci<=? "a")(string-ci<=? "a" "b")(string-ci<=? "b" "a")(string-ci<=? "a" "b" "c")(string-ci<=? "a" "a" "a")(string-ci<=? "c" "b" "a")(string-ci<=? "a" "A")(string-ci<=? "A" "a")
(string-ci=?) (string-ci=? "a") (string-ci=? "a" "b") (string-ci=? "b" "a") (string-ci=? "a" "b" "c") (string-ci=? "a" "a" "a") (string-ci=? "c" "b" "a") (string-ci=? "a" "A") (string-ci=? "A" "a")
(string-ci>?) (string-ci>? "a") (string-ci>? "a" "b") (string-ci>? "b" "a") (string-ci>? "a" "b" "c") (string-ci>? "a" "a" "a") (string-ci>? "c" "b" "a") (string-ci>? "a" "A") (string-ci>? "A" "a")
(string-ci>=?)(string-ci>=? "a")(string-ci>=? "a" "b")(string-ci>=? "b" "a")(string-ci>=? "a" "b" "c")(string-ci>=? "a" "a" "a")(string-ci>=? "c" "b" "a")(string-ci>=? "a" "A")(string-ci>=? "A" "a")
(let ((x (string #\a #\b #\c #\d #\e))) (string-fill! x #\x) x)
(let ((x (string #\a #\b #\c #\d #\e))) (string-fill! x #\x 1) x)
(let ((x (string #\a #\b #\c #\d #\e))) (string-fill! x #\x 1 3) x)
(string-length "abcde")
(string-ref "abcde" 2)
(let ((x (string #\a #\b #\c #\d #\e))) (string-set! x 2 #\x) x)
(string<?) (string<? "a") (string<? "a" "b") (string<? "b" "a") (string<? "a" "b" "c") (string<? "a" "a" "a") (string<? "c" "b" "a") (string<? "a" "A") (string<? "A" "a")
(string<=?)(string<=? "a")(string<=? "a" "b")(string<=? "b" "a")(string<=? "a" "b" "c")(string<=? "a" "a" "a")(string<=? "c" "b" "a")(string<=? "a" "A")(string<=? "A" "a")
(string=?) (string=? "a") (string=? "a" "b") (string=? "b" "a") (string=? "a" "b" "c") (string=? "a" "a" "a") (string=? "c" "b" "a") (string=? "a" "A") (string=? "A" "a")
(string>?) (string>? "a") (string>? "a" "b") (string>? "b" "a") (string>? "a" "b" "c") (string>? "a" "a" "a") (string>? "c" "b" "a") (string>? "a" "A") (string>? "A" "a")
(string>=?)(string>=? "a")(string>=? "a" "b")(string>=? "b" "a")(string>=? "a" "b" "c")(string>=? "a" "a" "a")(string>=? "c" "b" "a")(string>=? "a" "A")(string>=? "A" "a")
(string? "abc") (string? 123)
(substring "abcde" 1 3)

;; R7RS

(string->utf8 "abcde") (string->utf8 "abcde" 1) (string->utf8 "abcde" 1 3)
;;unimplemented;;(string->vector "abcde") (string->vector "abcde" 1) (string->vector "abcde" 1 3)
(string-copy "abcde")
(string-copy "abcde" 1)
(string-copy "abcde" 1 3)
(string-downcase "AbCdE")
(let ((x (string #\a #\b #\c #\d)) (y (string #\e #\f #\g #\h #\i))) (string-copy! y 1 x) y)
(let ((x (string #\a #\b #\c #\d)) (y (string #\e #\f #\g #\h #\i))) (string-copy! y 1 x 2) y)
(let ((x (string #\a #\b #\c #\d)) (y (string #\e #\f #\g #\h #\i))) (string-copy! y 1 x 2 3) y)
(string-foldcase "AbCdE")
;;unimplemented;;(string-for-each string "ab") (string-for-each string "a" "b") (string-for-each string "a" "b" "c")
;;unimplemented;;(string-map string "ab") (string-map string "a" "b") (string-map string "a" "b" "c")
(string-upcase "AbCdE")
(utf8->string '#u8(65 66 67 68 69)) (utf8->string '#u8(65 66 67 68 69) 1) (utf8->string '#u8(65 66 67 68 69) 1 3)
;;unimplemented;;(vector->string '#(#\a #\b #\c)) (vector->string '#(#\a #\b #\c) 1) (vector->string '#(#\a #\b #\c) 1 3)

;; Gambit

(string-concatenate '("a" "b" "c"))
(string-ci=?-hash "AbCdE")
(string-set "abcde" 2 #\x)
(let ((x (string #\a #\b #\c #\d #\e))) (string-shrink! x 3) x)
(string=?-hash "abcde")
(let ((x (string #\a #\b #\c #\d #\e))) (substring-fill! x 1 3 #\x) x)
(let ((x (string #\a #\b #\c #\d)) (y (string #\e #\f #\g #\h #\i))) (substring-move! x 2 3 y 1) y)

)
