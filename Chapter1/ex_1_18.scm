(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (*-new a b)
  (*-iter a b 0))

(define (*-iter a b acc)
  (cond ((= b 0) acc)
	((even? b) (*-iter (double a) (halve b) acc))
	(else (*-iter a (- b 1) (+ acc a)))))
