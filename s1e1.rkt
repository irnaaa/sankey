;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; x is the abscissa of a point in a cartesian plane
;; y is the ordinate of a point in a cartesian plane
(define x 3)
(define y 4)

;; outputs the distance between the point (x, y) and point (0,0) in a cartesian plane
(sqrt (+ (* x x) (* y y)))