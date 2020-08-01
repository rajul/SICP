; a' = bq + aq + ap 
;    = (p + q).a + q.b
; b' = bp + aq = q.a + p.b
;
; a" = (p + q).a' + q.b'
;    = (p + q).((p + q).a + q.b) + q.(q.a + p.b)
;    = (p^2 + 2pq + q^2)a + (qp + q^2)b + (q^2.a + pq.b)
;    = (p^2 + 2pq + 2.q^2)a + (2pq + q^2).b
;
; b" = qa' + pb'
;    = q((p+q)a + qb) + p(qa + pb)
;    = (pq + q^2)a + q^2.b + pq.a + p^2.b
;    = (2pq + q^2)a + (p^2 + q^2)b
;
; From above, p' = p^2 + q^2 and q' = 2pq + q^2
;

(define (even? n)
  (= (remainder n 2) 0))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
	((even? count)
	 	(fib-iter 
		  a 
		  b 
		  (+ (square p) (square q))
		  (+ (* 2 p q) (square q))
		  (/ count 2)))
	(else 
	  (fib-iter
	    (+ (* b q) (* a q) (* a p))
	    (+ (* b p) (* a q))
	    p
	    q
	    (- count 1)))))
