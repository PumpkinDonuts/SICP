(load "math.scm")
(define (pascal_num row col)
	(cond ((< col 1)   0)
	      ((> col row) 0)
	      ((< row 1)   0)
	      ((= col 1)   1)
              ((= col row) 1)
              (else (+ (pascal_num (- row 1) (- col 1)) (pascal_num (- row 1) col)))))
