#!/usr/bin/env ocaml

(* 
ocaml unix P/15
also read how to access each field in the stat record
*)

#load "unix.cma";;

let runDemos () = 
  let s1 = Unix.stat("/var/tmp")
  and s2 = Unix.lstat("/var/tmp") in
  (* also fstat, which takes a file descriptor *)
  s1 = s2;
  ;;

runDemos ();;
