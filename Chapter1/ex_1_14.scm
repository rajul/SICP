(define (coin-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
	((or (< amount 0) (= kinds-of-coins)) 0)
	(else (+ (cc amount (- kinds-of-coins 1)) 
		 (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))

;										   coin-change 11
;										       4|
;										cc  11	| 50,25,10,5,1
;										       4|0
;							|-------------------------------|-------------------------------|
;						cc 11	| 25,10,5,1						cc -39	| 50,25,10,5,1
;						       4|0								
;					|---------------|---------------|
;				cc 11	| 10,5,1		cc -14	| 25,10,5,1
;				       3|1				
;			|---------------|--------------------------------------------|
;		cc 11	| 5,1			   				cc 1 | 10,5,1
;		       1|2					     		    1|0
;		|-------|-----------------------|			    |--------|-------|
; 	  cc 11 | 1	   		   cc 6 | 5,1		       cc 1 | 5,1      cc -9 | 10,5,1
;	       				       1| 1			   1|0		     |	
;				       |--------|-------|	   |--------|-------|
; 				  cc 6 | 1	   cc 1	| 1   cc 1 | 1	      cc -4 | 5,1
;	
;	
; Orders of growth of: a: amount, k: kinds-of-coins
;	Space = O(a)
;	Number of Steps = O(a^k)
;
;

