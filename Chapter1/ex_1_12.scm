(define (pascal-triangle r c)
  (cond ((< r 1) 0)
	((= r 1) 1)
	((< c 1) 0)
	((= c 1) 1)
	((> c r) 0)
	((= c r) 1)
	(else (+ (pascal-triangle (- r 1) (- c 1)) (pascal-triangle (- r 1) c)))))

