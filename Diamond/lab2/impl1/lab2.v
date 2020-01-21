/* Verilog model created from schematic lab2.sch -- Jan 21, 2020 03:57 */

module lab2( btn, clk_25mhz, led, wifi_rxd );
 input [6:1] btn;
 input clk_25mhz;
output [7:0] led;
output wifi_rxd;
wire N_44;
wire N_45;
wire N_46;
wire N_47;
wire N_48;
wire N_49;
wire N_42;
wire N_43;
wire N_40;
wire N_41;
wire N_35;
wire N_32;
wire N_24;
wire N_12;
wire N_11;
wire N_8;
wire N_1;



OR3 I37 ( .A(N_49), .B(btn[3]), .C(N_24), .Z(N_42) );
INV I28 ( .A(btn[4]), .Z(N_44) );
AND2 I39 ( .A(btn[3]), .B(btn[4]), .Z(N_46) );
AND2 I41 ( .A(btn[5]), .B(N_44), .Z(N_48) );
AND2 I42 ( .A(btn[4]), .B(N_40), .Z(N_8) );
AND2 I36 ( .A(btn[1]), .B(btn[4]), .Z(N_24) );
AND2 I34 ( .A(N_44), .B(N_47), .Z(N_49) );
AND2 I29 ( .A(btn[4]), .B(btn[5]), .Z(N_35) );
AND2 I30 ( .A(N_44), .B(btn[3]), .Z(N_32) );
OR2 I35 ( .A(btn[5]), .B(btn[6]), .Z(N_47) );
OR2 I43 ( .A(N_48), .B(btn[6]), .Z(N_43) );
OR2 I32 ( .A(btn[6]), .B(btn[3]), .Z(N_40) );
OR2 I33 ( .A(N_32), .B(btn[1]), .Z(N_41) );
OR4 I40 ( .A(btn[6]), .B(N_46), .C(btn[1]), .D(btn[5]), .Z(N_45) );
OR4 I26 ( .A(btn[5]), .B(btn[1]), .C(btn[3]), .D(btn[6]), .Z(N_11) );
OR4 I31 ( .A(N_32), .B(N_35), .C(btn[6]), .D(btn[1]), .Z(N_12) );
OB I19 ( .I(N_41), .O(led[3]) );
OB I18 ( .I(N_43), .O(led[1]) );
OB I20 ( .I(N_42), .O(led[2]) );
OB I21 ( .I(N_45), .O(led[0]) );
OB I22 ( .I(N_8), .O(led[4]) );
OB I23 ( .I(N_11), .O(led[6]) );
OB I24 ( .I(N_12), .O(led[5]) );
OB I25 ( .I(N_1), .O(led[7]) );
serial_tx I1 ( .byte_in({ N_1,N_11,N_12,N_8,N_41,N_42,N_43,N_45 }),
            .clk(clk_25mhz), .ser_out(wifi_rxd) );

endmodule // lab2
