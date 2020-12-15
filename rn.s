.data

#Menu do usuário 

msg0: .asciiz "\n\t Neurônio Perceptron Treina Rede por erro.\n"
msg1: .asciiz "\n\t Permitindo duas entradas.\n"
msg2: .asciiz "\n\t Digite um numero: \n"
msg3: .asciiz "\n\t Entrada: Pesos 1 e 2: \n"
msg4: .asciiz "\n\t \n"
msg5: .asciiz "\n\t Digite outro número: \n"

.text

main: 
   #variaveis
   #contador 
   li $t0, 1 
   li $t7, 005 #taxadeaprendizado
   li $t8, 0  #peso1
   li $t9, 08  #peso2
   
   li $t1, 00 #auxiliar de soma
   
   li $t1, 1
   li $t2, 2
   li $t3, 2
   
   #menu
   li $v0, 4
   la $a0, msg0
   syscall
   
   #menu
   li $v0, 4
   la $a0, msg1
   syscall
   
   #menu
   li $v0, 4
   la $a0, msg2
   syscall
   
   #menu
   li $v0, 4
   la $a0, msg3
   syscall
   
   #menu
   li $v0, 4
   la $a0, msg4
   syscall
   
   #menu
   li $v0, 4
   la $a0, msg5
   syscall
   
   #leituraNumeroReal 
   li $v0, 6
   syscall 
   mov.s $f2, $f0 
   
loop: #inicioLoop
   
   #calculaOsErrosComOsPesos
   mul.s $f15, $f2, $f8 
   mul.s $f16, $f2, $f9
   add.s $f20, $f15, $f16
   sub.s $f3, $f11, $f20
   
   mul.s $f21, $f7, $f2
   mul.s $f22, $f3, $f21
   add.s $f8, $f8, $f22
   add.s $f9, $f9, $f22
   
   #mostraContadoresElinhas
   
   li $v0, 1
   add $a0, $t0, $zero
   syscall 
   
   li $v0, 2
   la $a0, msg2
   syscall 
   
   li $v0, 2
   mov.s $f12, $f8
   syscall
   
   li $v0, 4
   la $a0 msg4 
   syscall 
   
   li $v0, 5
   mov.s $f12, $f9
   syscall 
   
   li $v0, 4
   la $t1, msg5
   syscall 
   
   add.s $f2, $f2, $f23
   add.s $f11, $f11, $f24 
   
   add $t0, $t0, 1
   
ble $t0, 9, loop #Termina Loop

#testeDeAprendizado

li $v0, 4
la  $t1,  msg5
syscall

li $v0, 6
syscall 
mov.s $f2, $f0

#Saida

mul.s $f25, $f2, $f8
mul.s $f25, $f2, $f9
add.s $f27, $f25, $f26

li $v0, 2
mov.s $f12, $f27
syscall 

jr $ra  