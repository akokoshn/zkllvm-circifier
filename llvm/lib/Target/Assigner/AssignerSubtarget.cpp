//===-- AssignerSubtarget.cpp - Assigner Subtarget Information ------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the Assigner specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#include "AssignerSubtarget.h"

using namespace llvm;

#define DEBUG_TYPE "assigner-subtarget"

AssignerSubtarget::AssignerSubtarget(const Triple &TT, const TargetMachine &TM)
    : TargetSubtargetInfo(TT, "", "", "", {}, {}, nullptr, nullptr, nullptr,
                          nullptr, nullptr, nullptr),
      TLInfo(TM, *this) {}
