#!/usr/bin/env ocaml

(* 
source
ocaml unix P/24
*)

#load "unix.cma";;

let demoRead () =
  let fd = Unix.openfile "/var/tmp/sut/prt.txt" [Unix.O_RDONLY] 0 in
  let buffer = Bytes.create 100 in 
  let n = Unix.read fd buffer 0 100 
  in
    ()  
  ;;

let demoCreateEmpty () =
  let fd = Unix.openfile 
    "/var/tmp/sut/doom" 
    [Unix.O_WRONLY; Unix.O_TRUNC; Unix.O_CREAT] 
    0o666 
  in
    Unix.write fd "iddqd idkfa!" 3 7
  ;;

let runDemos () =
  demoRead();
  demoCreateEmpty();
  ;;



runDemos();;
