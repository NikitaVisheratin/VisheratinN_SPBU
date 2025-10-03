	.text
	.file	"quickSort.c"
	.globl	quickSort                       # -- Begin function quickSort
	.p2align	4, 0x90
	.type	quickSort,@function
quickSort:                              # @quickSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movabsq	$-4294967296, %r15              # imm = 0xFFFFFFFF00000000
	movabsq	$4294967296, %r12               # imm = 0x100000000
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	(%rdi), %rax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	incl	%r14d
	movl	%r14d, %esi
	cmpl	%ebx, %r14d
	jge	.LBB0_18
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_9 Depth 3
	movslq	%esi, %r9
	movl	(%rax,%r9,4), %ecx
	movl	%esi, %r14d
	cmpl	%ebx, %r9d
	jl	.LBB0_2
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	%ecx, (%rax,%r9,4)
	leal	-1(%r14), %edx
	cmpl	%esi, %edx
	jle	.LBB0_17
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	%ebx, %r10d
	movl	%esi, %r11d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=2
	movl	%r14d, %r11d
	subl	%ebp, %r11d
	cmpl	%r11d, %r10d
	jle	.LBB0_14
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_9 Depth 3
	movslq	%r10d, %rdx
	movslq	%r11d, %r14
	movq	%rdx, %rdi
	shlq	$32, %rdi
	addq	%r12, %rdi
	movl	%edx, %r10d
	negl	%r10d
	.p2align	4, 0x90
.LBB0_4:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %r13
	movl	%r10d, %r8d
	movl	(%rax,%rdx,4), %r9d
	decq	%rdx
	addq	%r15, %rdi
	cmpq	%r14, %r13
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=3
	leal	1(%r8), %r10d
	cmpl	%ecx, %r9d
	jg	.LBB0_4
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	leal	-1(%r11), %r10d
	cmpl	%edx, %r10d
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	%r9d, (%rax,%r14,4)
	incl	%r11d
	movslq	%r11d, %r14
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	leal	1(%rdx), %r10d
	sarq	$32, %rdi
	movq	%r14, %r9
	shlq	$32, %r9
	addq	%r15, %r9
	movl	$1, %ebp
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rax,%r13,4), %r11d
	addq	%r12, %r9
	decl	%ebp
	cmpq	%rdi, %r13
	jge	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=3
	incq	%r13
	cmpl	%ecx, %r11d
	jl	.LBB0_9
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=2
	addl	%r14d, %r8d
	cmpl	%ebp, %r8d
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_3 Depth=2
	movl	%r11d, 4(%rax,%rdx,4)
	movl	%edx, %r10d
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	sarq	$32, %r9
	subl	%ebp, %r14d
	movl	%ecx, (%rax,%r9,4)
	leal	-1(%r14), %edx
	cmpl	%esi, %edx
	jle	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	(%rsp), %r13                    # 8-byte Reload
	movq	%r13, %rdi
	callq	quickSort
	movq	(%r13), %rax
	jmp	.LBB0_17
.LBB0_18:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	quickSort, .Lfunc_end0-quickSort
	.cfi_endproc
                                        # -- End function
	.ident	"Ubuntu clang version 18.1.3 (1ubuntu1)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
