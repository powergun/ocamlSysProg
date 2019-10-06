#!/usr/bin/env ocaml

(* 
see OCaml system: pervasive 
*)
let write_to_stdout () =
  output_string stdout "there is a cow\n";
  (* 
  this won't work
  output_value stdout [1; 2; 3]; *)
  ;;

let runDemos () = 
  write_to_stdout();
  ;;

runDemos();;
