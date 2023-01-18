;
; Lab04task1.asm
;
; Created: 9/21/2022 9:53:12 AM
; Author : userESD
;


; Replace with your application code
start:
	ldi r16, 0xFF
	out VPORTD_DIR, r16
	ldi r16, 0x00
	out VPORTC_DIR, r16
again:
	in r16, VPORTC_IN
	com r16
	out VPORTD_OUT, r16
	rjmp again

