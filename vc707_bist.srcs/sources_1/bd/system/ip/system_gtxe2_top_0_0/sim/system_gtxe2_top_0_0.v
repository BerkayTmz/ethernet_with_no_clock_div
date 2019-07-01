// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:gtxe2_top:1.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_gtxe2_top_0_0 (
  user_clock_p,
  user_clock_n,
  si5324_out_p,
  si5324_out_n,
  si5324_in_p,
  si5324_in_n,
  SMA_out_p,
  SMA_out_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 USER_CLOCK_IN CLK_P" *)
input wire user_clock_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 USER_CLOCK_IN CLK_N" *)
input wire user_clock_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SI5324_OUT CLK_P" *)
output wire si5324_out_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SI5324_OUT CLK_N" *)
output wire si5324_out_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SI5324_IN CLK_P" *)
input wire si5324_in_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SI5324_IN CLK_N" *)
input wire si5324_in_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SMA_OUT CLK_P" *)
output wire SMA_out_p;
(* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 SMA_OUT CLK_N" *)
output wire SMA_out_n;

  gtxe2_top inst (
    .user_clock_p(user_clock_p),
    .user_clock_n(user_clock_n),
    .si5324_out_p(si5324_out_p),
    .si5324_out_n(si5324_out_n),
    .si5324_in_p(si5324_in_p),
    .si5324_in_n(si5324_in_n),
    .SMA_out_p(SMA_out_p),
    .SMA_out_n(SMA_out_n)
  );
endmodule
