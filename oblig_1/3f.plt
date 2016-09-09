[AC Analysis]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(a)"}
      X: ('G',0,1,0,1e+009)
      Y[0]: (' ',0,0.001,4,0.1)
      Y[1]: (' ',0,80,20,280)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1 0
   }
}
[Transient Analysis]
{
   Npanes: 1
   {
      traces: 2 {524290,0,"V(a)"} {34603011,1,"I(I1)"}
      X: ('µ',0,0,1e-005,0.0001)
      Y[0]: ('m',0,-0.063,0.009,0.045)
      Y[1]: (' ',1,-0.1,0.1,1.1)
      Volts: ('m',0,0,0,-0.063,0.009,0.045)
      Amps: (' ',0,0,1,-0.1,0.1,1.1)
      Log: 0 0 0
      GridStyle: 1
      PltMag: 1
      PltPhi: 1 0
   }
}
