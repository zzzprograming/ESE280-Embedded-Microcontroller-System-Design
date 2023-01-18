 ;
; Lab04task2.asm
;
; Created: 9/21/2022 10:13:43 AM
; Author : userESD
;


; Replace with your application code
start:
    ldi r16, 0xFF
	out VPORTD_DIR, r16
	ldi r16, 0x00
	out VPORTC_DIR, r16
main_loop:
	in r16, VPORTC_IN
	mov r17, r16
	mov r18, r16
	andi r17, 0xE0
	andi r18, 0x1C
	lsl r18
	lsl r18
	lsl r18
	andi r16, 0x03
	cpi r16, 0x00
	breq and_fcn
	cpi r16, 0x01
	breq or_fcn
	cpi r16, 0x02
	breq xor_fcn
not_fcn:
	com r17
	mov r18, r17
	rjmp output
and_fcn:
	and r18, r17
	rjmp output
or_fcn:
	or r18,r17
	rjmp output
xor_fcn:
	eor r18, r17
output:
	andi r18, 0xE0
	com r18
	out VPORTD_OUT,r18
	rjmp main_loop
