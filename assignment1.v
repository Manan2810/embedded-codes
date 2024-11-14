module circuit;     
    reg a,c,b;
    wire d,e,z;

    andComp1 uut1(
        .a(a),
        .c(c),
        .d(d)
    );

    andComp2 uut2(
        .c(c),
        .b(b),
        .e(e)
    );

    orComp uut3(
        .d(d),
        .e(e),
        .z(z)
    );   
    initial begin
        a = 0;
        b = 0;
        c = 0;
        #10
        c = 1;
        #10
        b = 1;
        c = 0;
        #10 
        c = 1;
        #10
        a = 1;
        b = 0;
        c = 0;
        #10
        c = 1;
        #10
        b = 1;
        c = 0;
        #10 
        c = 1;

    end  
    initial begin
        $display("INPUT\tOUTPUT");
        $monitor("a = %b b = %b c = %b d = %b e = %b z = %b",a,b,c,d,e,z);
    end
endmodule

module andComp1(
        input a,
        input c,
        output d
    );
    assign d = a&(~c);
endmodule
module andComp2(
        input c,
        input b,
        output e
    );
    assign e = c&b;
endmodule
module orComp(
        input d,
        input e,
        output z
    );
    assign z = d|e;
endmodule