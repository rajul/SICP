(define (*-orig a b)
  (if (= b 0) 0
    (+ a (* a (- b 1)))))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (*-new a b)
  (cond ((= b 0) 0)
	((even? b) (double (*-new a (halve b))))
	(else (+ a (*-new a (- b 1))))))
