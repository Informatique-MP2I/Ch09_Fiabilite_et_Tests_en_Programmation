(* Function is_palindrome: checks if a string is a palindrome *)
(* Inputs  : s, a string to test
   Precond : s must be a valid ASCII string
   Outputs : a boolean 
   Postcond: Returns true if s is a case-insensitive palindrome *)
let is_palindrome s =
  let s = String.lowercase_ascii s (* convert to lowercase *) in
  let length = String.length s in
  let middle = length / 2 in
(* Function aux: checks partial palindrome from i to length-i-1 *)
(* Inputs   : s, a string to test, i < middle a position in s
   Precond  : 0 <= i <= middle 
   Outputs  : a boolean, the result of the test
   Postcond : Returns true if partial substring is a palindrome
   Invariant: For n in [0,i-1], s[n] = s[(String.length s)-n-1] *)
  let rec aux i =
    if i >= middle then
      true (* all character pairs matched *)
    else
      if s.[i] <> s.[length - i - 1] then
        false (* found a mismatch *)
      else
        aux (i + 1) (* continue checking the next pair *)
  in
  aux 0
