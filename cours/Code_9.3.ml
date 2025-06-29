let sqrt_int x =
  if x<0 then
    assert false
  else 
    int_of_float (sqrt (float_of_int x))
let () =
  ignore (sqrt_int 5);
  ignore (sqrt_int (-5))
