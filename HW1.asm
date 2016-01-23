;;20140308 CHIU,Ming-Chang
;;ID: 100060007
;;CS410500  HW1
;; This code could only be applied to number between -128~127 
;; for I use the seventh bit to be the sign bit
ORG 0H
   	 SJMP main
min:
	CLR CY	
	MOV A,R0
	XRL A,R1 ;;see if R0 and R1 are same sign or not
	JB ACC.7,opposite ;;jump if opposite sign

	MOV A,R0;; after dicriminating the sign problem, reload R0 to proceed the "same sign" process
	SUBB A,R1
	JB CY,SMALLER  ; if R0<R1, CY will be set to 1, then jump
	MOV A, R1
    	RET
	

opposite:
	MOV A, R0
	JNB ACC.7, LARGER ;;R0.7>0
	MOV A, R0
   	RET
LARGER:
	MOV A, R1
   	RET
SMALLER:
	MOV A, R0
   	RET


main:
	MOV R2, #0 ;; R2==t ; initial=0

;;test cases : a,b>0, a>b or a<b ; a,b<0, a>b or a<b; a>0 b<0; a<0 b>0
;; in total 6 cases to test every condition
	MOV R0, #1 ;;R0==a
   	MOV R1, #2 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #1, Error ;; test failed
    	INC R2 ;; increase R2(t++)

	MOV R0, #2 ;;R0==a
   	MOV R1, #1 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #1, Error ;; test failed
    	INC R2 ;; increase R2(t++)

	MOV R0, #-1 ;;R0==a
   	MOV R1, #-2 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #-2, Error ;; test failed
    	INC R2 ;; increase R2(t++)

	MOV R0, #-2 ;;R0==a
   	MOV R1, #-1 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #-2, Error ;; test failed
    	INC R2 ;; increase R2(t++)

	MOV R0, #2 ;;R0==a
   	MOV R1, #-2 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #-2, Error ;; test failed
    	INC R2 ;; increase R2(t++)


	MOV R0, #-2 ;;R0==a
   	MOV R1, #2 ;;R1==b
    ;;	MOV R3, #0 ;; extra sign bit for R0 to define positive or negative
   ;;	MOV R4, #0 ;; extra sign bit for R1
    	ACALL min
    	CJNE A, #-2, Error ;; test failed
    	INC R2 ;; increase R2(t++)
	

	SJMP Success
Success:
	SJMP Success
Error:
	SJMP Error
    END