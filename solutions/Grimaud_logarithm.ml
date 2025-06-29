exception InvalidLogInput of float

(* Computes the natural logarithm of a given positive float value. *)
(* Input   : x, a float
   Precond : x must be greater than 0.
   Output  : The natural logarithm of x
   Raises  : InvalidLogInput if x <= 0. *)
let logarithm x =
  if x<=0. then
    raise (InvalidLogInput x)
  else
    log x

(* Computes the natural logarithm of a float using the logarithm function, handling invalid inputs *)
(* Input: x, a float
   Output: The natural logarithm of x if x > 0, otherwise -1. *)
let safe_logarithm x =
  try
    logarithm x
  with
    InvalidLogInput x -> Printf.eprintf "Wrong parameter, needed x>0 but received %f\n" x ; neg_infinity

(* Test calls *)
let () = 
  Printf.printf "Log = %f\n" (safe_logarithm 10.);
  Printf.printf "Log = %f\n" (safe_logarithm 0.);
  Printf.printf "Log = %f\n" (safe_logarithm (-5.))
