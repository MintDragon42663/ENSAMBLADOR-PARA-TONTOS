ideal                   ;C?digo de default
dosseg
model small             ;C?digo para sumar dos datos y guardarlos en r, formula: r=(d1+d2)
stack 256
                    
dataseg              
    d1      db  5       
    d2      db  3
    r       db  ?
    codsal  db  0
    
codeseg
    inicio:
        mov ax, @data
        mov ds, ax
        mov al, [d1]    ;Lo movemos a al, para poder hacer la suma
        add al, [d2]    ;El Mnemonico add, recibe dos cosas, (destino,fuente), suma el valor de fuente y destino y el resultado lo guarda 
                        ;en destino
                        ;Cuando el se hace referencia a una variable, siempre va entre corchetes [d1], [d2], [r]. 
        mov [r], al     ;El Mnemonico mov, es de transferencia, recibe tambi?n (destino,fuente), pasa el valor de fuente y lo guarda en destino.
        
        mov ah, 4ch
        mov al, [codsal]
        int 21h
        
    end inicio
    
                        ;Tips: 
                            ;Si quieres ver el resultado ve al turbo debug, es ensamblar este archivo y despu?s en terminal ponter td suma
                            ;en el debug, seleccionas la variable, click derecho watch, y despues ejecuta el debug y podr?s ver el resultado
        