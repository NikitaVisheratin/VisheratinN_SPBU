	.text
	.file	"dynamicArray.c"
	.globl	dArrayInit                      # -- Begin function dArrayInit
	.p2align	4, 0x90
	.type	dArrayInit,@function
dArrayInit:                             # @dArrayInit
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 8(%rdi)
	movl	%esi, 12(%rdi)
	movl	%esi, %edi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	dArrayInit, .Lfunc_end0-dArrayInit
	.cfi_endproc
                                        # -- End function
	.globl	dArrayReserve                   # -- Begin function dArrayReserve
	.p2align	4, 0x90
	.type	dArrayReserve,@function
dArrayReserve:                          # @dArrayReserve
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movl	%esi, %esi
	shlq	$2, %rsi
	callq	realloc@PLT
	movq	%rax, (%r14)
	movl	%ebx, 12(%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	dArrayReserve, .Lfunc_end1-dArrayReserve
	.cfi_endproc
                                        # -- End function
	.globl	dArrayAppend                    # -- Begin function dArrayAppend
	.p2align	4, 0x90
	.type	dArrayAppend,@function
dArrayAppend:                           # @dArrayAppend
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8(%rdi), %r14d
	movq	(%rdi), %rax
	cmpl	12(%rdi), %r14d
	jne	.LBB2_2
# %bb.1:
	addl	$100, %r14d
	leaq	(,%r14,4), %rsi
	movq	%rax, %rdi
	callq	realloc@PLT
	movq	%rax, (%rbx)
	movl	%r14d, 12(%rbx)
	movl	8(%rbx), %r14d
.LBB2_2:
	movl	%r14d, %ecx
	movl	%ebp, (%rax,%rcx,4)
	incl	8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	dArrayAppend, .Lfunc_end2-dArrayAppend
	.cfi_endproc
                                        # -- End function
	.globl	dArrayPrint                     # -- Begin function dArrayPrint
	.p2align	4, 0x90
	.type	dArrayPrint,@function
dArrayPrint:                            # @dArrayPrint
	.cfi_startproc
# %bb.0:
	cmpl	$0, 8(%rdi)
	je	.LBB3_4
# %bb.1:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	.L.str(%rip), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movl	(%rax,%r15,4), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	incq	%r15
	movl	8(%rbx), %eax
	cmpq	%rax, %r15
	jb	.LBB3_2
# %bb.3:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB3_4:
	movl	$10, %edi
	jmp	putchar@PLT                     # TAILCALL
.Lfunc_end3:
	.size	dArrayPrint, .Lfunc_end3-dArrayPrint
	.cfi_endproc
                                        # -- End function
	.globl	dArraySort                      # -- Begin function dArraySort
	.p2align	4, 0x90
	.type	dArraySort,@function
dArraySort:                             # @dArraySort
	.cfi_startproc
# %bb.0:
	movl	8(%rdi), %edx
	decl	%edx
	xorl	%esi, %esi
	jmp	quickSort@PLT                   # TAILCALL
.Lfunc_end4:
	.size	dArraySort, .Lfunc_end4-dArraySort
	.cfi_endproc
                                        # -- End function
	.globl	dArrayDelete                    # -- Begin function dArrayDelete
	.p2align	4, 0x90
	.type	dArrayDelete,@function
dArrayDelete:                           # @dArrayDelete
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rdi
	jmp	free@PLT                        # TAILCALL
.Lfunc_end5:
	.size	dArrayDelete, .Lfunc_end5-dArrayDelete
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
