;; Chen-Hsuan Sun 
;; 100060008
;; 2014/3/6 
;; CS140500 
;; HW1
ORG 0H
    SJMP main

min:

    MOV A, R3
    XRL A, R4
    JB ACC.0, case1 ;; jump to case1 if the signed bit of R1 and R2 are not the same
    MOV A, R0 ;; R0 - R1
    SUBB A, R1
    JNC case0
    MOV A, R0
    RET

  case0: ;; R0 > R1 and they have the same signed bits
    MOV A, R1
    RET

  case1: ;; R0 and R1 don't have the same signed bits
    CJNE R3, #1, retR1
    MOV A, R0
    RET

  retR1:
    MOV A, R1
    RET

main: 

    MOV R2, #0 ;; initialize R2(t = 0)

    ;; test case 1 R0 > 0 && R1 > 0 && R0 < R1
    MOV R0, #1
    MOV R1, #2
    MOV R3, #0 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #0 ;; additional sign bit for R1
    ACALL min
    CJNE A, #1, Error ;; test failed
    INC R2 ;; increase R2(t++)
  
    ;; test case 2 R0 > 0 && R1 > 0 && R0 > R1
    MOV R0, #2
    MOV R1, #1
    MOV R3, #0 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #0 ;; additional sign bit for R1
    ACALL min
    CJNE A, #1, Error ;; test failed
    INC R2 ;; increase R2(t++)

    ;; test case 3 R0 < 0 && R1 < 0 && R0 > R1
    MOV R0, #-3
    MOV R1, #-4
    MOV R3, #1 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #1 ;; additional sign bit for R1
    ACALL min
    CJNE A, #-4, Error ;; test failed
    INC R2 ;; increase R2(t++)

    ;; test case 4 R0 < 0 && R1 < 0 && R0 < R1
    MOV R0, #-4
    MOV R1, #-3
    MOV R3, #1 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #1 ;; additional sign bit for R1
    ACALL min
    CJNE A, #-4, Error ;; test failed
    INC R2 ;; increase R2(t++)

    ;; test case 5 R0 < 0 && R1 > 0
    MOV R0, #-3
    MOV R1, #4
    MOV R3, #1 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #0 ;; additional sign bit for R1
    ACALL min
    CJNE A, #-3, Error ;; test failed
    INC R2 ;; increase R2(t++)

    ;; test case 6 R0 > 0 && R1 < 0
    MOV R0, #4
    MOV R1, #-3
    MOV R3, #0 ;; additional sign bit for R0 to see wether it's positive or negative
    MOV R4, #1 ;; additional sign bit for R1
    ACALL min
    CJNE A, #-3, Error ;; test failed
    INC R2 ;; increase R2(t++)


    SJMP Success
    
Success:

    SJMP Success

Error:

    SJMP Error

    END
