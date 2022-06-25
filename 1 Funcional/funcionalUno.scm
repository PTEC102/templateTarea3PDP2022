#lang racket/load
(load "notas.scm")
;corrige el print
(define (nombre a)
  (display a)
  (display " ")
)
;suma las notas
(define (promedio a)  
  (cond ((null? a) 0)
        (else(+ (car a)(promedio (cdr a)))))
)
;calcula la cantidad de notas
(define (cantidadNotas lista)  
  (cond ((null? lista) 0)
        (else(+ 1(cantidadNotas (cdr lista)))))
)
;recorre la lista y las muestra tras calcular su promedio
(define (recorredor lista)
  (define b 0)  
  (cond ((null? lista) 0)
        (else(nombre (car (car lista)))             
             (display (/ (promedio (cdr (car lista))) (cantidadNotas (cdr (car lista)))))             
             (display " ")             
             (newline)             
             (recorredor (cdr lista))))
)
(recorredor notas)
