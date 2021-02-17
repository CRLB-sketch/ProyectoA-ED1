;;;-----------------------------------------------------------------
;;; Sistema Experto [Pokedex] - Proyecto Fase #1
;;; Algoritmos y Estructuras de Datos - UVG
;;;
;;; Autores: [Cristian Laynez, Sara Paguaga, Elean Rivas]
;;;-----------------------------------------------------------------

;;; Clase Pokedex **************************************************

(setf tiposE (make-array '(6)))

(setf (aref tiposE 0) "Fuego y ")
(setf (aref tiposE 1) "Agua y ")
(setf (aref tiposE 2) "Planta y")
(setf (aref tiposE 3) "Hielo y ")
(setf (aref tiposE 4) "Plata y Bicho")
(setf (aref tiposE 5) "Agua y Planta")

(defun get-pokemon (tipo)
    (case tipo
        (1 (print "Agua")
           (print "Y más Agua"))
        (2 (print "Planta"))
        (3 (print "Fuego"))
        (4 (print "Acero"))
        (5 (print "Volador"))
        (6 (print "Hielo"))
        (otherwise (print "No valido"))))

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
    

;;; Clase Controlador & Main ***************************************

(bienvenida)

(menut1) ;;; Para mostrar los tipos de pokemon

;;; Para pedir la entrada de usuario
(princ "")
(setq b (read))

;;; Para asignar los tipos correspondientes
(get-pokemon b)
