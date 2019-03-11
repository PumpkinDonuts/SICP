(load "math.scm")
(define (func_re n)
	(cond ((< n 3) n)
	      (else (+ (func_re (- n 1))
		       (* (func_re (- n 2)) 2)
		       (* (func_re (- n 3)) 3)))))

(define (func_it n)
	(cond ((< n 3) n)
	      (else (func_iter_count 2 1 0 (- n 2)))))

(define (func_iter_count a b c count)
	(cond ((= count 1) (+ (+ (* 3 c) (* 2 b)) a))
	      (else (func_iter_count (+ (+ (* 3 c) (* 2 b)) a) a b (- count 1)))))


