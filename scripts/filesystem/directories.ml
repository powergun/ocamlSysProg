#!/usr/bin/env ocaml

(* 
source
ocaml unix P/20
*)

#load "unix.cma";;

let iter_dir f dirname =
  let d = Unix.opendir dirname in
  try 
    while true do 
      f (Unix.readdir d) 
    done 
  with End_of_file -> Unix.closedir d

let runDemos () =
  iter_dir print_endline "/var/tmp/sut";
  ;;

runDemos();;
