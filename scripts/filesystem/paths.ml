#!/usr/bin/env ocaml

(* 
source
ocaml unix P/13
*)

let path_segments () = 
  let filename = "/there/is/a/cow" 
  and dirp = "/var/tmp" in
  print_endline(Filename.basename filename);
  print_endline(Filename.dirname filename);
  print_endline(Filename.concat dirp filename)
  ;;

let get_current_dir () =
  print_endline(Filename.current_dir_name);
  print_endline(Filename.parent_dir_name);
  print_endline(Sys.getcwd());
  ;;

let cd () =
  Sys.chdir("/var/tmp");
  print_endline(Sys.getcwd());
  ;;

path_segments();;
get_current_dir();;
cd();;

