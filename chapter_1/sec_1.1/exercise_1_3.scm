(define (square x) (* x x))
(define (sum-of-square a b) (+ (square a) (square b)))
(define (>= a b) (or (> a b) (= a b)))
(define (<= a b) (or (< a b) (= a b)))
(define (max a b c) (cond  
			((and (>= a b) (>= a c)) a)
			((and (>= b a) (>= b c)) b)
			((and (>= c a) (>= c b)) c)))
(define (mid a b c) (cond
			((and (>= a b) (<= a c)) a)
			((and (>= b a) (<= b c)) b)
			((and (>= c a) (<= c b)) c)))
(define (func a b c) (sum-of-square (max a b c) (mid a b c)))

(func 1 2 3)
