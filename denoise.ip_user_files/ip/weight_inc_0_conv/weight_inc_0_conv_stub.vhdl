-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Aug 10 21:31:55 2022
-- Host        : DESKTOP-5JBVKGD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/wwwka/Desktop/my_cnn/denoise/denoise.gen/sources_1/ip/weight_inc_0_conv/weight_inc_0_conv_stub.vhdl
-- Design      : weight_inc_0_conv
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity weight_inc_0_conv is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 1247 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 1247 downto 0 )
  );

end weight_inc_0_conv;

architecture stub of weight_inc_0_conv is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[3:0],dina[1247:0],douta[1247:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_4_4,Vivado 2021.1";
begin
end;
