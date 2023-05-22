module mux2to1(slc, a, b, c, d, w);
    parameter N = 32;

    input [1:0] slc;
    input [N-1:0] a, b, c, d;
    
    output [N-1:0] w;

    assign w = (slc == 2'b00) ? a :
               (slc == 2'b01) ? b :
               (slc == 2'b10) ? c :
               (slc == 2'b11) ? d : 1'bz;

endmodule