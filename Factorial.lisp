;;;---------------------------------------------------------------------------------
;;; Fibonnaci - Proyecto Fase #1
;;; Algoritmos y Estructuras de Datos - UVG
;;;
;;; Autores: [Sara Paguaga, Elean Rivas, Cristian Laynez]
;;;---------------------------------------------------------------------------------

(write-line "Factorial: ")

;;; Crear variable para hacer el calculo
(defvar *calculo* 1)
;;; Variable para tener el control inverso
(defvar *control* 11)

;;; Se realizará en este ciclo 11 vueltas
(loop for x from 1 to 11
	;;; Se realizará la operación para el factorial
    do(setf *calculo* (* *calculo* *control*))
	;;; Se restará el valor del control inverso
    do(setf *control* (- *control* 1))
)

;;; Se mostrarán los resultados correspondientes
(print "Resultado del factorial:")
(print *calculo*)