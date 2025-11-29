ideal                   ;Esto es codigo por default, no hay mucho que explicar de esta parte   
dosseg                  ;En este ejemplo solo conoceras la sintaxis y el c?digo por default.
model small
stack 256               ;Si te preguntas porque 256, es la pila, es el tama?o de la pila, m?s que suficiente dont worry.

dataseg                 ;Aqui se espeicifica al assembler que empieza lo que es el segmento de variables.
                        ;Aqui no importa la sangria(espaciado o espacios) pero para que sea legible el c?digo ten un poco de sangria.
                        ;Usar? la sangria de python pero no es necesario.
    mint    db      ?   ;Para definir una variable primero es su nombre, supondre que sabes las reglas del nombre de variables asi que asi
    mint2   db      2   ;est? bien, despu?s de eso tienes que poner el tama?o de la variable ya sea byte, palabra, palabra doble etc
                        ;y el signo de interrogaci?n es de que la variable no tiene valor iniciado, la otra variable es de un valor iniciado
 
    codsal  db      0   ;Este nos ayudar? a salir del programa despu?s.

codeseg                 ;Aqui se especifica al assembler que empieza el segmento de codigo, aqui ya va todo nuestro c?digo.

    inicio:             ;Estas son etiquetas, lo cual te permitir? poder guiarte mejor.
        
        mov ax, @data   ;Esto es lenguaje ensamblador, le decimos que inicialice las variables, es como decir: (Ey aqui tan mis datos en @data)
        mov ds, ax      ;Aqui le decimos que mueva lo del ax(Acomulador) al ds que es el registro de segmento, es el que apunta a tus datos
        
        
        mov ah, 4ch     ;4ch es la manera de decir: (Este programa ya termin?)
        mov al, [codsal];Movemos a la parte baja del acomulador lo que est? de valor en codsal, es como el return 0
        int 21h         ;Este es una llamada al sistema operativo, en este caso es la interrupci?n y de esta manera se salga del programa
        
    end inicio          ;Aqui decimos que oficialmente el segmento/etiqueta inicio a terminado, 
                        
    
                        ;Tips:
                        ;Para poder ejecutar este archivo tienes dos formas, terminal o los botones de arriba, te dire en terminal
                        ;en la terminal escribe (tasm /l/zi sintaxis), y para ejecutarlo en la misma terminal escribe sintaxis y se ejecutar?
        
                        
    
    
    

