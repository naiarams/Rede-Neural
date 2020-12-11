//Blocos e sub-blocos do treinamento da rede Neural Perceptron.

main:
	addiu   $sp,$sp,-40
       	sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        
$L8:    
        sw      $0,24($fp)
     
$L3:
   
        move    $4,$2
        addiu   $2,$fp,24
        move    $5,$2
    
        
$L2:

lw      $2,24($fp)
        blez    $2,$L3
        
lw      $2,24($fp)
        beq     $2,$0,$L3
       
lw      $2,24($fp)
        li      $3,2                        
       
li      $3,3                        

$L4:
        lw      $3,24($fp)
        li      $2,4                        
        bne     $3,$2,$L8

move    $2,$0
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
       
mostraFuncoes:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp

        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        
treinandoPerceptronEpoca:
        addiu   $sp,$sp,-336
        sw      $31,332($sp)
        sw      $fp,328($sp)
        move    $fp,$sp
        
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
        
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        sw      $0,48($fp)
        li      $2,1                        
        sw      $2,324($fp)

        addiu   $2,$fp,320
        move    $5,$2

        addiu   $2,$fp,312
        move    $5,$2

$L13:
        lw      $5,48($fp)
        move    $4,$2
       
        addiu   $3,$fp,72
        lw      $2,48($fp)
      
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,48($fp)
        move    $4,$2

        addiu   $3,$fp,152
        lw      $2,48($fp)
      
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,48($fp)
        move    $4,$2
    
        addiu   $3,$fp,232
        lw      $2,48($fp)
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $2,48($fp)
        nop
        addiu   $2,$2,1
        sw      $2,48($fp)

        addiu   $2,$fp,324
        move    $5,$2

        lw      $3,48($fp)
        li      $2,9                       
       
        sw      $0,324($fp)
        
$L12:
        lw      $2,324($fp)
        bne     $2,$0,$L13

        sw      $0,56($fp)

$L17:
        sw      $0,52($fp)

