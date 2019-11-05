
(* use Time_now module from core *)
let () =
  let tm = Time_now.nanoseconds_since_unix_epoch() in
  Stdio.printf "%d\n" (Base.Int63.to_int_exn tm)

;;

(* use Unix.gettimeofday() *)
let () =
  let tm = Unix.gettimeofday() in
  Stdio.printf "%f\n" tm
;;

