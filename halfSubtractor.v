module halfsubtractor;
    reg a,b;
    wire diff,borr;

    xorComp uut1(
        .a(a),
        .b(b),
        .diff(diff)
    );

    andComp uut2(
        .a(a),
        .b(b),
        .borr(borr)
    );

    initial begin
        a=0;
        b=0;
        #10
        b=1;
        #10
        a=1;
        b=0;
        #10
        b=1;
    end
    initial begin
        $display("INPUT \t OUTPUT");
        $monitor("a = %b b = %b diff = %b borr = %b",a,b,diff,borr);
    end

endmodule

module xorComp(
    input a,
    input b,
    output diff
);
    assign diff = a^b;
endmodule

module andComp(
    input a,
    input b,
    output borr
);
    assign borr = b&(~a);
endmodule
