;;;---------------------------------------------------------------------------------
;;; Fibonnaci - Proyecto Fase #1
;;; Algoritmos y Estructuras de Datos - UVG
;;;
;;; Autores: [Cristian Laynez, Sara Paguaga, Elean Rivas]
;;;---------------------------------------------------------------------------------

(print "Fibonnaci:")

;;; Crearemos un array con un limite de 10 elementos
(setf my-array (make-array '(10)))

;;; Vamos a poner valor a los numeros más importantes
(setf (aref my-array 0) 0)
(setf (aref my-array 1) 1)

;;; Vamos a crear un ciclo for para recorrer el resto del array
;;; y de esa manera asignar los valores correspondientes
(loop for x from 2 to 9
    ;;; Vamos a acceder al elemento, sumaremos y obtendremos los ultimos dos valores
    do(setf (aref my-array x) (+ (aref my-array (- x 2)) (aref my-array (- x 1))))
    )

;;; Mostraremos los resultados finales
(write my-array)
