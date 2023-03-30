module counter2bit(RST, CLK, init, ld, en, prl, out, Co);
   
    input init, ld, en, RST, CLK;
    input [1:0] prl;
    output reg [1:0] out;
    output Co;

    always @(posedge CLK , posedge RST) begin
        if (RST) 
            out <= 2'b0;

        else if (ld) 
            out <= prl;

        else if (en) 
            out <= out + 1;
    end

    assign Co = &out;

endmodule