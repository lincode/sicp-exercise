;; ex 1.8

(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

(define (cube x)
    (* x x x))

(define (square x)
    (* x x))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

; 1] => (cube-root (* 3 3 3))
; ;Value: 3.0000005410641766
; 1] => (cube-root (* 2 2 2))
; ;Value: 2.000004911675504
