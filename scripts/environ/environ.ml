#!/usr/bin/env ocaml

(* 
source
ocaml unix P/8
*)

#load "unix.cma";;
Unix.environment;;

print_endline(Sys.getenv("HOME"));;
