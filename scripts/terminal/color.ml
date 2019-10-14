#!/usr/bin/env coretop

(* 
for full example, see ocamlFoo/simpleVariant
source:
https://dev.realworldocaml.org/variants.html
*)

open Core;;
open Stdio;;

type basic_color = Black
                 | Red
                 | Green
                 | Yellow
                 | Blue
                 | Magenta
                 | Cyan
                 | White

let basic_color_to_int = function
  | Black -> 0 
  | Red -> 1 
  | Green -> 2 
  | Yellow -> 3
  | Blue -> 4 
  | Magenta -> 5 
  | Cyan -> 6 
  | White -> 7

let color_by_number number text =
  Printf.sprintf "\027[38;5;%dm%s\027[0m" number text
  ;;

let runDemos () =
  let templ = color_by_number (basic_color_to_int Blue) "cow" in
  printf "there is a %s\n" templ;
  ;;

runDemos();;