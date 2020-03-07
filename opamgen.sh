#!/bin/sh
opam switch -y create ./ --deps-only 4.10.0
opam install -y base-bigarray.base base-threads.base base-unix.base base.v0.13.1 base_bigstring.v0.13.0 \
base_quickcheck.v0.13.0 bin_prot.v0.13.0 conf-m4.1 core.v0.13.0 core_kernel.v0.13.1 \
dune-configurator.2.3.1 dune-private-libs.2.3.1 dune.2.3.1 fieldslib.v0.13.0 jane-street-headers.v0.13.0 \
jst-config.v0.13.0 num.1.3 ocaml-base-compiler.4.10.0 ocaml-compiler-libs.v0.12.1 ocaml-config.1 \
ocaml-migrate-parsetree.1.6.0 ocaml.4.10.0 ocamlfind.1.8.1 octavius.1.2.2 parsexp.v0.13.0 \
ppx_assert.v0.13.0 ppx_base.v0.13.0 ppx_bench.v0.13.0 ppx_bin_prot.v0.13.0 ppx_cold.v0.13.0 \
ppx_compare.v0.13.0 ppx_custom_printf.v0.13.0 ppx_derivers.1.2.1 ppx_enumerate.v0.13.0 ppx_expect.v0.13.0 \
ppx_fail.v0.13.0 ppx_fields_conv.v0.13.0 ppx_hash.v0.13.0 ppx_here.v0.13.0 ppx_inline_test.v0.13.0 \
ppx_jane.v0.13.0 ppx_js_style.v0.13.0 ppx_let.v0.13.0 ppx_module_timer.v0.13.0 ppx_optcomp.v0.13.0 \
ppx_optional.v0.13.0 ppx_pipebang.v0.13.0 ppx_sexp_conv.v0.13.0 ppx_sexp_message.v0.13.0 ppx_sexp_value.v0.13.0 \
ppx_stable.v0.13.0 ppx_typerep_conv.v0.13.0 ppx_variants_conv.v0.13.0 ppxlib.0.12.0 re.1.9.0 \
result.1.5 seq.base sexplib.v0.13.0 sexplib0.v0.13.0 spawn.v0.13.0 \
splittable_random.v0.13.0 stdio.v0.13.0 time_now.v0.13.0 typerep.v0.13.0 variantslib.v0.13.0 \
