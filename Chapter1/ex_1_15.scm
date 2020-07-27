(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> angle 0.1))
    angle
    (p (sine (/ angle 3.0)))))


; Number of time p applied for (sine 12.5) = ceil(log (12.5*10) / log 3) = 5
; 
; Order of growth:
; 	Space = O(log a)
; 	Number of steps = O(log a)
; 
; Since they are just directly proportional to the number of time p is called

