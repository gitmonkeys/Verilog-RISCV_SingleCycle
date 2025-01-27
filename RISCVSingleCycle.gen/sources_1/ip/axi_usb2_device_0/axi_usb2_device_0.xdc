# file: axi_usb2_device_0.xdc
# (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
# 
#################################################################
## (c) Copyright 1984 # 2012 Xilinx, Inc. All rights reserved.   
##								                                  
## This file contains confidential and proprietary information	  
## of Xilinx, Inc. and is protected under U.S. and		          
## international copyright and other intellectual property	      
## laws.							                              
##								                                  
## DISCLAIMER							                          
## This disclaimer is not a license and does not grant any	      
## rights to the materials distributed herewith. Except as	      
## otherwise provided in a valid license issued to you by	      
## Xilinx, and to the maximum extent permitted by applicable	  
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND	      
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES	  
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING	  
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON#	      
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and	  
## (2) Xilinx shall not be liable (whether in contract or tort,  
## including negligence, or under any other theory of		      
## liability) for any loss or damage of any kind or nature	      
## related to, arising under or in connection with these	      
## materials, including for any direct, or any indirect,	      
## special, incidental, or consequential loss or damage		  
## (including loss of data, profits, goodwill, or any type of	  
## loss or damage suffered as a result of any action brought	  
## by a third party) even if such damage or loss was		      
## reasonably foreseeable or Xilinx had been advised of the	  
## possibility of the same.					                  
##								                                  
## CRITICAL APPLICATIONS					                      
## Xilinx products are not designed or intended to be fail#	  
## safe, or for use in any application requiring fail#safe	      
## performance, such as life#support or safety devices or	      
## systems, Class III medical devices, nuclear facilities,	      
## applications related to the deployment of airbags, or any	  
## other applications that could lead to death, personal	      
## injury, or severe property or environmental damage		      
## (individually and collectively, "Critical			          
## Applications"). Customer assumes the sole risk and		      
## liability of any use of Xilinx products in Critical		      
## Applications, subject only to applicable laws and		      
## regulations governing limitations on product liability.	      
##								                                  
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS	  
## PART OF THIS FILE AT ALL TIMES. 				              
#################################################################
# creating wavier for vivado tool
create_waiver -internal -scope -type CDC -id {CDC-4} -user "axi_usb2_device" -tag "10945" -description "Waiving the CDC-4 for multi-bit as this signal is validated using a control signal which is getting synchronized to destination clock domain properly. this multibit signal will not change until a ready signal is asserted by the destination clock domain which is getting synchronized properly" \
   -from [get_pins *.IPIC_IF/brr_reg\[*\]/C] \
   -to [get_pins ULPI.USB_CORE/sie_buf_ready_reg\[*\]/D]
create_waiver -internal -scope -type CDC -id {CDC-1} -user "axi_usb2_device" -tag "10945" -description "Waiving the CDC-1 for single-bit as this signal is validated using a control signal which is getting synchronized to destination clock domain properly. this singlebit signal will not change until a ready signal is asserted by the destination clock domain which is getting synchronized properly" \
   -from [get_pins ULPI.USB_CORE/isr_reg\[16\]/C] \
   -to [get_pins *.IPIC_IF/usb_sr_reg_reg\[16\]/D]

# General false path for all the paths implemented CDC flops
 #set_false_path -to [get_pins -hier *cdc_to*/D]
 set_false_path -to [get_pins -of [get_cells -hier -filter {NAME =~*cdc_to*}] -filter {REF_PIN_NAME =~D}]
# these registers are synchronized using a loopback handshake method
# A Valid and ACK signals are used to read these signals on destination clock domain
# the valid and ACK signals uses CDC flops to cross the clock domain. 
 #set_false_path -from [get_pins -hier -filter name=~*IPIC_IF/brr_reg*/C] -to [get_pins -hier -filter name=~*USB_CORE/sie_buf_ready_reg*/D]
 set_false_path -from [get_pins -of [get_cells -hier -filter {NAME =~*IPIC_IF/brr_reg*}] -filter {REF_PIN_NAME =~C}] -to [get_pins -of [get_cells -hier -filter {NAME =~*USB_CORE/sie_buf_ready_reg*}] -filter {REF_PIN_NAME =~D}]
 #set_false_path -from [get_pins -hier -filter name=~*USB_CORE/isr_reg*/C] -to [get_pins -hier -filter name=~*IPIC_IF/usb_sr_reg_reg*/D]
 set_false_path -from [get_pins -of [get_cells -hier -filter {NAME =~*USB_CORE/isr_reg*}] -filter {REF_PIN_NAME =~C}] -to [get_pins -of [get_cells -hier -filter {NAME =~*IPIC_IF/usb_sr_reg_reg*}] -filter {REF_PIN_NAME =~D}]





