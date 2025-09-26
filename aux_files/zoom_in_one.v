module zoom_in_one (
    enable,
    data_in,
    data_out
);
    input enable;
    input [31:0] data_in;
    output [7:0] data_out;
    output done;

    assign data_out = (enable) ? data_in[7:0] : 8'b00000000;


endmodule
