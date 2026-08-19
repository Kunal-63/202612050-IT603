	.file	"factorial.cpp"
	.text
	.p2align 4
	.globl	_Z9factoriali
	.def	_Z9factoriali;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9factoriali
_Z9factoriali:
.LFB2811:
	.seh_endprologue
	cmpl	$1, %ecx
	jle	.L4
	leal	1(%rcx), %r8d
	andl	$1, %ecx
	movl	$2, %eax
	movl	$1, %edx
	jne	.L3
	movl	$3, %eax
	movl	$2, %edx
	cmpl	%r8d, %eax
	je	.L1
	.p2align 5
	.p2align 4
	.p2align 3
.L3:
	imull	%eax, %edx
	leal	1(%rax), %ecx
	addl	$2, %eax
	imull	%ecx, %edx
	cmpl	%r8d, %eax
	jne	.L3
.L1:
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movl	$1, %edx
	movl	%edx, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "Enter a non-negative integer: \0"
	.align 8
.LC1:
	.ascii "Factorial is not defined for negative numbers.\12\0"
.LC2:
	.ascii "! = \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2812:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movq	.refptr._ZSt4cout(%rip), %rbx
	movl	$30, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	.refptr._ZSt3cin(%rip), %rcx
	leaq	44(%rsp), %rdx
	call	_ZNSirsERi
	movl	44(%rsp), %edx
	testl	%edx, %edx
	js	.L26
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movl	$4, %r8d
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movl	44(%rsp), %ecx
	cmpl	$1, %ecx
	jle	.L19
	leal	1(%rcx), %r8d
	andb	$1, %cl
	movl	$2, %eax
	movl	$1, %edx
	jne	.L16
	movl	$3, %eax
	movl	$2, %edx
	cmpl	%r8d, %eax
	je	.L15
	.p2align 5
	.p2align 4
	.p2align 3
.L16:
	imull	%eax, %edx
	leal	1(%rax), %ecx
	addl	$2, %eax
	imull	%ecx, %edx
	cmpl	%r8d, %eax
	jne	.L16
.L15:
	movq	%rbx, %rcx
	call	_ZNSolsEi
	movb	$10, 43(%rsp)
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	cmpq	$0, 16(%rax,%rdx)
	je	.L17
	leaq	43(%rsp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
.L18:
	xorl	%eax, %eax
.L12:
	addq	$48, %rsp
	popq	%rbx
	ret
.L17:
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZNSo3putEc
	jmp	.L18
.L26:
	leaq	.LC1(%rip), %rdx
	movq	%rbx, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %eax
	jmp	.L12
.L19:
	movl	$1, %edx
	jmp	.L15
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev3, Built by MSYS2 project) 16.2.0"
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
