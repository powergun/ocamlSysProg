
open Core

(* let command =
  Command.basic
    ~summary:"Generate an MD5 hash of the input data"
    ~readme:(fun () -> "More detailed information")
    Command.Param.(
      map (both
            (anon ("hash_length" %: int))
            (anon ("filename" %: string)))
       ~f:(fun (hash_length, filename) ->
            (fun () -> 
              Stdio.printf "hash_length(%d)/filename(%s)\n" hash_length filename))) *)

(* 
use let-syntax 
*)
(* let command =
  Command.basic
    ~summary:"Generate an MD5 hash of the input data"
    ~readme:(fun () -> "More detailed information")
    (let open Command.Let_syntax in
     let open Command.Param in
     let%map
        hash_length = anon ("hash_length" %: int)
        and filename  = anon ("filename" %: string)
     in
      fun () -> 
        Stdio.printf 
          "hash_length(%d)/filename(%s)\n" 
          hash_length 
          filename
    ) *)

let command =
  Command.basic
    ~summary:"Generate an MD5 hash of the input data"
    ~readme:(fun () -> "More detailed information")
    Command.Let_syntax.(
      let%map_open
        hash_length = anon ("hash_length" %: int)
      and filename  = anon ("filename" %: string)
      in
      fun () -> printf "hl(%d)/fn(%s)\n" hash_length filename)

let () =
  Command.run ~version:"1.0" ~build_info:"RWO" command