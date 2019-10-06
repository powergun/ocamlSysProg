#!/usr/bin/env ocaml

let processLine line =
  print_endline line;
  ;;

let demoReadFile () =
  let ic = open_in "/etc/passwd" in
  try while true do
    let line = input_line ic in processLine line
  done with End_of_file -> close_in ic
  ;;

let runDemos () = 
  demoReadFile();
  ;;

runDemos();;