module halfadder;     
    reg a,b;
    wire s,cout;

    andComp uut1(
        .a(a),
        .b(b),
        .cout(cout)
    );

    xorComp uut2(
        .a(a),
        .b(b),
        .s(s)
    );   
    initial begin
        a = 0;
        b = 0;
        #10
        b = 1;
        #10
        a = 1;
        b = 0;
        #10 
        b = 1;

    end  
    initial begin
        $display("INPUT\tOUTPUT");
        $monitor("a = %b b = %b s = %b cout = %b",a,b,s,cout);
    end
endmodule

module xorComp(
        input a,
        input b,
        output s
    );
    assign s = a^b;
endmodule
module andComp(
        input a,
        input b,
        output cout
    );
    assign cout = a&b;
endmodule