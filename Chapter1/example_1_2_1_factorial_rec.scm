(define (factorial-recursive n)
  (if (= n 1)
    1
    (* n (factorial-recursive (- n 1)))))

(define (factorial-iterative n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
    product
    (fact-iter (* counter product)
	       (+ counter 1)
	       max-count)))

(define (factorial-iterative-better n)
  (define (iter product counter)
    (if (> counter n)
      product
      (iter (* counter product)
	    (+ counter 1))))
  (iter 1 1))
