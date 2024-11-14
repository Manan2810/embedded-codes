module orGate;     
    reg a,b;
    wire c;
    orComp uut(
        .a(a),
        .b(b),
        .c(c)
    );   
    initial begin
        a = 0;
        b = 0;
        #10
        b = 1;
        #10
        a = 1;
        b = 0;
        #10 b = 1;
    end  
    initial begin
        $display("INPUT\tOUTPUT");
        $monitor("a = %b b = %b c = %b",a,b,c);
    end
endmodule

module orComp(
        input a,
        input b,
        output c
    );
    assign c = a|b;
endmodule