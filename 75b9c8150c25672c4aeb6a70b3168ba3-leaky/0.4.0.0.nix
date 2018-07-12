{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hello_hackage_visitor = false;
      turn_on_seqaid_plugin = true;
      omnitypic = false;
      test_seqaidpp = true;
      stats = true;
      use_second_module = true;
      profile = false;
      use_growing_list = true;
      use_growing_list_reduction = true;
      use_infinite_list = false;
      use_strict_blob = true;
      use_cpphs = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "leaky";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andrew Seniuk <rasfar@gmail.com>";
        author = "Andrew G. Seniuk";
        homepage = "http://fremissant.net/leaky";
        url = "";
        synopsis = "Robust space leak, and its strictification";
        description = "Robust space leak, and its strictification, for testing <http://hackage.haskell.org/package/deepseq-bounded deepseq-bounded> and <http://hackage.haskell.org/package/seqaid seqaid>.\n\nSee also the project <http://www.fremissant.net/leaky homepage> for more information.\n\nPlease share your comments on this <http://www.reddit.com/r/haskell/comments/2pscxh/ann_deepseqbounded_seqaid_leaky/ reddit> discussion.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "leaky" = {
            depends  = ([
              hsPkgs.base
              hsPkgs.random
              hsPkgs.deepseq-bounded
              hsPkgs.deepseq-generics
              hsPkgs.generics-sop
              hsPkgs.template-haskell
              hsPkgs.seqaid
            ] ++ pkgs.lib.optional _flags.use_cpphs hsPkgs.cpphs) ++ pkgs.lib.optional _flags.omnitypic hsPkgs.ghc-prim;
          };
        };
      };
    }