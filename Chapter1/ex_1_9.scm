; 1st function
(+ 4 5)
(inc (+ 3 5))
(inc (inc (+ 2 5)))
(inc (inc (inc (+ 1 5))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc (5)))))
(inc (inc (inc (6))))
(inc (inc (7)))
(inc (8))
9

; Hence, the process is linear recursive process since amount of information
; to track increases linearly with n




; 2nd function
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9

; Hence, the process is linear iterative process since number of steps
; required increases linearly with n
