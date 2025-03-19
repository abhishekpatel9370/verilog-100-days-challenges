# 4-Bit Comparator, 8:1 Multiplexer, and 3:4 Decoder

This repository contains Verilog implementations of a **4-bit Comparator**, an **8:1 Multiplexer**, and a **3:4 Decoder**.

## 4-Bit Comparator
A **4-bit Comparator** compares two 4-bit binary numbers (A and B) and produces three outputs:
- `A_gt_B` (A is greater than B)
- `A_lt_B` (A is less than B)
- `A_eq_B` (A is equal to B)

### Truth Table Example:
| A  | B  | A > B | A < B | A = B |
|----|----|-------|-------|-------|
| 0000 | 0000 |  0  |  0  |  1  |
| 0001 | 0000 |  1  |  0  |  0  |
| 0010 | 0011 |  0  |  1  |  0  |
| 1100 | 1010 |  1  |  0  |  0  |

### Verilog Code:
```verilog
module comparator_4bit(
    input [3:0] A, B,
    output A_gt_B, A_lt_B, A_eq_B
);
    assign A_gt_B = (A > B);
    assign A_lt_B = (A < B);
    assign A_eq_B = (A == B);
endmodule
```

---

## 8:1 Multiplexer
An **8:1 Multiplexer** selects one of the 8 input lines based on a 3-bit selection input and produces a single output.

### Truth Table:
| S2 | S1 | S0 | Output |
|----|----|----|--------|
|  0 |  0 |  0 | I0     |
|  0 |  0 |  1 | I1     |
|  0 |  1 |  0 | I2     |
|  0 |  1 |  1 | I3     |
|  1 |  0 |  0 | I4     |
|  1 |  0 |  1 | I5     |
|  1 |  1 |  0 | I6     |
|  1 |  1 |  1 | I7     |

### Verilog Code:
```verilog
module mux_8to1(
    input [7:0] I,
    input [2:0] S,
    output Y
);
    assign Y = I[S];
endmodule
```

---

## 3:4 Decoder
A **3:4 Decoder** takes a 3-bit input and activates one of the four outputs based on the input combination.

### Truth Table:
| A2 | A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|----|----|----|----|----|----|----|
|  0 |  0 |  0 |  0 |  0 |  0 |  1 |
|  0 |  0 |  1 |  0 |  0 |  1 |  0 |
|  0 |  1 |  0 |  0 |  1 |  0 |  0 |
|  0 |  1 |  1 |  1 |  0 |  0 |  0 |

### Verilog Code:
```verilog
module decoder_3to4(
    input [2:0] A,
    output reg [3:0] Y
);
    always @(*) begin
        case (A)
            3'b000: Y = 4'b0001;
            3'b001: Y = 4'b0010;
            3'b010:
