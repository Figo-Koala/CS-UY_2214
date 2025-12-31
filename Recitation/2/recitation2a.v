module recitation2a(A, B, X);
    input A, B;
    output X;

    wire nB;
    wire w1, w2, w3, w4;

    not(nB,B);
    nor(w1,A,nB);
    and(w2,A,B);
    or(w3,B,A);
    nor(w4,w1,w3);
    nand(X,w4,w3);

endmodule