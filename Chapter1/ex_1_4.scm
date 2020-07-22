(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; As described in 1.1.3, evaluation of combinations take place in two steps:
; 1. Evaluate the subexpressions of the combination.
; 2. Apply the procedure that is the values of the leftmost subexpression
;    (the operator) to the arguments that are the values of the other
;    subexpressions (the operands).
;
; So, according to the above the operator (leftmost subexpression) and the passed formal 
; parameters a and b are evaluated first. 
; 
; For the operator:
;   In this case it is an `if` conditional expression that sets the operator
;   to `+` (addition) if b is greater than 0 otherwise sets the operator to `-` (subtract)
; 
; And then the operator is applied to the already evaluted operands a, b
;
; In effect the setting of the operator leads to `a` being added to the absolute value 
; of `b`
;

