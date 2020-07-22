(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y))) 

;(define (largest-of-three a b c)
;  (cond ((and (>= a b) (>= a c)) a)
;	((and (>= b a) (>= b c)) b)
;	(else c)))

(define (smallest-of-three a b c)
  (cond ((and (<= a b) (<= a c)) a)
	((and (<= b a) (<= b c)) b)
	(else c)))

(define (sum-two-biggest a b c) 
  (cond ((= (smallest-of-three a b c) a) (sum-of-squares b c))
	((= (smallest-of-three a b c) b) (sum-of-squares a c))
	(else (sum-of-squares a b))))


; TESTS
(sum-two-biggest 1 2 3)
; 13

(sum-two-biggest 2 1 3)
; 13

(sum-two-biggest 2 3 1)
; 13

(sum-two-biggest 2 2 2)
; 8

(sum-two-biggest 2 2 3)
; 13

(sum-two-biggest 1 2 1)
; 5

(sum-two-biggest 2 1 1)
; 5
