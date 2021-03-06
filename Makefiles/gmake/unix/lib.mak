# -*- makefile -*- Time-stamp: <06/11/02 10:37:02 ptr>
#
# Copyright (c) 1997-1999, 2002, 2003, 2005-2007
# Petr Ovtchenkov
#
# This material is provided "as is", with absolutely no warranty expressed
# or implied. Any use is at your own risk.
#
# Permission to use or copy this software for any purpose is hereby granted
# without fee, provided the above notices are retained on all copies.
# Permission to modify the code and to distribute modified code is granted,
# provided the above notices are retained, and a notice that the code was
# modified is included with the above copyright notice.
#

DBG_SUFFIX ?= g
STLDBG_SUFFIX ?= stl${DBG_SUFFIX}
LIBPREFIX ?= lib

# Shared libraries:

SO_NAME        := ${LIBPREFIX}${LIBNAME}.$(SO)
SO_NAMEx       := ${SO_NAME}.${MAJOR}
SO_NAMExx      := ${SO_NAMEx}.${MINOR}
SO_NAMExxx     := ${SO_NAMExx}.${PATCH}

SO_NAME_OUT    := $(OUTPUT_DIR)/${SO_NAME}
SO_NAME_OUTx   := $(OUTPUT_DIR)/${SO_NAMEx}
SO_NAME_OUTxx  := $(OUTPUT_DIR)/${SO_NAMExx}
SO_NAME_OUTxxx := $(OUTPUT_DIR)/${SO_NAMExxx}

SO_NAME_DBG    := ${LIBPREFIX}${LIBNAME}${DBG_SUFFIX}.$(SO)
SO_NAME_DBGx   := ${SO_NAME_DBG}.${MAJOR}
SO_NAME_DBGxx  := ${SO_NAME_DBGx}.${MINOR}
SO_NAME_DBGxxx := ${SO_NAME_DBGxx}.${PATCH}

SO_NAME_OUT_DBG    := $(OUTPUT_DIR_DBG)/${SO_NAME_DBG}
SO_NAME_OUT_DBGx   := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGx}
SO_NAME_OUT_DBGxx  := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGxx}
SO_NAME_OUT_DBGxxx := $(OUTPUT_DIR_DBG)/${SO_NAME_DBGxxx}

ifndef WITHOUT_STLPORT
SO_NAME_STLDBG    := ${LIBPREFIX}${LIBNAME}${STLDBG_SUFFIX}.$(SO)
SO_NAME_STLDBGx   := ${SO_NAME_STLDBG}.${MAJOR}
SO_NAME_STLDBGxx  := ${SO_NAME_STLDBGx}.${MINOR}
SO_NAME_STLDBGxxx := ${SO_NAME_STLDBGxx}.${PATCH}

SO_NAME_OUT_STLDBG    := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBG}
SO_NAME_OUT_STLDBGx   := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGx}
SO_NAME_OUT_STLDBGxx  := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGxx}
SO_NAME_OUT_STLDBGxxx := $(OUTPUT_DIR_STLDBG)/${SO_NAME_STLDBGxxx}
# WITHOUT_STLPORT
endif

# Static libraries:

A_NAME := ${LIBPREFIX}${LIBNAME}.$(ARCH)
A_NAME_OUT := $(OUTPUT_DIR_A)/$(A_NAME)

A_NAME_DBG := ${LIBPREFIX}${LIBNAME}${DBG_SUFFIX}.$(ARCH)
A_NAME_OUT_DBG := $(OUTPUT_DIR_A_DBG)/$(A_NAME_DBG)

ifndef WITHOUT_STLPORT
A_NAME_STLDBG := ${LIBPREFIX}${LIBNAME}${STLDBG_SUFFIX}.$(ARCH)
A_NAME_OUT_STLDBG := $(OUTPUT_DIR_A_STLDBG)/$(A_NAME_STLDBG)
endif