$L16:
        lw      $2,52($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,44($2)
        lwc1    $f3,40($2)
        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,52($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f4,124($2)
        lwc1    $f5,120($2)
        lwc1    $f0,44($fp)
        nop
        lwc1    $f1,40($fp)
    
        mul.d   $f0,$f4,$f0
        add.d   $f0,$f2,$f0
        swc1    $f0,68($fp)
        swc1    $f1,64($fp)
        lw      $2,52($fp)
       
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,204($2)
       
        lwc1    $f3,200($2)
        lwc1    $f0,68($fp)
        nop
        lwc1    $f1,64($fp)
      
        sub.d   $f2,$f2,$f0
        lwc1    $f0,316($fp)
        lwc1    $f1,312($fp)
     
        mul.d   $f2,$f2,$f0
        lw      $2,52($fp)
       
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,44($2)
        lwc1    $f1,40($2)
        mul.d   $f0,$f2,$f0
        lwc1    $f2,36($fp)
        lwc1    $f3,32($fp)
     
        add.d   $f0,$f2,$f0
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
        lw      $7,36($fp)
        lw      $6,32($fp)

        lw      $2,52($fp)
        
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,204($2)
        
        lwc1    $f3,200($2)
        lwc1    $f0,68($fp)
        
        lwc1    $f1,64($fp)
        
        sub.d   $f2,$f2,$f0
        lwc1    $f0,316($fp)
        
        lwc1    $f1,312($fp)
        
        mul.d   $f2,$f2,$f0
        lw      $2,52($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,124($2)
        
        lwc1    $f1,120($2)      
        mul.d   $f0,$f2,$f0
        lwc1    $f2,44($fp)
        
        lwc1    $f3,40($fp)
        
        add.d   $f0,$f2,$f0
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        lw      $7,44($fp)
        lw      $6,40($fp)
        

lw      $2,52($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,204($2)
        
        lwc1    $f3,200($2)
        lwc1    $f0,68($fp)
       
        lwc1    $f1,64($fp)
       
        sub.d   $f2,$f2,$f0
        lwc1    $f0,316($fp)
        lwc1    $f1,312($fp)
       
        mul.d   $f2,$f2,$f0
        lw      $2,52($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,124($2)
  
        lwc1    $f1,120($2)
        mul.d   $f0,$f2,$f0
        lwc1    $f2,44($fp)
        lwc1    $f3,40($fp)
       
        add.d   $f0,$f2,$f0
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        lw      $7,44($fp)
        lw      $6,40($fp)
        
        lw      $2,52($fp)
        addiu   $2,$2,1
        sw      $2,52($fp)

$L15:
        lw      $3,52($fp)
        lw      $2,48($fp)
        slt     $2,$3,$2
        bne     $2,$0,$L16
      

        lw      $2,56($fp)
        addiu   $2,$2,1
        sw      $2,56($fp)
        
$L14:
        lw      $2,320($fp)
        lw      $3,56($fp)
        slt     $2,$3,$2
        bne     $2,$0,$L17

        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)
        swc1    $f0,20($sp)
        swc1    $f1,16($sp)
        lw      $7,36($fp)
        lw      $6,32($fp)
 
        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
       
        lwc1    $f0,44($fp)
        
        lwc1    $f1,40($fp)
        move    $sp,$fp
        lw      $31,332($sp)
        lw      $fp,328($sp)
        addiu   $sp,$sp,336
       
$L19:

        addiu   $2,$fp,32
        move    $5,$2

        addiu   $2,$fp,40
        move    $5,$2
  
        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        mul.d   $f2,$f2,$f0
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)
        mul.d   $f0,$f4,$f0
        add.d   $f0,$f2,$f0
        swc1    $f0,28($fp)
        swc1    $f1,24($fp)
        lw      $7,28($fp)
        lw      $6,24($fp)

        addiu   $2,$fp,48
        move    $5,$2
   

        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        mtc1    $0,$f2
        mtc1    $0,$f3
        c.eq.d  $f0,$f2
        bc1f    $L19

        move    $sp,$fp
        lw      $31,60($sp)
        lw      $fp,56($sp)
        addiu   $sp,$sp,64

treinandoPerceptronErro:
        addiu   $sp,$sp,-328
        sw      $31,324($sp)
        sw      $fp,320($sp)
        move    $fp,$sp
    
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
      
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        sw      $0,56($fp)
        li      $2,1                        
        sw      $2,312($fp)

        addiu   $2,$fp,304
        move    $5,$2

$L22:

        lw      $5,56($fp)

        nop
        move    $4,$2

        addiu   $3,$fp,64
        lw      $2,56($fp)
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,56($fp)

        move    $4,$2
        nop

        addiu   $3,$fp,144
        lw      $2,56($fp)

        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,56($fp)
        move    $4,$2

        addiu   $3,$fp,224
        lw      $2,56($fp)
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $2,56($fp)
        addiu   $2,$2,1
        sw      $2,56($fp)

        addiu   $2,$fp,312
        move    $5,$2

        lw      $3,56($fp)
        li      $2,9                        
        bne     $3,$2,$L21
        sw      $0,312($fp)
$L21:
        lw      $2,312($fp)
        bne     $2,$0,$L22

$L26:
        sw      $0,60($fp)
        b       $L23
    
$L24:
        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,36($2)
        lwc1    $f3,32($2)
        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f4,116($2)

        lwc1    $f5,112($2)
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        mul.d   $f0,$f4,$f0
        add.d   $f0,$f2,$f0
        swc1    $f0,52($fp)
        swc1    $f1,48($fp)
        lw      $2,60($fp)
 
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,196($2)

        lwc1    $f3,192($2)
        lwc1    $f0,52($fp)
        lwc1    $f1,48($fp)
        sub.d   $f2,$f2,$f0
        lwc1    $f0,308($fp)

        lwc1    $f1,304($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,36($2)
        lwc1    $f1,32($2)
        mul.d   $f0,$f2,$f0
        lwc1    $f2,36($fp)

        lwc1    $f3,32($fp)
        add.d   $f0,$f2,$f0
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
        lw      $7,36($fp)
        lw      $6,32($fp)

        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,196($2)
        lwc1    $f3,192($2)
        lwc1    $f0,52($fp)
        lwc1    $f1,48($fp)
        sub.d   $f2,$f2,$f0
        lwc1    $f0,308($fp)

        lwc1    $f1,304($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,116($2)
        lwc1    $f1,112($2)
        mul.d   $f0,$f2,$f0
        lwc1    $f2,44($fp)
        lwc1    $f3,40($fp)
        add.d   $f0,$f2,$f0
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        lw      $7,44($fp)
        lw      $6,40($fp)

        lw      $2,60($fp)
        addiu   $2,$2,1
        sw      $2,60($fp)
$L23:
        lw      $3,60($fp)
        lw      $2,56($fp)
        slt     $2,$3,$2
        bne     $2,$0,$L24

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,196($2)

        lwc1    $f1,192($2)
        lwc1    $f2,52($fp)

        lwc1    $f3,48($fp)
        sub.d   $f0,$f2,$f0
        mfc1    $2,$f0
        nop
        bgez    $2,$L25
        subu    $2,$0,$2
$L25:
        mtc1    $2,$f0
        cvt.d.w $f2,$f0
        c.lt.d  $f0,$f2
        bc1t    $L26

        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        swc1    $f0,20($sp)
        swc1    $f1,16($sp)
        lw      $7,36($fp)
        lw      $6,32($fp)

        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        move    $sp,$fp
        lw      $31,324($sp)
        lw      $fp,320($sp)
        addiu   $sp,$sp,328

        addiu   $2,$fp,32
        move    $5,$2

        addiu   $2,$fp,40
        move    $5,$2
        
        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)

        mul.d   $f2,$f2,$f0
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        mul.d   $f0,$f4,$f0
        add.d   $f0,$f2,$f0
        swc1    $f0,28($fp)
        swc1    $f1,24($fp)
        lw      $7,28($fp)
        lw      $6,24($fp)

        addiu   $2,$fp,48
        move    $5,$2

        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        mtc1    $0,$f2

        mtc1    $0,$f3
        c.eq.d  $f0,$f2
        bc1f    $L19
 
        move    $sp,$fp
        lw      $31,60($sp)
        lw      $fp,56($sp)
        addiu   $sp,$sp,64

        addiu   $sp,$sp,-328
        sw      $31,324($sp)
        sw      $fp,320($sp)
        move    $fp,$sp
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        sw      $0,56($fp)
        li      $2,1                      
        sw      $2,312($fp)

        addiu   $2,$fp,304
        move    $5,$2
        
        lw      $5,56($fp)
       
        move    $4,$2

        addiu   $3,$fp,64
        lw      $2,56($fp)
  
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,56($fp)
        
        move    $4,$2

        addiu   $3,$fp,144
        lw      $2,56($fp)
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $5,56($fp)

        move    $4,$2

        addiu   $3,$fp,224
        lw      $2,56($fp)
        sll     $2,$2,3
        addu    $2,$3,$2
        move    $5,$2

        lw      $2,56($fp)
        addiu   $2,$2,1
        sw      $2,56($fp)

        addiu   $2,$fp,312
        move    $5,$2

        lw      $3,56($fp)
        li      $2,9                       
        bne     $3,$2,$L21

        sw      $0,312($fp)
       
        lw      $2,312($fp)
        bne     $2,$0,$L22

        sw      $0,60($fp)
        b       $L23

        lw      $2,60($fp)

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,36($2)

        lwc1    $f3,32($2)
        lwc1    $f0,36($fp)

        lwc1    $f1,32($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f4,116($2)

        lwc1    $f5,112($2)
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        mul.d   $f0,$f4,$f0
        add.d   $f0,$f2,$f0
        swc1    $f0,52($fp)
        swc1    $f1,48($fp)
        lw      $2,60($fp)

        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,196($2)

        lwc1    $f3,192($2)
        lwc1    $f0,52($fp)
        lwc1    $f1,48($fp)
        sub.d   $f2,$f2,$f0
        lwc1    $f0,308($fp)

        lwc1    $f1,304($fp)
        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,36($2)
    
        lwc1    $f1,32($2)
        mul.d   $f0,$f2,$f0
        lwc1    $f2,36($fp)
        lwc1    $f3,32($fp)

        add.d   $f0,$f2,$f0
        swc1    $f0,36($fp)
        swc1    $f1,32($fp)
        lw      $7,36($fp)
        lw      $6,32($fp)

        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f2,196($2)

        lwc1    $f3,192($2)
        lwc1    $f0,52($fp)
        lwc1    $f1,48($fp)

        sub.d   $f2,$f2,$f0
        lwc1    $f0,308($fp)
        lwc1    $f1,304($fp)

        mul.d   $f2,$f2,$f0
        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,116($2)
        lwc1    $f1,112($2)
 
        mul.d   $f0,$f2,$f0
        lwc1    $f2,44($fp)
        lwc1    $f3,40($fp)

        add.d   $f0,$f2,$f0
        swc1    $f0,44($fp)
        swc1    $f1,40($fp)
        lw      $7,44($fp)
        lw      $6,40($fp)

        lw      $2,60($fp)
        addiu   $2,$2,1
        sw      $2,60($fp)
        
        lw      $3,60($fp)
        lw      $2,56($fp)
        slt     $2,$3,$2
        bne     $2,$0,$L24

        lw      $2,60($fp)
        sll     $2,$2,3
        addiu   $3,$fp,32
        addu    $2,$3,$2
        lwc1    $f0,196($2)
       
        lwc1    $f1,192($2)
        lwc1    $f2,52($fp)
        lwc1    $f3,48($fp)
       
        sub.d   $f0,$f2,$f0
        mfc1    $2,$f0
        bgez    $2,$L25

        subu    $2,$0,$2

        mtc1    $2,$f0
        cvt.d.w $f2,$f0
        c.lt.d  $f0,$f2
        bc1t    $L26

        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)

        swc1    $f0,20($sp)
        swc1    $f1,16($sp)
        lw      $7,36($fp)
        lw      $6,32($fp)

        lwc1    $f0,36($fp)
        lwc1    $f1,32($fp)
        lwc1    $f0,44($fp)
        lwc1    $f1,40($fp)
    
        move    $sp,$fp
        lw      $31,324($sp)
        lw      $fp,320($sp)
        addiu   $sp,$sp,328
