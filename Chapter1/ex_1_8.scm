(define (square x) (* x x))
(define (cube x) (* x x x))

; (define (good-enough? guess x)
;	  (< (abs (- (cube x) x)) 0.0001))

; (define (good-enough? guess x)
; 	(< (abs (- (improve guess x) x)) (* guess 0.0001)))

(define (good-enough? guess x)
	(= (improve guess x) guess))

(define (improve guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root-iter guess x)
	(if (good-enough? guess x)
		guess
		(cube-root-iter (improve guess x) x)))

(define (cube-root x)
	(cube-root-iter 1.1 x))
