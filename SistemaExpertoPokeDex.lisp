;;;-----------------------------------------------------------------
;;; Sistema Experto [Pokedex] - Proyecto Fase #1
;;; Algoritmos y Estructuras de Datos - UVG
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

(defun menut1 ()
    (print "Selecciona el primer tipo de pokemon: ")
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

(menut1) ;;; Para mostrar los tipos de pokemon

;;; Para pedir la entrada de usuario
(princ "")
(setq b (read))

;;; Para asignar los tipos correspondientes
(get-pokemon b)

;;; Demostrar donde es efectivo

(defvar *control* 0)

(if (>= b 7)
    (aviso 1)
    (setf *control* (+ *control* 1)))
    
(if (<= b 0)
    (aviso 2)
    (setf *control* (+ *control* 1)))

(efectivo)

;;; Vamos a verificar si todo esta en orden
(if (= *control* 2)
    (print (aref tiposE (- b 1)))
    (invalido))