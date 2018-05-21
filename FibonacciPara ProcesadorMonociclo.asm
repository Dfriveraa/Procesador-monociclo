#Guardar en memoria los 20 primeros términos de la sucesión de fibonacci
addi $s0,$zero,0 #Se inicializa s0 en 0 y la cantidad de elementos
addi $s1,$zero,20 #se inicializa s1 en el valor final de valores a buscar.
addi $t0,$zero,0 #guarda en t0 fibbonacci de 0
addi $t1,$zero,1 #guarda en t1 fibonacci de 1
addi $s2,$zero,0 #apunta a la dirección 0
sw $t0,0($s2) #guarda en el primer valor de fibonaccion 0
addi $s0,$s0,1#Aumenta en 1 el termino
add $s2,$s2,4#aumenta el apuntador de memoria
sw $t1,0($s2) #guarda en memoria el segundo termine de fibonacci
addi $s0,$s0,1#Aumenta en 1 el termino y la pos de memoria 
add $s2,$s2,4 #aumenta el apuntador de memoria
loop:
beq $s0,$s1,finLoop #si la cantidad de numeros es igual a 20 se detiene.
lw $t0,-8($s2) # obtiene f(n-2) y guarda en t0
lw $t1,-4($s2)# obtiene f(n-1) y guarda en t1
add $t3,$t0,$t1 # guarda en t3 f(n)
sw $t3,0($s2) #guarda en memoria el termino calculado
addi $s0,$s0,1#pasa al siguiente numero
add $s2,$s2,4#aumenta el apuntador de memoria
j loop
finLoop:
