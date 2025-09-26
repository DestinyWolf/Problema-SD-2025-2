module zoom_out_two(
    enable,
    data_in,
    data_out
);
    input enable;
    input [31:0] data_in;
    output [7:0] data_out;
    output done;

    //recebe 4 pixels, descarta os 3 ultimos e mantem apenas o primeiro
    assign data_out = (enable) ? data_in[7:0] : 8'b00000000;

endmodule
