//===- IntrinsicsAssigner.td - Defines assigner intrinsics -----------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines all of the ZKLLVM assigner-specific intrinsics.
//
//===----------------------------------------------------------------------===//

def int_assigner_malloc:    Intrinsic<[llvm_ptr_ty], [llvm_i64_ty]>;
def int_assigner_free:      Intrinsic<[], [llvm_ptr_ty]>;
def int_assigner_poseidon:  Intrinsic<[llvm_anyvector_ty], [LLVMMatchType<0>]>;
def int_assigner_sha2_256:  Intrinsic<[llvm_anyvector_ty], [LLVMMatchType<0>, LLVMMatchType<0>]>;
def int_assigner_sha2_512:  Intrinsic<[llvm_any_ty], [llvm_any_ty, LLVMMatchType<1>, llvm_anyvector_ty]>;
def int_assigner_optimal_ate_pairing: Intrinsic<[llvm_anyvector_ty], [llvm_any_ty, llvm_anyvector_ty]>;
def int_assigner_zkml_convolution:    Intrinsic<[llvm_ptrptr_ty], [llvm_ptrptr_ty, llvm_ptrptr_ty, llvm_i64_ty]>;
def int_assigner_zkml_pooling:        Intrinsic<[llvm_ptrptr_ty], [llvm_ptrptr_ty, llvm_i64_ty]>;
def int_assigner_zkml_ReLU:           Intrinsic<[llvm_float_ty], [llvm_float_ty]>;
def int_assigner_zkml_batch_norm:     Intrinsic<[llvm_ptrptr_ty], [llvm_ptrptr_ty]>;
def int_assigner_curve_init: Intrinsic<[llvm_any_ty], [llvm_any_ty, LLVMMatchType<1>]>;

def int_assigner_bit_decomposition: Intrinsic<[], [llvm_ptr_ty, llvm_i32_ty, llvm_i64_ty, llvm_i1_ty]>;
def int_assigner_bit_composition: Intrinsic<[llvm_any_ty], [llvm_ptr_ty, llvm_i32_ty, llvm_i1_ty]>;

def int_assigner_exit_check: Intrinsic<[], [llvm_i1_ty]>;

def int_assigner_print_native_pallas_field: Intrinsic<[], [llvm_any_ty]>;
