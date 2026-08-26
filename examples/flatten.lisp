; Flatten a list by unnesting nested lists
; For example (flatten '(1 (2 (a b . c)) 3 (x (y)) 4 . 5)) returns (1 2 a b c 3 x y 4 5)
; Requires function append from list.lisp (load list.lisp)

(define flatten
    (lambda (t)
        (cond
            ((pair? t) (append (flatten (car t)) (flatten (cdr t))))
            ((not t)   ())
            (#t        (list t)))))
