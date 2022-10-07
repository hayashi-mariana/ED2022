	.file	"EP1.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"programa para c\303\241lculo de m\303\251dia, mediana, desvio padr\303\243o e valores m\303\241x e min"
.LC3:
	.string	"%d, Quantidade de n\303\272meros: "
.LC4:
	.string	"%d"
.LC5:
	.string	"%d, Digite os n\303\272meros: "
.LC6:
	.string	"%f"
.LC9:
	.string	"A m\303\251dia \303\251 : %.2f\n"
	.align 8
.LC10:
	.string	"O valor m\303\255nimo \303\251 : %.2f\n, O valor m\303\241ximo \303\251 : %.2f\n"
.LC11:
	.string	"A mediana \303\251 : %.2f\n"
.LC12:
	.string	"O desvio padr\303\243o \303\251 : %.2f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$464, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	pxor	%xmm0, %xmm0
	movss	%xmm0, -420(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -448(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -428(%rbp)
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -424(%rbp)
	movl	-460(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-460(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -456(%rbp)
	jmp	.L2
.L7:
	movl	-456(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-416(%rbp), %rax
	movl	-456(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movss	-448(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -448(%rbp)
	movl	-460(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	-448(%rbp), %xmm0
	divss	%xmm1, %xmm0
	movss	%xmm0, -444(%rbp)
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm1
	movss	-428(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jbe	.L3
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movss	%xmm0, -428(%rbp)
.L3:
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	comiss	-424(%rbp), %xmm0
	jbe	.L5
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movss	%xmm0, -424(%rbp)
.L5:
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	subss	-444(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC7(%rip), %xmm1
	call	pow@PLT
	movl	-460(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	cvtss2sd	-440(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -440(%rbp)
	cvtss2sd	-440(%rbp), %xmm0
	call	sqrt@PLT
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -436(%rbp)
	addl	$1, -456(%rbp)
.L2:
	movl	-460(%rbp), %eax
	cmpl	%eax, -456(%rbp)
	jl	.L7
	movl	$0, -456(%rbp)
	jmp	.L8
.L13:
	movl	-456(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -452(%rbp)
	jmp	.L9
.L12:
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movl	-452(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm1
	comiss	%xmm1, %xmm0
	jbe	.L10
	movl	-456(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movss	%xmm0, -420(%rbp)
	movl	-452(%rbp), %eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movl	-456(%rbp), %eax
	cltq
	movss	%xmm0, -416(%rbp,%rax,4)
	movl	-452(%rbp), %eax
	cltq
	movss	-420(%rbp), %xmm0
	movss	%xmm0, -416(%rbp,%rax,4)
.L10:
	addl	$1, -452(%rbp)
.L9:
	movl	-460(%rbp), %eax
	cmpl	%eax, -452(%rbp)
	jl	.L12
	addl	$1, -456(%rbp)
.L8:
	movl	-460(%rbp), %eax
	cmpl	%eax, -456(%rbp)
	jl	.L13
	movl	-460(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L14
	movl	-456(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm1
	movl	-456(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	addss	%xmm1, %xmm0
	movss	.LC8(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -432(%rbp)
	jmp	.L15
.L14:
	movl	-456(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	cltq
	movss	-416(%rbp,%rax,4), %xmm0
	movss	%xmm0, -432(%rbp)
.L15:
	cvtss2sd	-444(%rbp), %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-424(%rbp), %xmm1
	cvtss2sd	-428(%rbp), %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	cvtss2sd	-432(%rbp), %xmm0
	leaq	.LC11(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-436(%rbp), %xmm0
	leaq	.LC12(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1082130432
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 4
.LC8:
	.long	1073741824
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
