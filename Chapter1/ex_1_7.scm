; For very small numbers, the threshold of 0.001 may yield wrong results because the
; algorithms may terminate before reaching the correct value
; 
; For large numbers the lead to the algorthm never terminating because it may just be 
; stuck at a value and enter a never ending loop

(define (average x y)
	(/ (+ x y) 2.0))

(define (improve guess x)
	(average guess (/ x guess)))

; (define (good-enough? guess x)
;	(< (abs (- guess (improve guess x))) 0.001))

(define (good-enough? guess x)
	(< (abs (- guess (improve guess x))) (* guess 0.001)))

; (define (good-enough? guess x)
;	(= (improve guess x) guess))

(define (sqrt-iter guess x)
	(if (good-enough? guess x) 
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))
