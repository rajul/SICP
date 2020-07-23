(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x) x)))

(define (sqrt x) 
  (sqrt-iter 1.0 x))

; TESTS
(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))

(square (sqrt 1000))

; See a lot of `;Aborting!: maximum recursion depth exceeded` errors
; This is because the special form if statement only evaluates one of 
; the two parameters passed. However, the new-if never stops evaluating
; itself here because of the recursive calls to `sqrt-iter` in the 
; else-clause 
