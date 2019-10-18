
open Core

(* 
http://dev.realworldocaml.org/command-line-parsing.html

anon: signal the parsing of an annoymous arg, 
("filename" %: string): indicates the textural name of the arg and
spec that describes the kind of value that is expected

the textural name is used for generating help text
spec: used to nail down the OCaml type of the returned value;
guide features like input validation

these all come from Command.Param module
anon, string %:
*)
let filename_param = 
  let open Command.Param in 
  anon ("filename" %: string)
;;


