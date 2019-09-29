(* 
source
ocaml unix P4/8

link: scripts/cmdline/argv
link: scripts/environ/environ
*)
(* 
open Unix;; 
#load "unix.cma";;
*)
let echo () =
  let len = Array.length Sys.argv in 
  if len > 1 then begin
    print_string Sys.argv.(1); 
    for i = 2 to len - 1 do
      print_char ' ';
      print_string Sys.argv.(i); 
    done;
    print_newline (); 
  end;;

echo ();;
(* 
compile:
ocamlopt -o echo ./echo.ml

check linked libraries:
otool -L ./echo

/usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1252.250.1)
*)
