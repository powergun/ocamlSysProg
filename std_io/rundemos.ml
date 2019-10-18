(* 
https://dev.realworldocaml.org/imperative-programming.html

Note:
stdin (exported by Stdio) is deprecated;
use In_channel.stdin 
*)

open Core

(* let () =
  Out_channel.output_string stdout "Pick a timezone: ";
  Out_channel.flush stdout;
  match In_channel.input_line In_channel.stdin with
  | None -> failwith "No timezone provided"
  | Some zone_string ->
    let zone = Time.Zone.find_exn zone_string in
    let time_string = Time.to_string_abs (Time.now ()) ~zone in
    Out_channel.output_string stdout
      (String.concat
         ["The time in ";Time.Zone.to_string zone;" is ";time_string;".\n"]);
    Out_channel.flush stdout *)

(* 
%! in the format string tells printf to flush the channel!!
*)
let () =
  printf "Pick a timezone: %!";
  match In_channel.input_line In_channel.stdin with
  | None -> failwith "No timezone provided"
  | Some zone_string ->
    let zone = Time.Zone.find_exn zone_string in
    let time_string = Time.to_string_abs (Time.now ()) ~zone in
    printf "The time in %s is %s.\n%!" (Time.Zone.to_string zone) time_string