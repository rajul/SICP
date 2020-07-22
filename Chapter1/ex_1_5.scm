(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

(test 0 1)
(test 0 (p))

; The call `(test 0 (p))` goes into an infinite loop if the interpreter is using
; applicative-order evaluation. This is because in such a case, the interpreter 
; will first evaluate each subexpression before applying the operator (leftmost 
; subexpression) to operands. And since the expression `(p)` is passed which evaluates
; to itself, it will keep on evaluating itself and enter an infinite loop
;
; In case of normal-order evaluation, the value `0` will be returned for the call 
; `(test 0 (p))` since the subexpressions will not be evaluated before application of 
; operator to operands and hence the infinite loop would not be entered. The predicate in 
; if evaluates to `true (#t)` and hence the first operand (consequent) is evaluated which 
; is primitive `0` and the second operand expression (alternative) is ignored without 
; evaluation and hence avoiding infinite loop

