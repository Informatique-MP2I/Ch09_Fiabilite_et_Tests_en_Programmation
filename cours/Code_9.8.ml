exception IntegerOverflow of int
(* Function square: calculates the square of a given number *)
(* Inputs  : x, an integer
   Precond : x must be non-negative (x >= 0). 
   Outputs : the square of x
   Postcond: The result divided by x equals x (c.f. Precond). *)
let square x =
  assert (x >= 0);
  let result = x * x in
  if result / x <> x then
    raise (IntegerOverflow result)
  else
    result
let () = (* main function to process command-line arguments *)
  (* check if a second argument is provided *)
  if Array.length Sys.argv <= 1 then 
    assert false; (* todo: print a message *)
  let input = 
    try int_of_string Sys.argv.(1) 
    with Failure _ -> assert false (* todo: print a message *)
  in
  try
    let result = square input in
    Printf.printf "The square of %d is %d\n" input result
  with
  | IntegerOverflow overflow_value ->
    Printf.eprintf "Integer overflow (%d).\n" overflow_value
  | Assert_failure _ ->
    Printf.eprintf "Input must be non-negative.\n"
