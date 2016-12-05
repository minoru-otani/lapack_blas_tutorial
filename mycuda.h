//
// mycuda.h ... CUDA�p��b���[�`��
// Copyright (c) 2015 T.Kouya
//
#ifndef __MYCUDA_H_

#include "cuda.h"
#include "driver_types.h"

#ifdef __cplusplus
extern "C" {
#endif

// GPU��ɍs��i�[�̈���m��
void *mycuda_calloc(int, size_t);

// GPU��̃������̈�����
void mycuda_free(void *);

#ifdef __cplusplus
}
#endif

#endif // __MYCUDA_H
