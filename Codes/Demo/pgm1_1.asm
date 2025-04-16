TITLE PGMl 1: SAMPLE PROGRhM 
.MODEL SMALL 
.STACK 1OOH 
.DATA 
A DW 2 
B DW  5 
SUM DW ? 
.CODE 
MAIN PROC 
; initialize DS 
    MOV AX,@DATA 
    MOV DS,AX 
;add the numbrs 
    MOV AX,A 
    ADD AX,B 
    MOV SUM,AX 
;exit to DOS 
    MOV AX, 4C0OH 
    INT 21H 
MAIN ENDP
END MAIN