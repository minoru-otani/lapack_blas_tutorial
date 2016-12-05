============================================================
 ��LAPACK/BLAS ����@�T���v���v���O�����ꗗ

 2016-12-02 (Fri) �K�J �q�I
============================================================

�@�{���y�щ��K���Ŏg���Ă���v���O������Linux�����Ŏ��s���m�F�������̂ł��BWindows�����ł�Cygwin���g�����Ƃœ����̊��𐮂��邱�Ƃ��ł��܂��BWindows�����ł́CVisual C++&Intel C++ compiler���g����BLAS, LAPACK�p�v���O�����̃R���p�C�����\�ł��B

-----------------------------
���T���v���v���O�����ꗗ
-----------------------------

����
	lapack_gcc.inc ... GCC�p�ݒ�t�@�C�� (Linux)
	lapack_icc.inc ... Intel C compiler�p�ݒ�t�@�C�� (Linux)
	lapack_win_intel.inc ... Intel C compiler�p�ݒ�t�@�C�� (Windows)
	Makefile.unix ... Linux�p���C�N�t�@�C�� �� GCC��Intel C compiler����I�сC�ݒ�t�@�C����ǂݍ��܂��āC"make -f Makefile.unix"�Ő���
	Makefile.win_intel ... Windows�p���C�N�t�@�C�� �� Intel C compiler�̐ݒ�t�@�C����ǂݍ��܂��āC"make -f Makefile.win_intel"�Ő���
	windows\ ... Windows������CBLAS, LAPACKE�̃C���N���[�h�t�@�C����u���Ă����t�H���_
��1��
	first.c ... �P���x�C�{���x��{���Z�Ƒ��Ό덷�̓��o
	complex_first.c ... ���f�����Z(C����p)
	complex_first_cpp.c ... ���f�����Z(C++�p)

��2��
	my_matvec_mul.c ... �s��E�x�N�g����
	matvec_mul.c ... DGEMV��p�������s��E�x�N�g����
	complex_matvec_mul.c ... ZGEMV��p�������f�s��E�x�N�g����
	my_linear_eq.c ... �A���ꎟ�������̋���
	linear_eq.c ... DGESV��p�����A���ꎟ�������̋���

	row_column_major.c ... �s�D��C��D��s��i�[�`��
	complex_row_column_major.c ... ���f���s�D��C��D��s��i�[�`��
	lapack_complex_row_column_major.c ... LAPACK�֐���p�������f���s�D��C��D��s��i�[�`��
	lapack_complex_row_column_major.cc ... LAPACK�֐���p�������f���s�D��C��D��s��i�[�`��(C++)

��3��
	blas1.c ... BLAS1�֐��T���v��
	blas2.c ... BLAS2�֐��T���v��
	blas3.c ... BLAS3�֐��T���v��
	jacobi_iteration.c ... ���R�r�����@
	power_eig.c ... �ׂ���@

��4��
	linear_eq_dgetrf.c ... LU�����C�O�i����E��ޑ��
	linear_eq_dsgesv.c ... �������x�������ǖ@
	linear_eq_dsposv.c ... ���Ώ̍s��p�̍������x�������ǖ@
	lapack_dgecon.c ... �������̌v�Z
	lapack_lamch.c ... �}�V���C�v�V�������̓��o
	invpower_eig.c ... �t�ׂ���@
	lapack_dgeev.c ... ����Ώ̍s��p�ŗL�l�E�ŗL�x�N�g���v�Z
	lapack_dsyev.c ... ���Ώ̍s��p�ŗL�l�E�ŗL�x�N�g���v�Z
	lapack_ssyev.c ... ���Ώ̍s��p�ŗL�l�E�ŗL�x�N�g���v�Z(�P���x)

��5��
	my_matvec_mul_pt.c ... Pthread�ŕ��񉻂����s��E�x�N�g���όv�Z
	my_matvec_mul_omp.c ... OpenMP�ŕ��񉻂����s��E�x�N�g���όv�Z
	my_linear_eq_omp.c ... OpenMP�ŕ��񉻂���LU�����C�O�i����E��ޑ���v�Z

��6��
	jacobi_iteration_mkl.c ... COO�`���a�s��p��Jacobi�����@
	jacobi_iteration_csr_mkl.c... CSR�`���a�s��p��Jacobi�����@
	bicgstab_mkl.c ... COO�`���a�s��p��BiCGSTAB�@
	bicgstab_csr_mkl.c ... CSR�`���a�s��p��BiCGSTAB�@
	mm/matrix_market_io.h  ... MatrixMarket�t�H�[�}�b�g�p�֐���`
	mm/matrix_market_io.c  ... MatrixMarket�t�H�[�}�b�g�p�֐��Q

��7�� (Windows�����̎��s�̓T�|�[�g���Ă��܂���)
	mycuda_daxpy.cu ... CUDA�T���v���v���O����
	matvec_mul_cublas.c ... CUBLAS��p�����s��E�x�N�g����
	matvec_mul_magma.c ... MAGMA��CUBLAS��p�����s��E�x�N�g����
	matvec_mul_magma_pure.c ... MAGMA������p�����s��E�x�N�g����
	linear_eq_magma.c ... MAGMA��p�����A���ꎟ�������̋���
	lapack_dgeev_magma.c ... MAGMA��p��������Ώ̍s��p�ŗL�l�E�ŗL�x�N�g���v�Z
	bicgstab_csr_cusparse.c ... cuSPARSE��p����BiCGSTAB�@

��8��
	integral_eq/Makefile.unix ... �ϕ������������v���O�����̃R���p�C��(Linux)
	integral_eq/Makefile.win_intel ... �ϕ������������v���O�����̃R���p�C��(Windows)
	integral_eq/gauss_integral.h ... �K�E�X�ϕ��������o�̂��߂̃w�b�_�t�@�C��
	integral_eq/gauss_integral.c ... �K�E�X�ϕ������̓��o
	integral_eq/iteration.c ... �����@�ƃf���o�e�B�u�t���[��@

-----------------------------
���R���p�C������
-----------------------------
�@�{�v���O������Linux, Windows�\�t�g�E�F�A�J�������ŃR���p�C�������s�\�ł��邱�Ƃ����L�̊��Ŋm�F���Ă���܂��B

�ELinux   ... GCC 4.4.7, Intel C/C++/Fortran compiler 13.1.3, Intel Math Kernel Library 11.0.5, LAPACK 3.6.0, MAGMA 1.6.0, CUDA 7.5 on CentOS 6.5 x86_64
          ... GCC 4.4.7, Iitel C/C++/Fortran compiler 14.0.2, Intel Math Kernel Library 11.1.2, LAPACK 3.6.0, MAGMA 1.6.1, CUDA 7.0 on CentOS 6.3 x86_64
�EWindows ... Intel C++ compiler 16.0.1.146, Intel Math Kernel Library 11.3.2 on Windows 8.1 x64

�@Linux, Windows�����ł̖{�v���O�����̃R���p�C�������s�́C��L�̃\�t�g�E�F�A���������Ă���CUI�ōs���ĉ������B����ȊO�̊����ł̏����ɂ��Ă͊m�F���ł��܂���̂ŁC���������邱�Ƃ��s�\�ł��B


-----------------------------
���R���p�C�����@ ... Linux
-----------------------------
0. Intel Math Kernel, CUDA, MAGMA, LAPACKE/CBLAS���C���X�g�[�����C�C���X�g�[����̃f�B���N�g����Makefile.unix���̓K�؂ȃ}�N�����ɐݒ�
1. Intel C/C++ Compiler�̏ꍇ��lapack_icc.inc���CGCC�̏ꍇ��lapack_gcc.inc�����ɍ��킹�ďC�����C���ꂼ��̃R���p�C�����K�؂ɓ��삷��悤���ݒ���s���CMakefile.unix���ǂݍ��ރt�@�C����ݒ�
2. make -f ./Makefile.unix �ŃR���p�C��
3. make -f ./Makefile.unix clean ��object�t�@�C���C���s�t�@�C�������������

-----------------------------
���R���p�C�����@ ... Windows
-----------------------------
0. Intel Math Kernel���C���X�g�[�����C�C���X�g�[����̃f�B���N�g����Makefile.win_intel���̓K�؂ȃ}�N�����ɐݒ�B�܂��CLAPACKE��CBLAS�̃C���N���[�h�t�@�C����windows�t�H���_�ɃR�s�[���Ă����i�f�t�H���g�ݒ�̏ꍇ�j�B
1. Intel C/C++ Compiler��Visual C++���K�؂ɓ��삷��悤���ݒ���s��
2. nmake -f ./Makefile.win_intel �ŃR���p�C��
3. nmake -f ./Makefile.win_intel clean ��object�t�@�C���C���s�t�@�C�������������

