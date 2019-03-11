
;1 cent = 0.01us
;1 nickel = 0.05us = 5 cents
;1 dime = 0.1us = 10 cents
;1 quater = 0.25us = 25 cents
;1 half dollar = 0.5us = 50 cents
;1 dollar coin = 1us = 100 cents

;11cent = 0.11us

;123cent = 1.23us

(load "math.scm")
(define (num_max_cent_change cents)
	(cond ((>= cents 0) 1)
	      (else	   0)))

(define (num_nickel_change_with_count cents counts)
	(cond ((>= cents (* 5 counts)) (+ (num_max_cent_change (- cents (* 5 counts)) ) (num_nickel_change_with_count cents (+ 1 counts))))
	      (else 0)))

(define (num_max_nickel_change cents)
	(num_nickel_change_with_count cents 0))

(define (num_dime_change_with_count cents counts)
	(cond ((>= cents (* 10 counts)) (+ (num_max_nickel_change (- cents (* 10 counts))) (num_dime_change_with_count cents (+ 1 counts))))
	      (else 0)))

(define (num_max_dime_change cents)
	(num_dime_change_with_count cents 0))


(display "It works perfectly!!!!!!!>_<!!!!!!!")
(display "Increasing each nickel, step++;")
(display "Increasing each dime, step_nickel++)
