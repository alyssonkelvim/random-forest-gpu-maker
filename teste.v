// Benchmark "out/memory" written by ABC on Wed Jun  8 08:39:19 2022

module \out/memory  ( 
    x0, x1, x2, x3, x4, x5,
    z0, z1, z2  );
  input  x0, x1, x2, x3, x4, x5;
  output z0, z1, z2;
  assign z1 = ~x0 & ~x1 & (x2 | ~x3);
  assign z2 = ~x0 & ~x1 & (x2 | (~x3 & ~x4));
  assign z0 = ~x0;
endmodule


