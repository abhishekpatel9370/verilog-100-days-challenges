# Full Adder and Full Subtractor

This repository contains Verilog implementations of a **Full Adder** and **Full Subtractor**.

## Full Adder
A **Full Adder** is a combinational circuit that adds three input bits (A, B, and Carry-in) and produces a sum (SUM) and a carry-out (Cout).

### Truth Table:
| A | B | Cin | SUM | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

### Verilog Code:
```verilog
module full_adder(
    input A, B, Cin,
    output SUM, Cout
);
    assign SUM = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (Cin & A);
endmodule
```

## Full Subtractor
A **Full Subtractor** is a combinational circuit that performs subtraction of three input bits (A, B, and Borrow-in) and produces a difference (Diff) and a borrow-out (Bout).

### Truth Table:
| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

### Verilog Code:
```verilog
module full_subtractor(
    input A, B, Bin,
    output Diff, Bout
);
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | (~(A ^ B) & Bin);
endmodule
y!


