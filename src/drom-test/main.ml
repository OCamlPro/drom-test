(**************************************************************************)
(*                                                                        *)
(*  Copyright (c) 2021 OCamlPro SAS                                       *)
(*                                                                        *)
(*  All rights reserved.                                                  *)
(*  This file is distributed under the terms of the GNU Lesser General    *)
(*  Public License version 2.1, with the special exception on linking     *)
(*  described in the LICENSE.md file in the root directory.               *)
(*                                                                        *)
(*                                                                        *)
(**************************************************************************)


(* If you delete or rename this file, you should add
   'src/drom-test/main.ml' to the 'skip' field in "drom.toml" *)


let x =
  Printf.printf "Hello world!\n";
  let maybe = if true then raise Not_found else raise Exit in
  Lwt_ssl.ssl_connect maybe maybe
