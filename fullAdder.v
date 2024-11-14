module fulladder;
    reg a,b,cin;
    wire d,e,f,Sum,Cout;

    xorComp1 uut1(
        .a(a),
        .b(b),
        .d(d)
    );
    xorComp2 uut2(
        .d(d),
        .cin(cin),
        .Sum(Sum)
    );
    andComp1 uut3(
        .a(a),
        .b(b),
        .e(e)
    );
    andComp2 uut4(
        .d(d),
        .cin(cin),
        .f(f)
    );
    orComp uut5(
        .f(f),
        .e(e),
        .Cout(Cout)
    );

    initial begin
        a=0;
        b=0;
        cin=0;
        #10
        cin=1;
        #10
        b=1;
        cin=0;
        #10
        cin=1;
        #10
        a=1;
        b=0;
        cin=0;
        #10
        cin=1;
        #10
        b=1;
        cin=0;
        #10
        cin=1;
    end

    initial begin
        $display("INPUT\tOUTPUT");
        $monitor("a = %b b = %b cin = %b Sum = %b Cout = %b",a,b,cin,Sum,Cout);
    end

endmodule

module xorComp1(
    input a,
    input b,
    output d
);
    assign d = a^b;
endmodule
module xorComp2(
    input d,
    input cin,
    output Sum
);
    assign Sum = d^cin;
endmodule
module andComp1(
    input a,
    input b,
    output e
);
    assign e = a&b;
endmodule
module andComp2(
    input d,
    input cin,
    output f
);
    assign f = d&cin;
endmodule
module orComp(
    input e,
    input f,
    output Cout
);
    assign Cout = f|e;
endmodule