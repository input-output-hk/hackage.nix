{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      turn_on_seqaid_plugin = true;
      omnitypic = false;
      test_seqaidpp = true;
      stats = true;
      using_sandbox = false;
      use_second_module = true;
      profile = true;
      use_growing_list = true;
      use_growing_list_reduction = true;
      use_infinite_list = false;
      use_strict_blob = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "leaky";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "rasfar@gmail.com";
        author = "Andrew Seniuk";
        homepage = "http://www.fremissant.net/leaky";
        url = "";
        synopsis = "Robust space leak, and its strictification";
        description = "Robust space leak, and its strictification, for testing <http://hackage.haskell.org/package/deepseq-bounded deepseq-bounded> and <http://hackage.haskell.org/package/seqaid seqaid>.\n\nSee also the project <http://www.fremissant.net/leaky homepage> for more information.";
        buildType = "Simple";
      };
      components = {
        exes = {
          leaky = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.deepseq-bounded
              hsPkgs.deepseq-generics
              hsPkgs.generics-sop
              hsPkgs.seqaid
              hsPkgs.template-haskell
            ] ++ pkgs.lib.optional _flags.omnitypic hsPkgs.ghc-prim;
          };
        };
      };
    }