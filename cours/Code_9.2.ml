(* Function square: calculates the square of a given number *)
(* Inputs  : x, an integer
   Precond : x must be non-negative (x >= 0). 
   Outputs : the square of x
   Postcond: The result divided by x equals x (c.f. Precond). *)
let square x =
  assert (x >= 0); (* ensure the precondition is respected *)
  x * x
let () = (* examples of function calls *)
  ignore (square 5);
  ignore (square (-5)) (* assertion failure here *)
