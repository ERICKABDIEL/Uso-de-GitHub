(defun verificar-numeros (lst)
  (if (null lst)
      t
      (and (numberp (car lst))
           (verificar-numeros (cdr lst)))))

(defun maximo-digitos (lst)
  (if (null lst)
      0
      (let ((max-digito (apply #'max lst)))
        (if (< max-digito 0)
            0
            (+ 1 (truncate (log max-digito 10)))))))

(defun obtener-digito (numero posicion)
  (/ (mod (truncate numero) (expt 10 (1+ posicion))) (expt 10 posicion)))

(defun crear-sublistas (n)
  (if (= n 0)
      nil
      (cons (list) (crear-sublistas (1- n)))))


(defun ordenar-digito (lst max-digits i)
  (if (< i max-digits)
      (let ((sublistas (crear-sublistas 10)))
        (mapc (lambda (num)
                (let ((digito-num (obtener-digito num i)))
                  (setf (nth (truncate digito-num) sublistas)
                        (append (nth (truncate digito-num) sublistas) (list num)))))
              lst)
        (ordenar-digito (apply #'append sublistas) max-digits (1+ i)))
      lst))

(defun radix-sort (lst)
  (if (null lst)
      nil
      (let* ((max-digits (maximo-digitos lst)))
        (ordenar-digito lst max-digits 0))))


; Ordenar una lista de números enteros de forma ascendente:
(let ((data '(170 45 75 90 802 24 2 66)))
  (setq data (radix-sort data))
  (format t "Lista ordenada ascendente: ~a~%" data))

;Ordenar una lista ya ordenada
(let ((data '(1 2 3 4 5 6)))
  (setq data (radix-sort data))
  (format t "Lista ordenada: ~a~%" data))  

; Ordenar una lista de números enteros de forma descendente:
(let ((data '(170 45 75 90 802 24 2 66)))
  (setq data (reverse (radix-sort data)))
  (format t "Lista ordenada en orden descendente: ~a~%" data))

; Ordenar una lista de números enteros de longitud variable:
(let ((data '(1234 98765 12 543 8765 987 1)))
  (setq data (radix-sort data))
  (format t "Lista de variables ordenada: ~a~%" data))

; Ordenar una lista de números enteros de un solo dígito:
(let ((data '(9 7 4 2 6 1)))
  (setq data (radix-sort data))
  (format t "Lista de un digito ordenada: ~a~%" data))
