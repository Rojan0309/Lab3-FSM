module f1_fsm (
    input   logic       rst,
    input   logic       en,
    input   logic       clk,
    output  logic [7:0] data_out
);

typedef enum logic [7:0] {S0, S1, S2, S3, S4, S5, S6, S7, S8} state;
state current_state, next_state;

always_ff @(posedge clk)
        if (en)    current_state <= next_state;
        else       current_state <= S0;



endmodule
