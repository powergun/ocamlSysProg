#!/usr/bin/env ocaml

#load "str.cma";;

let process line =
  (* 
  https://caml.inria.fr/pub/docs/manual-ocaml/libref/Str.html
  global_replace regexp templ s 
  
  see also:
  https://stackoverflow.com/questions/37513046/using-str-module-in-ocaml-top-level?rq=1
  *)
  let line' = Str.global_replace (Str.regexp "[a-zA-Z]+") "000" line in
  print_endline line';
  ;;

let transform line = 
  Str.global_replace (Str.regexp "[a-zA-Z]+") "000" line
  ;;

let output line oc = 
  output_string oc line;
  output_string oc "\n";
  ;;

let demoReadFile () =
  let oc = open_out "/var/tmp/sut/doom" in
  let ic = open_in "/etc/passwd" in
  try while true do
    let line = input_line ic in output (transform line) oc
  done with End_of_file -> close_in ic;
  close_out oc;
  ;;

let runDemos () = 
  demoReadFile();
  ;;

runDemos();;