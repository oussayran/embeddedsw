##############################################################################
#
# Copyright (C) 2011 - 2014 Xilinx, Inc.  All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# Use of the Software is limited solely to applications:
# (a) running on a Xilinx device, or
# (b) that interact with a Xilinx device through a bus or interconnect.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
# WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
# OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
# Except as contained in this notice, the name of the Xilinx shall not be used
# in advertising or otherwise to promote the sale, use or other dealings in
# this Software without prior written authorization from Xilinx.
###############################################################################

#uses "xillib.tcl"


proc generate {drv_handle} {
    ::hsi::utils::define_include_file $drv_handle "xparameters.h" "XDEINT" "NUM_INSTANCES" "DEVICE_ID" "C_DIAG" "C_MOTION" "C_DEPTH" "C_STREAMS" "C_TRIPLE_PORT" "C_MAX_XSIZE" "C_BASEADDR" "C_HIGHADDR"

    ::hsi::utils::define_config_file $drv_handle "xdeint_g.c" "XDeint" "DEVICE_ID" "C_BASEADDR"

    ::hsi::utils::define_canonical_xpars $drv_handle "xparameters.h" "Deinterlacer" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR"
}
