;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname set2part1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; A PeanoNumeral represents a natural number N.
;; It is one of
;;  - 'zero, representing 0.
;;  - (make-succ PeanoNumeral), representing the successor ("1+") of
;;    another numeral.
(define-struct succ (predecessor))

;; Examples:
(define ZERO 'zero)                                      ;; represents 0
(define THREE (make-succ (make-succ (make-succ 'zero)))) ;; represents 3

;; Template - PeanoNumeral
(define (F n)
  (cond
    [(equal? n 'zero) ...]                            ; base case - it's a zero
    [(succ? n) (... (F (succ-predecessor n)))]))      ; recursive case - it's a successor

;; peano->number : PeanoNumeral -> Number
;; Yields the natural number represented by the given PeanoNumeral.
(define (peano->number n)
  (cond
    [(equal? n 'zero) 0]
    [(succ? n) (+ 1 (peano->number (succ-predecessor n)))]))

;; Tests
(check-expect (peano->number ZERO) 0)
(check-expect (peano->number THREE) 3)

;; number->peano : Natural -> PeanoNumeral
;; Yields the PeanoNumeral represented by the given non-negative integer.
(define (number->peano n)
  (cond
    [(zero? n) 'zero]
    [(positive? n) (make-succ (number->peano (- n 1)))]))

;; Tests
(check-expect (number->peano 0) ZERO)
(check-expect (number->peano 3) THREE)