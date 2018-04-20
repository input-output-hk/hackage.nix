{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hello_hackage_visitor = false;
      ghc_710 = false;
      sai_fork = false;
      try_inject_noinline_on_requested_binds = false;
      seqable_only = false;
      th_type_in_types_ann = false;
      seqaidpp_types = true;
      infer_top_level_types = false;
      demo_mode = true;
      dbg_seqaid = true;
      no_top_level_seqinj_dummies = false;
      nfdatan_only = false;
      show_type = true;
      use_cpphs = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "seqaid";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew G. Seniuk";
        homepage = "http://fremissant.net/seqaid";
        url = "";
        synopsis = "Dynamic strictness control, including space leak repair";
        description = "Seqaid is a GHC plugin providing non-invasive auto-instrumentation of Haskell projects, for dynamic strictness (and parallelism) control. This will soon include optimisation for automated space leak relief using minimal strictification. [The optimiser is still in development however.]\n\nRefer to the seqaid <http://www.fremissant.net/seqaid homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
        buildType = "Simple";
      };
      components = {
        seqaid = {
          depends  = (((([
            hsPkgs.base
            hsPkgs.deepseq-bounded
            hsPkgs.syb
            hsPkgs.containers
            hsPkgs.regex-pcre
            hsPkgs.array
            hsPkgs.mtl
          ] ++ [
            hsPkgs.ghc-paths
            hsPkgs.temporary
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.filepath
          ]) ++ pkgs.lib.optional _flags.use_cpphs hsPkgs.cpphs) ++ [
            hsPkgs.ghc
            hsPkgs.template-haskell
          ]) ++ pkgs.lib.optional _flags.seqable_only hsPkgs.generics-sop) ++ pkgs.lib.optionals (!_flags.demo_mode) [
            hsPkgs.hashtables
            hsPkgs.hashable
          ];
        };
        exes = {
          seqaid = {
            depends  = [
              hsPkgs.base
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.process
            ] ++ pkgs.lib.optional _flags.use_cpphs hsPkgs.cpphs;
          };
          seqaidpp = {
            depends  = [
              hsPkgs.base
              hsPkgs.regex-base
              hsPkgs.regex-pcre
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.Cabal
            ] ++ pkgs.lib.optional _flags.use_cpphs hsPkgs.cpphs;
          };
        };
      };
    }