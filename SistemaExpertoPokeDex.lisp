;;;-----------------------------------------------------------------
;;; Sistema Experto [Pokedex] - Proyecto Fase #1
;;; Algoritmos y Estructuras de Datos - UVG
;;;
;;; Git: https://github.com/CRLB-sketch/ProyectoA-ED1.git
;;;
;;; Autores: [Cristian Laynez, Sara Paguaga, Elean Rivas]
;;;-----------------------------------------------------------------

;;; Clase Pokedex **************************************************

;;; Para definir los tipos en el cual son efectivos
(setf tiposE (make-array '(6)))

(setf (aref tiposE 0) "Fuego, Roca y Tierra")
(setf (aref tiposE 1) "Agua, Roca y Tierra ")
(setf (aref tiposE 2) "Planta, Acero, Hielo y Bicho")
(setf (aref tiposE 3) "Hielo, Roca y Hada")
(setf (aref tiposE 4) "Plata, Bicho y Lucha")
(setf (aref tiposE 5) "Volador, Planta y Dragon")

;;; Clase Vista ****************************************************

(defun bienvenida ()
    (print "Bienvenido a la tabla de tipos de pokemon"))
    
(defun pedir ()
    (print "Cuantos tipos tiene su pokemon?? ")
    (print "1. Solo un tipo")
    (print "2. Tiene dos tipos"))

(defun primerQ ()
    (print "Selecciona el primer tipo de pokemon: "))
    
(defun segundoQ ()
    (print "Selecciona el segundo tipo de pokemon: "))

(defun menut ()
    (print "1. Agua")
    (print "2. Planta")
    (print "3. Fuego")
    (print "4. Acero")
    (print "5. Volador")
    (print "6. Hielo")
    (print "-> "))    

(defun get-pokemon (tipo)
    (case tipo
        (1 (print "Agua"))
        (2 (print "Planta"))
        (3 (print "Fuego"))
        (4 (print "Acero"))
        (5 (print "Volador"))
        (6 (print "Hielo"))
        (otherwise (print "No valido"))))
    
(defun aviso (numero)
    (case numero
        (1 (print "Te pasaste con el maximo"))
        (2 (print "Te pasaste con el minimo"))))
        
(defun efectivo ()
    (print "Es efectivo contra: "))
    
(defun invalido ()
    (print "No ingreso un tipo de pokemon válido"))

;;; Clase Controlador & Main ***************************************

(bienvenida)

(defvar *controlrep* 0)

(pedir)
(princ "")
(setq a (read))

(if (= a 1)
    (setf *controlrep* (+ *controlrep* 1))
    (setf *controlrep* (+ *controlrep* 2)))
    
(loop for x from 1 to *controlrep*
    ;;; Para definir si es primero o segundo
    do(if (= x 1) 
        (primerQ)
        (segundoQ)
    )
        
    ;;; Realizaremos el resto de operaciones
    do(menut)
    do(princ "")
    do(setq b (read))
    
    ;;; Vamos a obtener a los tipos de pokemon disponibles
    do(get-pokemon b)
    
    ;;; Vamos a tomar el control de los procesos
    do(defvar *control* 0)
    
    do(if (>= b 7)
        (aviso 1)
        (setf *control* (+ *control* 1)))
        
    do(if (<= b 0)
        (aviso 2)
        (setf *control* (+ *control* 1)))
        
    ;;; Se mostrarán los valores depende de los resultados
    do(efectivo)
    
    do(if (= *control* 2)
        (print (aref tiposE (- b 1)))
        (invalido))
        
    ;;; Si todo salio en orden se reiniciará el control de valores
    do(setf *control* 0)
)
