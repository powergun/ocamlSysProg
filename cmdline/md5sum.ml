
open Core

let do_hash file = 
  Md5.digest_file_blocking file
    |> Md5.to_hex
    |> print_endline

let%test "test do_hash()" =
  do_hash "/var/tmp/sut/ls";

  true
;;

