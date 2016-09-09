[Transient Analysis]
{
   Npanes: 1
   {
      traces: 3 {524290,0,"V(file1)"} {524291,0,"V(file2)"} {524292,0,"V(file1)-V(file2)"}
      X: (' ',1,0,0.5,5)
      Y[0]: (' ',1,-3,0.5,2.5)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: (' ',0,0,1,-3,0.5,2.5)
      Log: 0 0 0
      GridStyle: 1
   }
}
