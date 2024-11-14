module notGate;     
    reg a;
    wire b;
    notComp uut(
        .a(a),
        .b(b)
    );   
    initial begin
        a = 0;
        #10
        a = 1;
    end  
    initial begin
        $display("INPUT\tOUTPUT");
        $monitor("a = %b b = %b" ,a,b);
    end
endmodule

module notComp(
        input a,
        output b
    );
    assign b = ~a;
endmodule