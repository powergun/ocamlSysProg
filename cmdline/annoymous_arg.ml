
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

let command =
  Command.basic
    ~summary:"Generate"
    ~readme:(fun () -> "More more more")
    (Command.Param.map filename_param ~f:(
      fun filename -> (fun () ->
        Stdio.printf "%s\n" filename
      )
    ))
;;

(* 
dune exec -- ./annoymous_arg.exe -version
dune exec -- ./annoymous_arg.exe -build-info
dune exec -- ./annoymous_arg.exe asdsadasd
*)
let () = 
  Command.run ~version:"1.0" ~build_info:"RWO" command
;;







