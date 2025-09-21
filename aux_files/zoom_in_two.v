module zoom_in_two (
    enable,
    data_in,
    data_out
);
    input enable;
    input [7:0] data_in;
    output [31:0] data_out;
    output done;

    //replica o mesmo pixel 4 vezes
    assign data_out = (enable) ? {data_in[7:0], data_in[7:0], data_in[7:0], data_in[7:0]} : 32'b0;


endmodule
